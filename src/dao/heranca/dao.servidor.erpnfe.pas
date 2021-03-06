unit dao.servidor.erpnfe;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, System.Generics.Collections,
  //
  Horse.Commons,
  //
  Types.lib.erpnfe,
  //
  Query.Interfaces, Query,
  //
  System.Json,
  //
  ConexaoBanco.Interfaces, ConexaoBanco,
  ConfiguracaoConexaoBanco.Interfaces, ConfiguracaoConexaoBanco,  Comum.lib.erpnfe;

type

  TServidorDao = class(TDataModule)
    FDConexao: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    Qry_Pesquisa: TFDQuery;
    Qry_QtdRegistro: TFDQuery;
    Qry_Gravacao: TFDQuery;
  private
    FTpRequisicao: TMethodType;
    FConexao : iConexaoBancoModel;
    procedure SetTpRequisicao(const Value: TMethodType);

    { Private declarations }

  protected
    Function Gravar(pId : String; pJson : TJsonObject) : TFDQuery; virtual;
    function obterId : String;
    function AtribuirValorCampo(Campo: TField; JSonDados: TJsonObject; nomeCampo: String): TServidorDao;
    procedure IniciarTransacao;
    procedure ComitarTransacao;
    procedure CancelarTransacao;

    //
    function GetDtBase : TDateTime;

  public
    { Public declarations }
    constructor Create; reintroduce;
    function BuscarTodos(const pParametroPesquisa: TDictionary<string, string>): TFDQuery; virtual;
    function ObterPeloId(const pId : String): TFDQuery; virtual; abstract;
    function Update(const pId: string; pJson: TJSONObject): TFDQuery; virtual; abstract;
    function Delete(const pId: string; pJson: TJSONObject): Boolean; virtual; abstract;

    function Insert(pJson: TJSONObject): TFDQuery; virtual; abstract;

    property TpRequisicao : TMethodType read FTpRequisicao write SetTpRequisicao;
    property ConexaoBancoModel : iConexaoBancoModel Read FConexao;

  end;

implementation

uses
  System.DateUtils;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TServidorDao }

function TServidorDao.AtribuirValorCampo(Campo: TField; JSonDados: TJsonObject;
  nomeCampo: String): TServidorDao;
Var
  s: String;
begin
  result := self;
  JSonDados.TryGetValue(nomeCampo, s);
  case Campo.DataType of
    ftString:
      Campo.AsString := s;
    ftSmallint, ftInteger, ftWord:
      Campo.AsInteger := strToIntDef(s, 0);
    ftFloat:
      Campo.AsFloat := strToFloatDef(s, 0);
    ftCurrency, ftBCD, ftFMTBcd:
      Campo.AsCurrency := StrToCurrDef(s, 0);
    ftDate, ftDateTime, ftTime:
      Campo.AsCurrency := StrToDate(s);
    ftLargeint:
      Campo.AsLargeInt := StrToInt64Def(s, 0);
    ftVariant:
      Campo.AsVariant := s;
  end;
end;


function TServidorDao.BuscarTodos(
  const pParametroPesquisa: TDictionary<string, string>): TFDQuery;
begin
  if pParametroPesquisa.ContainsKey('limit') then
    Qry_Pesquisa.FetchOptions.RecsMax := pParametroPesquisa.Items['limit'].ToInteger
  else
    Qry_Pesquisa.FetchOptions.RecsMax := 2;

  if pParametroPesquisa.ContainsKey('offset') then
    Qry_Pesquisa.FetchOptions.RecsSkip := pParametroPesquisa.Items['offset'].ToInteger
  else
    Qry_Pesquisa.FetchOptions.RecsSkip := -1;
end;

procedure TServidorDao.CancelarTransacao;
begin
  FDConexao.Rollback;
  FDConexao.TxOptions.Isolation := xiReadCommitted;
  FDConexao.TxOptions.AutoCommit := True;
  FDConexao.TxOptions.AutoStart := True;
  FDConexao.TxOptions.AutoStop := True;
end;

procedure TServidorDao.ComitarTransacao;
begin
  FDConexao.Commit;
  FDConexao.TxOptions.Isolation := xiReadCommitted;
  FDConexao.TxOptions.AutoCommit := True;
  FDConexao.TxOptions.AutoStart := True;
  FDConexao.TxOptions.AutoStop := True;
end;

constructor TServidorDao.Create;
Var
  S: String;
  LConfiguracao : IConfiguracaoConexaoBanco;
begin
  Inherited Create(nil);

  LConfiguracao := Comum.lib.erpnfe.ConfiguracaoConexaoBanco;

  FConexao := TConexaoBancoModel.New(LConfiguracao);
  s := Format('Database=%S' +sLineBreak
    + 'User_Name=%S' +sLineBreak
    + 'Password=%S' +sLineBreak
    + 'Protocol=TCPIP' +sLineBreak
    + 'Server=%S' +sLineBreak
    + 'Port=3050'  +sLineBreak
    + 'CharacterSet=WIN1252' +sLineBreak
    + 'DriverID=FB'  +sLineBreak
    + 'PageSize=16384',
    [
    LConfiguracao.getBancoDados,
    LConfiguracao.getUsuario,
    LConfiguracao.getSenha,
    LConfiguracao.getServidor]);

  FDConexao.Params.Text := s;
  FDConexao.DriverName := 'FB';


end;

function TServidorDao.GetDtBase: TDateTime;
begin
  result := EncodeDate(1899,01,31);
end;

function TServidorDao.Gravar(pId: String; pJson : TJsonObject): TFDQuery;
begin
end;

procedure TServidorDao.IniciarTransacao;
begin
  FDConexao.TxOptions.AutoCommit := false;
  FDConexao.TxOptions.AutoStart := false;
  FDConexao.TxOptions.AutoStop := false;
  FDConexao.StartTransaction;
end;

function TServidorDao.obterId: String;
var
  s: string;
begin
  s := 'SELECT  uuid_to_char(GEN_UUID()) AS ID FROM rdb$database';
  result := TQueryModel.New(FConexao)
    .Pesquisar(s)
    .ResultQuery.FieldByName('ID').AsString;
end;

procedure TServidorDao.SetTpRequisicao(const Value: TMethodType);
begin
  FTpRequisicao := Value;
end;

end.
