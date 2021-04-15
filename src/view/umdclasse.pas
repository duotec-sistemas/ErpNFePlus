unit umdclasse;

interface

uses
  System.SysUtils, System.Classes, ConexaoBanco.Interfaces, ConexaoBanco,
  ConfiguracaoConexaoBanco.Interfaces, ConfiguracaoConexaoBanco,
  Query.Interfaces, Query, FireDAC.Comp.Client, System.Math, System.StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB;

type
  TDM_Classe = class(TDataModule)
    FDConnection1: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GerarInstrucaoSQL;
  end;

Const
  NOME_TABELA = '|*NomeTabela*|';
  ALIAS_TABELA = '|*AlasTabela*|';
  NOME_ENTIDADE = '|*NomeEntidade*|';
  CAMPOS_TABELA_INSERT = '|*CamposInsertUpdate*|';
  CAMPOS_TABELA_SELECT = '|*CamposSelect*|';

var
  DM_Classe: TDM_Classe;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM_Classe }

procedure TDM_Classe.GerarInstrucaoSQL;
var
  Conexao: IConexaoBancoModel;
  Query: IQueryModel;
  arquivoTemplate: String;
  stTemplate: TStringList;
  sql, campos: String;
  Qry: TFDQuery;
  virgula: string;
  ultimoRecno: Integer;

begin
  Conexao := TConexaoBancoModel.New(TConfiguracaoConexaoBanco.New.obterDadosConexao('D:\ServidorErpNfeHorse\', 'ServidorErpNFe.ini'));
  Query := TQueryModel.New(Conexao);
  arquivoTemplate := 'D:\Delphi_xe_10_4\ServidorHorseDelphiXe10-4\projeto\src\dao\template\Template.Sql.Servidor.pas';
  stTemplate := TStringList.Create;
  stTemplate.LoadFromFile(arquivoTemplate);

// Pegar o Nome da Tabela
  sql := ' SELECT T0003.NOME_TABELA, T0003.NOME_ENTIDADE, T0003.ALIAS_TABELA '
    + ' FROM TBL0003 T0003 '
    + ' WHERE T0003.NOME_TABELA = ' + QuotedStr('TBL0001');
  Qry := Query.Pesquisar(sql).ResultQuery;

  stTemplate.Text := StringReplace(stTemplate.Text, NOME_TABELA, Qry.FieldByName('NOME_TABELA').AsString, [rfReplaceAll]);
  stTemplate.Text := StringReplace(stTemplate.Text, NOME_ENTIDADE, Qry.FieldByName('NOME_ENTIDADE').AsString, [rfReplaceAll]);
  stTemplate.Text := StringReplace(stTemplate.Text, ALIAS_TABELA, Qry.FieldByName('ALIAS_TABELA').AsString, [rfReplaceAll]);

// Pegar os campos da Tabela
  sql := ' SELECT  T0004.NOME_CAMPO, T0003.ALIAS_TABELA, T0003.NOME_ENTIDADE, T0003.NOME_TABELA'
    + ' FROM TBL0004 T0004 '
    + ' LEFT JOIN TBL0003 T0003 ON T0003.COD_BANCO = T0004.COD_BANCO AND T0003.ID = T0004.ID_TBL0003 '
    + ' WHERE T0003.NOME_TABELA = ' + QuotedStr('TBL0001');
  Qry := Query.Pesquisar(sql).ResultQuery;
  ultimoRecno := Qry.RecordCount;
  campos := '';
  virgula := ', ';
  while Not Qry.Eof do
  begin
    if Qry.RecNo = ultimoRecno then
      virgula := '';

    campos := campos + DupeString(' ',10) + '+ ' + QuotedStr(Qry.FieldByName('ALIAS_TABELA').AsString + '.' + Qry.FieldByName('NOME_CAMPO').AsString + virgula) + ifthen(virgula=', ',sLineBreak,'');
    Qry.Next;
  end;

  //
  stTemplate.Text := StringReplace(stTemplate.Text, CAMPOS_TABELA_INSERT, campos, [rfReplaceAll]);
  stTemplate.Text := StringReplace(stTemplate.Text, CAMPOS_TABELA_SELECT, campos, [rfReplaceAll]);

  stTemplate.SaveToFile('c:\temp\' + Qry.FieldByName('NOME_ENTIDADE').AsString + ' .Sql.Servidor.pas');
  stTemplate.Free;
  //

end;

end.
