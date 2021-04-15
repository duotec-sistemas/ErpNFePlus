unit TesteEntidade.view.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Client, REST.JSon,

  Vcl.CheckLst, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DominioBanco.teste.erpnfe,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, System.StrUtils, System.Math,
  Vcl.DBCtrls;

type
  TForm3 = class(TForm)
    Tbl_Testes: TFDMemTable;
    Tbl_TestesUnit: TStringField;
    Tbl_TestesMetodo: TStringField;
    Tbl_TestesMensagem: TStringField;
    Tbl_TestesStatus: TBooleanField;
    DtSrc_Testes: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button2: TButton;
    Tbl_TestesRetorno: TStringField;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure InserirTabela(NomeUnit, NomeMetodo, MensagemErro, Retorno: String);

    function TesteGetDominioBanco: Boolean;
    function TesteGetDominioBancoComId: Boolean;
    function TestePostDominioBanco: Boolean;
    function TestePutDominioBanco: Boolean;
    function TesteDeleteDominioBanco: Boolean;

  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses RESTRequest4D, System.JSon;

{$R *.dfm}


procedure TForm3.Button1Click(Sender: TObject);
{ Var
  p: TTabelaEntidade;
  c: TCamposTabelaEntidade;
  d: TDominioBancoEntidade;
  LResponse: IResponse;
  Jo: TJsonObject;
  jv: TJsonValue;
  ja: TJsonArray; }

begin
 { Try
    p := TTabelaEntidade.Create;
    p.Ref;
    p.NomeTabela := 'TBL0003';
    p.NomeEntidade := 'TabelaSistema';
    p.DescricaoTabela := 'Tabelas do Sistemma';
    p.AliasTabela := 'T0003';
    p.UsrIns := 'TONE';
    p.UsrAlt := 'TONE';

    d := TDominioBancoEntidade.Create;
    d.Ref;
    d.NomeDominio := 'D_ID';
    d.TipoCampo := tvInteger;
    d.Tamanho := 44;
    d.QtdCasaDecimal := 0;
    d.UsrIns := 'TONE';
    d.UsrAlt := 'TONE';
    Memo1.Lines.Text := d.ToStringJson;







    //



    // FAzer o REquest
LResponse := TRequest.New.BaseURL('http://127.0.0.1:9000/Tabela')
      .Accept('application/json')
      .Get;
    Memo1.Lines.add(LResponse.Content);
    exit;




    // FAzer o REquest
    LResponse := TRequest.New.BaseURL('http://127.0.0.1:9000/Tabela')
      .Accept('application/json')
      .AddBody(Memo1.Lines.Text)
      .Get;

    Memo1.Lines.add(LResponse.Content);
    Memo1.Lines.add(LResponse.StatusCode.ToString);

    Jo := TJsonObject.ParseJSONValue(Memo1.Lines.Text) as TJsonObject;

    jv := Jo.FindValue('campos');
    ja := jv as TJsonArray;

    Jo.Free;

  finally
  end; }
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Tbl_Testes.EmptyDataSet;
  Try
    TestePostDominioBanco;
  Except
  End;
  Try
    TesteGetDominioBanco;
  Except
  End;
  Try
    TesteGetDominioBancoComId;
  except
  End;
  Try
    TesteDeleteDominioBanco;
  Except
  End;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Tbl_Testes.Active := true;
end;

procedure TForm3.InserirTabela(NomeUnit, NomeMetodo, MensagemErro, Retorno: String);
begin
  Tbl_Testes.Append;
  Tbl_TestesUnit.AsString := NomeUnit;
  Tbl_TestesMetodo.AsString := NomeMetodo;
  Tbl_TestesMensagem.AsString := MensagemErro;
  Tbl_TestesStatus.AsBoolean := MensagemErro = '';
  Tbl_TestesRetorno.AsString := Retorno;
  Tbl_Testes.Post;
end;

function TForm3.TesteDeleteDominioBanco: Boolean;
Var
  s: String;
  t: IDominioEntidadeTeste;
Begin
  s := '';
  Try
    t := TDominioEntidadeTeste.New('http://127.0.0.1:9000', 'tone', 'tone').DeleteDominio;
  Except
    on e: Exception do
    begin
      s := e.Message;
    end;
  End;
  InserirTabela('Dominio.Entidade.Teste', 'TesteDeleteDominioBanco', s, t.GetRetorno);
end;

function TForm3.TesteGetDominioBanco: Boolean;
Var
  s: String;
  t: IDominioEntidadeTeste;
Begin
  s := '';
  Try
    t := TDominioEntidadeTeste.New('http://127.0.0.1:9000', 'tone', 'tone').GetDominio;
  Except
    on e: Exception do
    begin
      s := e.Message;
    end;
  End;
  InserirTabela('Dominio.Entidade.Teste', 'GetDominio', s, t.GetRetorno);
end;

function TForm3.TesteGetDominioBancoComId: Boolean;
Var
  s: String;
  t: IDominioEntidadeTeste;

Begin
  s := '';
  Try
    t := TDominioEntidadeTeste.New('http://127.0.0.1:9000', 'tone', 'tone').GetDominio.GetDominioById;
  Except
    on e: Exception do
    begin
      s := e.Message;
    end;
  End;
  InserirTabela('Dominio.Entidade.Teste', 'GetDominioById', s, t.GetRetorno);
end;

function TForm3.TestePostDominioBanco: Boolean;
Var
  s: String;
  t: IDominioEntidadeTeste;

Begin
  s := '';
  Try
    t := TDominioEntidadeTeste.New('http://127.0.0.1:9000', 'tone', 'tone').PostDominio;
  Except
    on e: Exception do
    begin
      s := e.Message;
    end;
  End;
  InserirTabela('Dominio.Entidade.Teste', 'PostDominio', s, t.GetRetorno);
end;

function TForm3.TestePutDominioBanco: Boolean;
Var
  s: String;
  t: IDominioEntidadeTeste;

Begin
  s := '';
  Try
    t := TDominioEntidadeTeste.New('http://127.0.0.1:9000', 'tone', 'tone').PutDominio;
  Except
    on e: Exception do
    begin
      s := e.Message;
    end;
  End;
  InserirTabela('Dominio.Entidade.Teste', 'PutDominio', s, t.GetRetorno);
end;

initialization

ReportMemoryLeaksOnShutdown := true;

end.
