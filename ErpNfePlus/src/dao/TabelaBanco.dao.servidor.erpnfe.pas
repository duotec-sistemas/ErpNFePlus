unit TabelaBanco.dao.servidor.erpnfe;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  //
  dao.servidor.erpnfe,
  //
  Types.lib.erpnfe,
  Horse.Commons,
  Horse.Exception,
  //
  System.Generics.Collections,
  System.JSON,
  //
  Query.Interfaces,
  Query;

type
  TTabelaBancoDao = class(TServidorDao)
    Qry_CamposTabela: TFDQuery;
    campos: TFDQuery;
    DtSrc_Pai: TDataSource;
    Qry_PesquisaID: TStringField;
    Qry_PesquisaNOME_TABELA: TStringField;
    Qry_PesquisaNOME_ENTIDADE: TStringField;
    Qry_PesquisaDESCRICAO_TABELA: TStringField;
    Qry_PesquisaDT_HR_INS: TSQLTimeStampField;
    Qry_PesquisaDT_HR_ALT: TSQLTimeStampField;
    Qry_PesquisaUSR_INS: TStringField;
    Qry_PesquisaUSR_ALT: TStringField;
    Qry_PesquisaALIAS_TABELA: TStringField;
    Qry_PesquisaATIVO: TSmallintField;
    camposID: TStringField;
    camposID_TBL0003: TStringField;
    camposID_TBL0002: TStringField;
    camposNOME_CAMPO: TStringField;
    camposCOMENTARIO: TStringField;
    camposNOME_ATRIBUTO: TStringField;
    camposDT_HR_INS: TSQLTimeStampField;
    camposDT_HR_ALT: TSQLTimeStampField;
    camposUSR_INS: TStringField;
    camposUSR_ALT: TStringField;
    camposATIVO: TSmallintField;
    camposNOME_DOMINIO: TStringField;
    camposTIPO_CAMPO: TLargeintField;
    camposTAMANHO: TLargeintField;
    camposQTD_CASA_DECIMAL: TLargeintField;
    camposNOME_TIPO_CAMPO: TStringField;
    Qry_QtdRegistroQTD_REG: TIntegerField;
    Qry_GravacaoID: TStringField;
    Qry_GravacaoNOME_TABELA: TStringField;
    Qry_GravacaoNOME_ENTIDADE: TStringField;
    Qry_GravacaoDESCRICAO_TABELA: TStringField;
    Qry_GravacaoUSR_INS: TStringField;
    Qry_GravacaoUSR_ALT: TStringField;
    Qry_GravacaoALIAS_TABELA: TStringField;
    Qry_GravacaoATIVO: TSmallintField;
    Qry_CamposTabelaID: TStringField;
    Qry_CamposTabelaID_TBL0003: TStringField;
    Qry_CamposTabelaID_TBL0002: TStringField;
    Qry_CamposTabelaNOME_CAMPO: TStringField;
    Qry_CamposTabelaCOMENTARIO: TStringField;
    Qry_CamposTabelaNOME_ATRIBUTO: TStringField;
    Qry_CamposTabelaUSR_INS: TStringField;
    Qry_CamposTabelaUSR_ALT: TStringField;
    Qry_CamposTabelaEXCLUIDO: TSmallintField;
    Qry_CamposTabelaATIVO: TSmallintField;
    Qry_GravacaoEXCLUIDO: TSmallintField;
  private
    procedure ValidarCamposAntesInsert(pJson: TJSONObject);
    { Private declarations }
  protected
    Function Gravar(pId: String; pJson: TJSONObject): TFDQuery; override;

  public
    { Public declarations }
    function BuscarTodos(const pParametroPesquisa: TDictionary<string, string>): TFDQuery; override;
    function ObterPeloId(const pId: String): TFDQuery; override;
    function Update(const pId: string; pJson: TJSONObject): TFDQuery; override;
    function Delete(const pId: string; pJson: TJSONObject): Boolean; override;
    function Insert(pJson: TJSONObject): TFDQuery; override;

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TTabelaBancoDao }
function TTabelaBancoDao.BuscarTodos(
  const pParametroPesquisa: TDictionary<string, string>): TFDQuery;
