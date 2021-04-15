unit DominioBanco.dao.servidor.erpnfe;

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
  TDominioBancoDao = class(TServidorDao)
    Qry_PesquisaID: TStringField;
    Qry_PesquisaNOME_DOMINIO: TStringField;
    Qry_PesquisaTIPO_CAMPO: TLargeintField;
    Qry_PesquisaTAMANHO: TLargeintField;
    Qry_PesquisaQTD_CASA_DECIMAL: TLargeintField;
    Qry_PesquisaDT_HR_INS: TSQLTimeStampField;
    Qry_PesquisaDT_HR_ALT: TSQLTimeStampField;
    Qry_PesquisaDT_HR_EXC: TSQLTimeStampField;
    Qry_PesquisaUSR_INS: TStringField;
    Qry_PesquisaUSR_ALT: TStringField;
    Qry_PesquisaUSR_EXC: TStringField;
    Qry_PesquisaEXCLUIDO: TSmallintField;
    Qry_PesquisaMOTIVO_EXC: TStringField;
    Qry_QtdRegistroQTD_REG: TIntegerField;
    Qry_GravacaoID: TStringField;
    Qry_GravacaoNOME_DOMINIO: TStringField;
    Qry_GravacaoTIPO_CAMPO: TLargeintField;
    Qry_GravacaoTAMANHO: TLargeintField;
    Qry_GravacaoQTD_CASA_DECIMAL: TLargeintField;
    Qry_GravacaoDT_HR_INS: TSQLTimeStampField;
    Qry_GravacaoDT_HR_ALT: TSQLTimeStampField;
    Qry_GravacaoDT_HR_EXC: TSQLTimeStampField;
    Qry_GravacaoUSR_INS: TStringField;
    Qry_GravacaoUSR_ALT: TStringField;
    Qry_GravacaoUSR_EXC: TStringField;
    Qry_GravacaoEXCLUIDO: TSmallintField;
    Qry_GravacaoMOTIVO_EXC: TStringField;
    Qry_PesquisaATIVO: TSmallintField;
    Qry_GravacaoATIVO: TSmallintField;
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

{ TDominioBancoDao }

