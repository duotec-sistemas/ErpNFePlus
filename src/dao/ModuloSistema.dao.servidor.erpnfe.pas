unit ModuloSistema.dao.servidor.erpnfe;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  //
  Types.lib.erpnfe,
  Horse.Commons,
  Horse.Exception,
  //
  System.Generics.Collections,
  System.JSON,
  //
  dao.servidor.erpnfe,
  //
  Query.Interfaces,
  Query;

type
  TModuloSistemaDao = class(TServidorDao)
    Qry_QtdRegistroQTD_REG: TIntegerField;
    Qry_PesquisaID: TStringField;
    Qry_PesquisaNOME_MODULO: TStringField;
    Qry_PesquisaUSR_INS: TStringField;
    Qry_PesquisaUSR_ALT: TStringField;
    Qry_PesquisaDT_HR_INS: TSQLTimeStampField;
    Qry_PesquisaDT_HR_ALT: TSQLTimeStampField;
    Qry_PesquisaIMG: TBlobField;
    Qry_PesquisaATIVO: TSmallintField;
    Qry_GravacaoID: TStringField;
    Qry_GravacaoNOME_MODULO: TStringField;
    Qry_GravacaoUSR_INS: TStringField;
    Qry_GravacaoUSR_ALT: TStringField;
    Qry_GravacaoIMG: TBlobField;
    Qry_GravacaoATIVO: TSmallintField;
    Qry_GravacaoEXCLUIDO: TSmallintField;
  private
    { Private declarations }
  protected
    Function Gravar(pId: String; pJson: TJsonObject): TFDQuery; override;

  public
    { Public declarations }
    function BuscarTodos(const pParametroPesquisa: TDictionary<string, string>): TFDQuery; override;
    function ObterPeloId(const pId: String): TFDQuery; override;
    function Update(const pId: string; pJson: TJsonObject): TFDQuery; override;
    function Delete(const pId: string; pJson: TJsonObject): Boolean; override;
    function Insert(pJson: TJsonObject): TFDQuery; override;
  end;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TModuloSistemaDao }

function TModuloSistemaDao.Delete(const pId: string;
  pJson: TJsonObject): Boolean;
var
  s: string;
  lUsrExc, lMotivoExc: String;
  Qry: TFDQuery;
begin

  pJson.TryGetValue('usr_exc', lUsrExc);
  pJson.TryGetValue('motivo_exc', lMotivoExc);

  Qry := TFDQuery.Create(nil);
  Try
    Qry.Connection := FDConexao;
    s := ' UPDATE TBL0005 T0005 SET T0005.EXCLUIDO = 1, T0005.USR_EXC = :USR_EXC, T0005.MOTIVO_EXC = :MOTIVO_EXC '
      + ' WHERE T0005.ID = :ID ';
    Qry.SQL.Text := s;
    Qry.ParamByName('USR_EXC').AsString := pJson.FindValue('usr_exc').ToString;
    Qry.ParamByName('MOTIVO_EXC').AsString := pJson.FindValue('motivo_exc').ToString;
    Qry.ParamByName('ID').AsString := pId;
    Qry.ExecSQL();
    pJson.AddPair('resultado', 'registro excluido com sucesso');
  Finally
    Qry.Free;
  End;
end;

function TModuloSistemaDao.Gravar(pId: String; pJson: TJsonObject): TFDQuery;
begin
  // Na heranca ele vai abrir a tabela
  // e validar se é um put, post
  inherited;
  Qry_Gravacao.Close;
  Qry_Gravacao.SQL.Append(' AND T0005.ID = :ID');
  Qry_Gravacao.ParamByName('ID').AsString := pId;
  Qry_Gravacao.Open;

  if Qry_Gravacao.IsEmpty then
  Begin
    Qry_Gravacao.Append;
    Qry_Gravacao.FieldByName('ID').AsString := obterId;
    Qry_Gravacao.FieldByName('USR_INS').AsString := 'tone';
    Qry_Gravacao.FieldByName('EXCLUIDO').AsInteger := 0;
    pJson.AddPair('id', Qry_Gravacao.FieldByName('ID').AsString);
  end
  Else
  Begin
    Qry_Gravacao.Edit;
  End;
  Qry_Gravacao.FieldByName('USR_ALT').AsString := 'tone';

  AtribuirValorCampo(Qry_Gravacao.FieldByName('NOME_MODULO'), pJson, 'nome_modulo');
  AtribuirValorCampo(Qry_Gravacao.FieldByName('ATIVO'), pJson, 'ativo');
  // Gravar imagem
  { TODO : rotina para gravar a imagem }
  Qry_Gravacao.Post;
