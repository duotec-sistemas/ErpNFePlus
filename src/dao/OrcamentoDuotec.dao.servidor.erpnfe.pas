unit OrcamentoDuotec.dao.servidor.erpnfe;

interface

uses
  System.SysUtils, System.Classes, dao.servidor.erpnfe, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase,
  Container.lib.erpnfe;

type
  TOrcamentoDao = class(TServidorDao)
    Qry_ProdutoOrcamento: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function ObterOrcamentoParaPdv(PCodLoja, PNomeCliente: string): TFDQuery;
    function ObterListaProdutoOrcamento(PCodLoja: String; PNumOrcamento: Integer): TFDQuery;
    Function ObterOrcamento(PCodLoja: String; PNumOrcamento: Integer): TFDQuery;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TOrcamentoDao }

function TOrcamentoDao.ObterOrcamento(PCodLoja: String; PNumOrcamento: Integer): TFDQuery;
Var
  s: String;

begin

  Try
    Qry_Pesquisa.Connection := FDConexao;
    s := ' select S052.CODLJA as COD_LOJA, S052.CODCLI as COD_CLIENTE, S052.CODCNDPGT as COD_CONDICAO_PAGTO, '
      + ' S052.CODVND as COD_VENDEDOR, S052.CODTPOETQ as COD_TP_ESTOQUE, S052.NOMCLI as NOME_CLIENTE, '
      + ' S052.NUMORC NUM_ORCAMENTO, S019.EMAILCLI as EMAIL_CLIENTE, S053.CODPRD as COD_PRODUTO, S053.QTDPRD as QTDADE, '
      + ' S053.VLRPRD as VLR_PRODUTO, S053.VLRDSC VLR_DESCONTO, S053.VLRTOTPRD as VLR_TOTAL_PRODUTO, '
      + ' S034.DCRPRD as DESCRICAO '
      + ' from SINAF052 S052 '
      + ' left join SINAF019 S019 on S019.CODCLI = S052.CODCLI '
      + ' left join SINAF053 S053 on S053.EMPGRP = S052.EMPGRP and S053.CODLJA = S052.CODLJA and S053.NUMORC = S052.NUMORC '
      + ' left join SINAF034 S034 on S034.CODPRD = S053.CODPRD '
      + ' where S052.EMPGRP = :EMPGRP '
      + ' and   S052.CODLJA = :COD_LOJA'
      + ' and   S052.NUMORC = :NUM_ORCAMENTO';
    Qry_Pesquisa.Close;
    Qry_Pesquisa.SQL.Text := s;
    Qry_Pesquisa.ParamByName('EMPGRP').AsString := _EMPGRP;
    Qry_Pesquisa.ParamByName('COD_LOJA').AsString := PCodLoja;
    Qry_Pesquisa.ParamByName('NUM_ORCAMENTO').AsInteger := PNumOrcamento;
    Qry_Pesquisa.Open;
  Finally
  End;
end;

function TOrcamentoDao.ObterOrcamentoParaPdv(PCodLoja, PNomeCliente: string): TFDQuery;

Var
  s, s1: String;
begin
  s := ' SELECT '
    + ' S052.CODLJA AS COD_LOJA,  '
    + ' S052.CODCLI AS COD_CLIENTE,  '
    + ' S052.NOMCLI AS NOME_CLIENTE, '
    + ' S052.DTAORC AS DT_ORCAMENTO,  '
    + ' S052.VLRTOTORC AS VLR_ORCAMENTO, '
    + ' S052.NUMORC AS NUM_ORCAMENTO  '
    + ' FROM SINAF052 S052 '
    + ' WHERE S052.cODLJA = :COD_LOJA';

  Qry_Pesquisa.Close;
  Qry_Pesquisa.SQL.Text := s;

  Qry_Pesquisa.ParamByName('COD_LOJA').AsString := PCodLoja;

  if PNomeCliente <> '' then
  begin
    Qry_Pesquisa.SQL.Add(' AND S052.NOMCLI LIKE :NOME_CLIENTE');
    Qry_Pesquisa.ParamByName('NOME_CLIENTE').AsString := PNomeCliente + '%';
  end;

  Qry_Pesquisa.Open;

end;

function TOrcamentoDao.ObterListaProdutoOrcamento(PCodLoja: String;
  PNumOrcamento: Integer): TFDQuery;
Var
  s: String;
begin
  s := 'SELECT S053.CODACS, S053.CODPRD, S034.DCRPRD, S053.QTDPRD, S053.VLRPRD, S053.VLRDSC, S053.VLRTOTPRD '
    + ' FROM SINAF053 S053 '
    + ' LEFT JOIN SINAF034 S034 ON S034.CODPRD = S053.CODPRD '
    + ' WHERE S053.CODLJA = :COD_LOJA'
    + ' AND   S053.EMPGRP = :EMPGRP '
    + ' AND   S053.NUMORC = :NUM_ORCAMENTO ';
  Qry_ProdutoOrcamento.Close;
  Qry_ProdutoOrcamento.SQL.Text := s;

  Qry_ProdutoOrcamento.ParamByName('COD_LOJA').AsString := PCodLoja;
  Qry_ProdutoOrcamento.ParamByName('EMPGRP').AsString := _EMPGRP;
  Qry_ProdutoOrcamento.ParamByName('NUM_ORCAMENTO').AsInteger := PNumOrcamento;

  Qry_ProdutoOrcamento.Open;
end;

end.