function TDominioBancoDao.Delete(const pId: string;
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
    s := ' UPDATE TBL0002 T0002 SET T0002.EXCLUIDO = 1, T0002.USR_EXC = :USR_EXC, T0002.MOTIVO_EXC = :MOTIVO_EXC '
      + ' WHERE T0002.ID = :ID ';
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

function TDominioBancoDao.Gravar(pId: String; pJson: TJsonObject): TFDQuery;
begin
  // Na heranca ele vai abrir a tabela
  // e validar se é um put, post
  inherited;
  Qry_Gravacao.Close;
  Qry_Gravacao.SQL.Append(' AND T0002.ID = :ID');
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

  AtribuirValorCampo(Qry_Gravacao.FieldByName('NOME_DOMINIO'), pJson, 'nome_dominio');
  AtribuirValorCampo(Qry_Gravacao.FieldByName('TIPO_CAMPO'), pJson, 'tipo_campo');
  AtribuirValorCampo(Qry_Gravacao.FieldByName('TAMANHO'), pJson, 'tamanho');
  AtribuirValorCampo(Qry_Gravacao.FieldByName('QTD_CASA_DECIMAL'), pJson, 'qtd_casa_decimal');
  AtribuirValorCampo(Qry_Gravacao.FieldByName('ATIVO'), pJson, 'ativo');

  Qry_Gravacao.Post;
end;

function TDominioBancoDao.Insert(pJson: TJsonObject): TFDQuery;
var
  s, NomeDominio: string;
  Qry: TFDQuery;
begin
  if pJson.FindValue('nome_dominio') = nil then
        raise EHorseException.Create(THTTPStatus.BadRequest,
          'O campo nome_dominio está vazio. Ele é obrigátorio',
          'DominioBanco.Dao.Insert',
          400,TMessageType.Error);

  pJson.TryGetValue('nome_dominio', NomeDominio);

  s := ' SELECT NOME_DOMINIO FROM TBL0002 T0002 '
    + ' WHERE T0002.EXCLUIDO = 0 '
    + '  AND T0002.NOME_DOMINIO = :NOME_DOMINIO';

  Qry := TFDQuery.Create(nil);
  Qry.Connection := FDConexao;
  Try
    Qry.SQL.Text := s;
    Qry.ParamByName('NOME_DOMINIO').AsString := NomeDominio;
    Qry.Open;
    if Qry.RecordCount > 0 then
        raise EHorseException.Create(THTTPStatus.BadRequest,
          'Não foi possível inserir o registro no banco dados. Registro já existe',
          'DominioBancoDao.Insert',
          400,
          TMessageType.Default);
  Finally
    Qry.Free;
  End;

  Gravar('', pJson);

end;

function TDominioBancoDao.ObterPeloId(const pId: String): TFDQuery;
begin
  Qry_Pesquisa.SQL.Add('AND T0002.ID = :ID');
  Qry_Pesquisa.ParamByName('ID').AsString := pId;
  Qry_Pesquisa.Open;
  result := Qry_Pesquisa;
end;

function TDominioBancoDao.Update(const pId: string; pJson: TJsonObject): TFDQuery;
var
  s: string;
  Qry: TFDQuery;
begin
  Qry := TFDQuery.Create(nil);
  Qry.Connection := FDConexao;
  Try
    Qry.SQL.Text := ' SELECT NOME_DOMINIO FROM TBL0002 T0002 '
      + ' WHERE T0002.ID = :ID';
    Qry.ParamByName('ID').AsString := pId;
    Qry.Open;
    if Qry.IsEmpty then
      raise EHorseException.Create(THTTPStatus.BadRequest,
        'Não foi possível atualizar o registro no banco dados. Registro não existe',
        'DominioBancoDao.Update',
        400,
        TMessageType.Error);
  Finally
    Qry.Free;
  End;

  Gravar(pId, pJson);
end;

function TDominioBancoDao.BuscarTodos(
  const pParametroPesquisa: TDictionary<string, string>): TFDQuery;
var
  I: Integer;
  lOrdenacaoSplit, lOrdenacoes: TArray<string>;
  lOrderBy: string;
begin

 // .NOME_DOMINIO ,
 // .TIPO_CAMPO,
 // .TAMANHO,
  if pParametroPesquisa.ContainsKey('nome_dominio') then
  begin
    Qry_Pesquisa.SQL.Add('AND T0002.NOME_DOMINIO LIKE :NOME_DOMINIO');
    Qry_QtdRegistro.SQL.Add('AND T0002.NOME_DOMINIO LIKE :NOME_DOMINIO');
    Qry_Pesquisa.ParamByName('NOME_DOMINIO').AsString := pParametroPesquisa.Items['nome_dominio'] +'%';
    Qry_QtdRegistro.ParamByName('NOME_DOMINIO').AsString := pParametroPesquisa.Items['nome_dominio'] +'%';
  end;

  if pParametroPesquisa.ContainsKey('tamanho') then
  begin
    Qry_Pesquisa.SQL.Add('AND T0002.TAMANHO = :TAMANHO');
    Qry_QtdRegistro.SQL.Add('AND T0002.TAMANHO = :TAMANHO');
    Qry_Pesquisa.ParamByName('TAMANHO').AsString := pParametroPesquisa.Items['tamanho'];
    Qry_QtdRegistro.ParamByName('TAMANHO').AsString := pParametroPesquisa.Items['tamanho'];
  end;

  if pParametroPesquisa.ContainsKey('TIPO_CAMPO') then
  begin
    Qry_Pesquisa.SQL.Add('AND T0002.TIPO_CAMPO = :TIPO_CAMPO');
    Qry_QtdRegistro.SQL.Add('AND T0002.TIPO_CAMPO = :TIPO_CAMPO');
    Qry_Pesquisa.ParamByName('TIPO_CAMPO').AsString := pParametroPesquisa.Items['tipo_campo'] +'%';
    Qry_QtdRegistro.ParamByName('TIPO_CAMPO').AsString := pParametroPesquisa.Items['tipo_campo'] +'%';
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