var
  I: Integer;
  lOrdenacaoSplit, lOrdenacoes: TArray<string>;
  lOrderBy: string;
begin

 // .NOME_TABELA ,
 // .NOME_ENTIDADE,
 // .DESCRICAO_TABELA,
  if pParametroPesquisa.ContainsKey('nome_tabela') then
  begin
    Qry_Pesquisa.SQL.Add('AND T0003.NOME_TABELA LIKE :NOME_TABELA');
    Qry_QtdRegistro.SQL.Add('AND T0003.NOME_TABELA LIKE :NOME_TABELA');
    Qry_Pesquisa.ParamByName('NOME_TABELA').AsString := pParametroPesquisa.Items['nome_tabela'] + '%';
    Qry_QtdRegistro.ParamByName('NOME_TABELA').AsString := pParametroPesquisa.Items['nome_tabela'] + '%';
  end;

  if pParametroPesquisa.ContainsKey('nome_entidade') then
  begin
    Qry_Pesquisa.SQL.Add('AND T0003.NOME_ENTIDADE LIKE :NOME_ENTIDADE');
    Qry_QtdRegistro.SQL.Add('AND T0003.NOME_ENTIDADE LIKE :NOME_ENTIDADE');
    Qry_Pesquisa.ParamByName('NOME_ENTIDADE').AsString := pParametroPesquisa.Items['nome_entidade'] + '%';
    Qry_QtdRegistro.ParamByName('NOME_ENTIDADE').AsString := pParametroPesquisa.Items['nome_entidade'] + '%';
  end;

  if pParametroPesquisa.ContainsKey('descricao_tabela') then
  begin
    Qry_Pesquisa.SQL.Add('AND T0003.DESCRICAO_TABELA LIKE :DESCRICAO_TABELA');
    Qry_QtdRegistro.SQL.Add('AND T0003.DESCRICAO_TABELA LIKE :DESCRICAO_TABELA');
    Qry_Pesquisa.ParamByName('DESCRICAO_TABELA').AsString := pParametroPesquisa.Items['descricao_tabela'] + '%';
    Qry_QtdRegistro.ParamByName('DESCRICAO_TABELA').AsString := pParametroPesquisa.Items['descricao_tabela'] + '%';
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

function TTabelaBancoDao.Delete(const pId: string; pJson: TJSONObject): Boolean;
var
  s: string;
  lUsrExc, lMotivoExc: String;
  Qry: TFDQuery;
begin

  pJson.TryGetValue('usr_exc', lUsrExc);
  pJson.TryGetValue('motivo_exc', lMotivoExc);

  Try
    Try
      IniciarTransacao;
      Qry := TQueryModel.New(ConexaoBancoModel).ResultQuery;
      s := ' UPDATE TBL0003 T0003 SET T0003.EXCLUIDO = 1, T0003.USR_EXC = :USR_EXC, T0003.MOTIVO_EXC = :MOTIVO_EXC '
        + ' WHERE T0003.ID = :ID ';
      Qry.SQL.Text := s;
      Qry.ParamByName('USR_EXC').AsString := pJson.FindValue('usr_exc').ToString;
      Qry.ParamByName('MOTIVO_EXC').AsString := pJson.FindValue('motivo_exc').ToString;
      Qry.ParamByName('ID').AsString := pId;
      Qry.ExecSQL();

      s := ' UPDATE TBL0004 T0004 SET T0004.EXCLUIDO = 1, T0004.USR_EXC = :USR_EXC, T0004.MOTIVO_EXC = :MOTIVO_EXC '
        + ' WHERE T0004.ID = :ID ';
      Qry.SQL.Text := s;
      Qry.ParamByName('USR_EXC').AsString := pJson.FindValue('usr_exc').ToString;
      Qry.ParamByName('MOTIVO_EXC').AsString := pJson.FindValue('motivo_exc').ToString;
      Qry.ParamByName('ID').AsString := pId;
      Qry.ExecSQL();
      ComitarTransacao;
      pJson.AddPair('resultado', 'registro excluido com sucesso');
    Except
      on e: Exception do
      begin
        CancelarTransacao;
        raise;
      end;
    End;
  Finally

  End;
