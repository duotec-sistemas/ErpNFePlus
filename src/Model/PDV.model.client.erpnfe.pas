unit PDV.model.client.erpnfe;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.client,
  OrcamentoDuotec.dao.servidor.erpnfe;

type
  TPdvModel = class(TDataModule)
    NotaFiscal: TFDMemTable;
    NotaFiscalID: TStringField;
    NotaFiscalID_ORCAMENTO: TStringField;
    NotaFiscalCOD_CLIENTE: TIntegerField;
    NotaFiscalNOME_CLIENTE: TStringField;
    NotaFiscalDT_NF: TDateField;
    NotaFiscalNUM_NF: TIntegerField;
    NotaFiscalVLR_NF: TCurrencyField;
    NotaFiscalVLR_DESCONTO: TCurrencyField;
    NotaFiscalCOD_VENDEDOR: TStringField;
    ProdutoNotaFiscal: TFDMemTable;
    ProdutoNotaFiscalID: TStringField;
    ProdutoNotaFiscalCOD_PRODUTO: TStringField;
    ProdutoNotaFiscalDESCRICAO: TStringField;
    ProdutoNotaFiscalQTDADE: TFloatField;
    ProdutoNotaFiscalVLR_PRODUTO: TCurrencyField;
    ProdutoNotaFiscalVLR_TOTAL_PRODUTO: TCurrencyField;
    ProdutoNotaFiscalVLR_DESCONTO_PRODUTO: TCurrencyField;
    ProdutoNotaFiscalPOSICAO: TIntegerField;
    ProdutoNotaFiscalVLR_SUBTOTAL: TAggregateField;
    FormasPagto: TFDMemTable;
    FormasPagtoID: TStringField;
    FormasPagtoID_CABECALHO: TStringField;
    FormasPagtoCOD_FORMA_PAGTO: TStringField;
    FormasPagtoNOME_FORMA_PAGTO: TStringField;
    FormasPagtoVLR_RECEBIDO: TCurrencyField;
    ProdutoOrcamento: TFDMemTable;
    Orcamento: TFDMemTable;
    NotaFiscalCOD_LOJA: TStringField;
    ProdutoNotaFiscalNUM_ORCAMENTO: TIntegerField;
    NotaFiscalCOD_CONDICAO_PAGTO: TIntegerField;
    NotaFiscalCOD_TP_ESTOQUE: TIntegerField;
    NotaFiscalNUM_ORCAMENTO: TIntegerField;
    NotaFiscalEMAIL_CLIENTE: TStringField;
  private
    { Private declarations }
    procedure ObterOrcamento(Const PCodLoja: String; Const PNumOrcamento: Integer; Tbl: TFDMemTable);
    procedure CriarIndiceOrdenacao;
  public
    { Public declarations }
    procedure ObterListaOrcamento(PCodLoja, PNomeCliente: string);
    Procedure ObterListaProdutoOrcamento(PCodLoja: String; PNumOrcamento: Integer);
    procedure CarregarOrcamentoParaVenda(PCodLoja: String; PNumOrcamento: Integer);
    procedure LimparTabelaOrcamento;

  end;

implementation


uses
  Comum.lib.erpnfe;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


{ TPdvModel }
procedure TPdvModel.CarregarOrcamentoParaVenda(PCodLoja: String; PNumOrcamento: Integer);
Var
  Tbl: TFDMemTable;
