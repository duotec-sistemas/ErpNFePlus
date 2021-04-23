unit MainPdv.view.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls,
  PDV.controller.servidor.erpnfe,
  Edit.classhelper,
  PDVConsultaOrcamento.view.client.erpnfe,
  Container.lib.erpnfe,
  Comum.lib.erpnfe,
  ConfiguracaoConexaoBanco, Vcl.Mask, Vcl.DBCtrls;

type
  TView_PDV = class(TForm)
    Pnl_BackGround: TPanel;
    Pnl_BackGroundInterno: TPanel;
    Pnl_MensagemOperador: TPanel;
    Pnl_Central: TPanel;
    Pnl_Rodape: TPanel;
    Panel1: TPanel;
    Pnl_ProdutosVendidos: TPanel;
    Pnl_DadosProduto: TPanel;
    Edt_VlrTotalProduto: TEdit;
    Edt_VlrDesconto: TEdit;
    Edt_VlrUnitario: TEdit;
    Edt_Qtdade: TEdit;
    Edt_CodProduto: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    GridPanel1: TGridPanel;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Panel4: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Panel5: TPanel;
    Btn_PreVenda1: TLabel;
    Btn_PreVenda2: TLabel;
    Panel6: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Panel7: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Panel8: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Panel9: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Panel10: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Pnl_DescricaoProduto: TPanel;
    DtSrc_Produto: TDataSource;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure Btn_PreVenda2Click(Sender: TObject);
  private
    { Private declarations }
    ControllerPDV: IControllerPDV;
    View_ConsultaOrcamento: TView_ConsultaOrcamento;
    procedure AplicarEstilo;
    procedure ConsultarOrcamento;
  public
    { Public declarations }
  end;

Const
  BACKGROUND_MAIN = $00785666;

var
  View_PDV: TView_PDV;

implementation


{$R *.dfm}

{ TForm2 }

procedure TView_PDV.AplicarEstilo;
begin
  Pnl_BackGround.Color := BACKGROUND_MAIN;

end;

procedure TView_PDV.ConsultarOrcamento;
begin
  if Not Assigned(View_ConsultaOrcamento) then
    View_ConsultaOrcamento := TView_ConsultaOrcamento.Create(nil);

  View_ConsultaOrcamento.ControllerPDV := ControllerPDV;
  View_ConsultaOrcamento.ShowModal;
end;

procedure TView_PDV.FormCreate(Sender: TObject);
begin
  DM_Container := TDM_Container.Create(Application) ;
  ControllerPDV := TControllerPDV.Create;

  Comum.lib.erpnfe.ConfiguracaoConexaoBanco := TConfiguracaoConexaoBanco.New;
  Comum.lib.erpnfe.ConfiguracaoConexaoBanco.obterDadosConexao('D:\DuoSig\Bin', 'DuoSig.ini');

  Self.Align := alClient;

  DtSrc_Produto.DataSet := ControllerPDV.model.ProdutoNotaFiscal;

  Edt_CodProduto.MakeRounded;
  Edt_Qtdade.MakeRounded;
  Edt_VlrUnitario.MakeRounded;
  Edt_VlrDesconto.MakeRounded;
  Edt_VlrTotalProduto.MakeRounded;
end;

procedure TView_PDV.FormDestroy(Sender: TObject);
begin
  if Assigned(View_ConsultaOrcamento) then
    View_ConsultaOrcamento.Free;
end;

procedure TView_PDV.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;

  if Key = VK_F2 then
    ConsultarOrcamento;

end;



procedure TView_PDV.Btn_PreVenda2Click(Sender: TObject);
begin
  ConsultarOrcamento;
end;

initialization
  ReportMemoryLeaksOnShutdown := true;
end.