end;

function TTabelaBancoDao.Gravar(pId: String; pJson: TJSONObject): TFDQuery;
Var
  LJArray: TJsonArray;
  LJCampo: TJSONObject;
  LNomeCampo: String;
  I: Integer;
BEGIN
  inherited;
  IniciarTransacao;
  Try
    Qry_Gravacao.Close;
    Qry_Gravacao.SQL.Append(' AND T0003.ID = :ID');
    Qry_Gravacao.ParamByName('ID').AsString := pId;
    Qry_Gravacao.Open;

    if Qry_Gravacao.IsEmpty then
    Begin
      Qry_Gravacao.Append;
      Qry_Gravacao.FieldByName('ID').AsString := obterId;
      Qry_Gravacao.FieldByName('USR_INS').AsString := 'tone';
      Qry_Gravacao.FieldByName('EXCLUIDO').AsInteger := 0;
      pJson.AddPair('id', Qry_Gravacao.FieldByName('ID').AsString);

      AtribuirValorCampo(Qry_Gravacao.FieldByName('NOME_TABELA'), pJson, 'nome_tabela');
    end
    Else
    Begin
      Qry_Gravacao.Edit;
    End;
    Qry_Gravacao.FieldByName('USR_ALT').AsString := 'tone';

    AtribuirValorCampo(Qry_Gravacao.FieldByName('NOME_ENTIDADE'), pJson, 'nome_entidade');
    AtribuirValorCampo(Qry_Gravacao.FieldByName('DESCRICAO_TABELA'), pJson, 'descricao_tabela');
    AtribuirValorCampo(Qry_Gravacao.FieldByName('ALIAS_TABELA'), pJson, 'alias_tabela');
    AtribuirValorCampo(Qry_Gravacao.FieldByName('ATIVO'), pJson, 'ativo');
    Qry_Gravacao.Post;

    //
    // Gravar os Campos
    Qry_CamposTabela.Close;
    Qry_CamposTabela.SQL.Append(' AND T0004.ID_TBL0003 = :ID');
    Qry_CamposTabela.ParamByName('ID').AsString := pId;
    Qry_CamposTabela.Open;

    // Percorrer o Array dos campos
    LJArray := TJsonArray(pJson.FindValue('campos'));
    for I := 0 To LJArray.Count - 1 do
    begin
      LJCampo := TJSONObject(LJArray.Items[I]);
      LJCampo.TryGetValue('nome_campo', LNomeCampo);
      If Qry_CamposTabela.Locate('NOME_CAMPO', LNomeCampo, [loCaseInsensitive]) then
      Begin
        Qry_CamposTabela.Edit;
      End
      Else
      Begin
        Qry_CamposTabela.Append;
        Qry_CamposTabela.FieldByName('ID').AsString := obterId;
        Qry_CamposTabela.FieldByName('NOME_CAMPO').AsString := LNomeCampo;
        Qry_CamposTabela.FieldByName('ID_TBL0003').AsString := Qry_Gravacao.FieldByName('ID').AsString;
        Qry_CamposTabela.FieldByName('USR_INS').AsString := 'tone';
        Qry_CamposTabela.FieldByName('EXCLUIDO').AsInteger := 0;
        LJCampo.AddPair('id', Qry_CamposTabela.FieldByName('ID').AsString);
      end;

      Qry_CamposTabela.FieldByName('USR_ALT').AsString := 'tone';

      AtribuirValorCampo(Qry_CamposTabela.FieldByName('ID_TBL0002'), LJCampo, 'id_tbl0002');
      AtribuirValorCampo(Qry_CamposTabela.FieldByName('NOME_CAMPO'), LJCampo, 'nome_campo');
      AtribuirValorCampo(Qry_CamposTabela.FieldByName('COMENTARIO'), LJCampo, 'comentario');
      AtribuirValorCampo(Qry_CamposTabela.FieldByName('NOME_ATRIBUTO'), LJCampo, 'nome_atributo');
      AtribuirValorCampo(Qry_CamposTabela.FieldByName('ATIVO'), LJCampo, 'ativo');
      Qry_CamposTabela.Post;
    End;
    ComitarTransacao;
  Except
    on e: Exception do
    begin
      CancelarTransacao;
      raise
    end;

  End;
