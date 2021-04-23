unit Orcamento.dao.servidor.erpnfe;

interface

uses
  System.SysUtils, System.Classes, dao.servidor.erpnfe, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase;

type
  TOrcamentoDao = class(TServidorDao)
  private
    { Private declarations }
  public
    { Public declarations }
    function ObterOrcamentoParaPdv(PCodLoja, PNomeCliente: String; PDtOrcamento : TDateTime) : TFDQUery;

  end;

var
  OrcamentoDao: TOrcamentoDao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TOrcamentoDao }

function TOrcamentoDao.ObterOrcamentoParaPdv(PCodLoja, PNomeCliente: String;
  PDtOrcamento: TDateTime): TFDQUery;

Var
  s : String;
begin
  s := ' SELECT '
  + ' S052.CODLJA AS COD_LOJA,  '
  + ' S052.NOMCLI AS NOME_CLIENTE, '
  + ' S052.DTAORC AS DT_ORCAMENTO,  '
  + ' S052.VLRTOTORC AS VLR_ORCAMENTO, '
  + ' S052.NUMORC AS NUM_ORCAMENTO  '
  + ' FROM SINAF052 S052 ';




end;

end.