end;

function TModuloSistemaDao.Insert(pJson: TJsonObject): TFDQuery;
var
  s, LNomeModulo: string;
  Qry: TFDQuery;
begin
  if pJson.FindValue('nome_modulo') = nil then
        raise EHorseException.Create(THTTPStatus.BadRequest,
          'O campo nome_modulo está vazio. Ele é obrigátorio',
          'TModuloSistemaDao.Dao.Insert',
          400,TMessageType.Error);

  pJson.TryGetValue('nome_modulo', LNomeModulo);

  s := ' SELECT NOME_MODULO FROM TBL0005 T0005 '
    + ' WHERE T0005.EXCLUIDO = 0 '
    + '  AND T0005.NOME_MODULO = :NOME_MODULO';

  Qry := TFDQuery.Create(nil);
  Qry.Connection := FDConexao;
  Try
    Qry.SQL.Text := s;
    Qry.ParamByName('NOME_MODULO').AsString := LNomeModulo;
    Qry.Open;
    if Qry.RecordCount > 0 then
        raise EHorseException.Create(THTTPStatus.BadRequest,
          'Não foi possível inserir o registro no banco dados. Registro já existe',
          'TModuloSistemaDao.Insert',
          400,
          TMessageType.Default);
  Finally
    Qry.Free;
  End;

  Gravar('', pJson);
end;

function TModuloSistemaDao.ObterPeloId(const pId: String): TFDQuery;
begin
  Qry_Pesquisa.SQL.Add('AND T0005.ID = :ID');
  Qry_Pesquisa.ParamByName('ID').AsString := pId;
  Qry_Pesquisa.Open;
  result := Qry_Pesquisa;
end;

function TModuloSistemaDao.Update(const pId: string; pJson: TJsonObject): TFDQuery;
var
  s: string;
  Qry: TFDQuery;
begin
  Qry := TFDQuery.Create(nil);
  Qry.Connection := FDConexao;
  Try
    Qry.SQL.Text := ' SELECT NOME_MODULO FROM TBL0005 T0005 '
      + ' WHERE T0005.ID = :ID';
    Qry.ParamByName('ID').AsString := pId;
    Qry.Open;
    if Qry.IsEmpty then
      raise EHorseException.Create(THTTPStatus.BadRequest,
        'Não foi possível atualizar o registro no banco dados. Registro não existe',
        'TModuloSistemaDao.Update',
        400,
        TMessageType.Error);
  Finally
    Qry.Free;
  End;

  Gravar(pId, pJson);
end;

function TModuloSistemaDao.BuscarTodos(
  const pParametroPesquisa: TDictionary<string, string>): TFDQuery;
var
  I: Integer;
  lOrdenacaoSplit, lOrdenacoes: TArray<string>;
  lOrderBy: string;
begin
  if pParametroPesquisa.ContainsKey('NOME_MODULO') then
  begin
    Qry_Pesquisa.SQL.Add('AND T0005.NOME_DOMINIO LIKE :NOME_MODULO');
    Qry_QtdRegistro.SQL.Add('AND T0005.NOME_DOMINIO LIKE :NOME_MODULO');
    Qry_Pesquisa.ParamByName('NOME_MODULO').AsString := pParametroPesquisa.Items['nome_modulo'] +'%';
    Qry_QtdRegistro.ParamByName('NOME_MODULO').AsString := pParametroPesquisa.Items['nome_modulo'] +'%';
  end;

  if pParametroPesquisa.ContainsKey('sort') then
  begin
    lOrderBy := 'order by ';
    lOrdenacoes := pParametroPesquisa.Items['sort'].Split([',']);
    for I := 0 to Pred(Length(lOrdenacoes)) do
    begin
      if I > 0 then
        lOrderBy := lOrderBy + ', ';
      lOrdenacaoSplit := lOrdenacoes[I].Split([':']);
      lOrderBy := lOrderBy + lOrdenacaoSplit[0];
      if Length(lOrdenacaoSplit) > 1 then
        lOrderBy := lOrderBy + ' ' + lOrdenacaoSplit[1];
    end;
    Qry_Pesquisa.SQL.Add(lOrderBy);
  end;

  Qry_QtdRegistro.Open();
  Qry_Pesquisa.Open();
  result := Qry_Pesquisa;
end;

end.