begin
  Tbl := TFDMemTable.Create(nil);
  Try

    if Not NotaFiscal.Active then
      NotaFiscal.Active := true;

    if Not ProdutoNotaFiscal.Active then
      ProdutoNotaFiscal.Active := true;

    ObterOrcamento(PCodLoja, PNumOrcamento, Tbl);

    NotaFiscal.Cancel;
    NotaFiscal.EmptyDataSet;

    ProdutoNotaFiscal.Cancel;
    ProdutoNotaFiscal.EmptyDataSet;

    if Orcamento.RecordCount = 0 then
      Exit;

    NotaFiscal.Append;
    NotaFiscal.FieldByName('COD_LOJA').AsString := Tbl.FieldByName('COD_LOJA').AsString;
    NotaFiscal.FieldByName('COD_CLIENTE').AsInteger := Tbl.FieldByName('COD_CLIENTE').AsInteger;
    NotaFiscal.FieldByName('COD_CONDICAO_PAGTO').AsInteger := Tbl.FieldByName('COD_CONDICAO_PAGTO').AsInteger;
    NotaFiscal.FieldByName('COD_VENDEDOR').AsString := Tbl.FieldByName('COD_VENDEDOR').AsString;
    NotaFiscal.FieldByName('COD_TP_ESTOQUE').AsInteger := Tbl.FieldByName('COD_TP_ESTOQUE').AsInteger;
    NotaFiscal.FieldByName('NOME_CLIENTE').AsString := Tbl.FieldByName('NOME_CLIENTE').AsString;
    NotaFiscal.FieldByName('EMAIL_CLIENTE').AsString := Tbl.FieldByName('EMAIL_CLIENTE').AsString;
    NotaFiscal.FieldByName('NUM_ORCAMENTO').AsInteger := Tbl.FieldByName('NUM_ORCAMENTO').AsInteger;

    while Not Tbl.Eof do
    begin
      ProdutoNotaFiscal.Append;
      ProdutoNotaFiscal.FieldByName('NUM_ORCAMENTO').AsInteger := Tbl.FieldByName('NUM_ORCAMENTO').AsInteger;
      ProdutoNotaFiscal.FieldByName('COD_PRODUTO').AsString := Tbl.FieldByName('COD_PRODUTO').AsString;
      ProdutoNotaFiscal.FieldByName('QTDADE').AsFloat := Tbl.FieldByName('QTDADE').AsFloat;
      ProdutoNotaFiscal.FieldByName('VLR_PRODUTO').AsCurrency := Tbl.FieldByName('VLR_PRODUTO').AsCurrency;
      ProdutoNotaFiscal.FieldByName('VLR_DESCONTO_PRODUTO').AsCurrency := Tbl.FieldByName('VLR_DESCONTO').AsCurrency;
      ProdutoNotaFiscal.FieldByName('VLR_TOTAL_PRODUTO').AsCurrency := Tbl.FieldByName('VLR_TOTAL_PRODUTO').AsCurrency;
      ProdutoNotaFiscal.FieldByName('DESCRICAO').AsString := Tbl.FieldByName('DESCRICAO').AsString;
      ProdutoNotaFiscal.FieldByName('POSICAO').AsInteger := Tbl.RecNo;
      ProdutoNotaFiscal.Post;
      Tbl.Next;
    end;
  Finally
    Tbl.Free;
  End;

end;

procedure TPdvModel.ObterOrcamento(Const PCodLoja: String; Const PNumOrcamento: Integer; Tbl: TFDMemTable);
Var
  dao: TOrcamentoDao;
begin
  dao := TOrcamentoDao.Create;
  Try
    dao.ObterOrcamento(PCodLoja, PNumOrcamento);
    Tbl.Data := Dao.Qry_Pesquisa.Data;
  Finally
    dao.Free;
  End;
end;

procedure TPdvModel.CriarIndiceOrdenacao;
begin

end;

procedure TPdvModel.LimparTabelaOrcamento;
begin
  if Orcamento.Active then
  Begin
    Orcamento.Cancel;
    Orcamento.EmptyDataSet;
  End;
end;

procedure TPdvModel.ObterListaOrcamento(PCodLoja, PNomeCliente: string);
Var
  dao: TOrcamentoDao;
begin

  dao := TOrcamentoDao.Create;
  Try
    dao.ObterOrcamentoParaPdv(PCodLoja, PNomeCliente);
    Orcamento.Cancel;
    Orcamento.Close;
    Orcamento.Data := dao.Qry_Pesquisa.Data;
    CriarIndiceOrdenacao;
  Finally
    dao.Free;
  End;

end;

procedure TPdvModel.ObterListaProdutoOrcamento(PCodLoja: String;
  PNumOrcamento: Integer);
Var
  dao: TOrcamentoDao;
begin
  dao := TOrcamentoDao.Create;
  Try
    dao.ObterListaProdutoOrcamento(PCodLoja, PNumOrcamento);

    ProdutoOrcamento.Cancel;
    ProdutoOrcamento.EmptyDataSet;
    ProdutoOrcamento.Data := dao.Qry_ProdutoOrcamento.Data;
  Finally
    dao.Free;
  End;

end;

end.