end;

function TTabelaBancoDao.Insert(pJson: TJSONObject): TFDQuery;
var
  s, NomeTabela: string;
  Qry: TFDQuery;
begin
  result := Qry_Gravacao;
  ValidarCamposAntesInsert(pJson);

  // Obter Campos da Chave
  pJson.TryGetValue('nome_tabela', NomeTabela);

  s := ' SELECT NOME_TABELA FROM TBL0003 T0003 '
    + ' WHERE T0003.EXCLUIDO = 0 '
    + '  AND T0003.NOME_TABELA = :NOME_TABELA';

  Try
    Qry := TQueryModel.New(ConexaoBancoModel).ResultQuery;
    Qry.SQL.Text := s;
    Qry.ParamByName('NOME_TABELA').AsString := NomeTabela;
    Qry.Open;
    if Qry.RecordCount > 0 then
      raise EHorseException.Create(THTTPStatus.BadRequest,
        'Não foi possível inserir o registro no banco dados. Registro já existe',
        'TabelaBancoDao.Insert',
        400,
        TMessageType.Default);
  Finally

  End;

  Gravar('', pJson);
end;

procedure TTabelaBancoDao.ValidarCamposAntesInsert(pJson: TJSONObject);
begin
  if pJson.FindValue('nome_tabela') = nil then
    raise EHorseException.Create(THTTPStatus.BadRequest, 'O campo nome_tabela está vazio. Ele é obrigátorio', 'TTabelaBancoDao.Insert', 400, TMessageType.Error);

  if pJson.FindValue('nome_entidade') = nil then
    raise EHorseException.Create(THTTPStatus.BadRequest, 'O campo nome_entidade está vazio. Ele é obrigátorio', 'TTabelaBancoDao.Insert', 400, TMessageType.Error);

  if pJson.FindValue('descricao_tabela') = nil then
    raise EHorseException.Create(THTTPStatus.BadRequest, 'O campo descricao_tabela está vazio. Ele é obrigátorio', 'TTabelaBancoDao.Insert', 400, TMessageType.Error);
end;

function TTabelaBancoDao.ObterPeloId(const pId: String): TFDQuery;
begin
  Qry_Pesquisa.SQL.Add('AND T0003.ID = :ID');
  Qry_Pesquisa.ParamByName('ID').AsString := pId;
  Qry_Pesquisa.Open;
  campos.Open;
  result := Qry_Pesquisa;
end;

function TTabelaBancoDao.Update(const pId: string; pJson: TJSONObject): TFDQuery;
var
  s: string;
  Qry: TFDQuery;
begin
  result := Qry_Gravacao;
  Try
    Qry := TQueryModel.New(ConexaoBancoModel).ResultQuery;
    Qry.SQL.Text := ' SELECT NOME_TABELA FROM TBL0003 T0003 '
      + ' WHERE T0003.ID = :ID';
    Qry.ParamByName('ID').AsString := pId;
    Qry.Open;
    if Qry.IsEmpty then
      raise EHorseException.Create(THTTPStatus.BadRequest,
        'Não foi possível atualizar o registro no banco dados. Registro não existe',
        'TabelaBancoDao.Update',
        400,
        TMessageType.Error);
  Finally
  End;

  Gravar(pId, pJson);
end;

end.
