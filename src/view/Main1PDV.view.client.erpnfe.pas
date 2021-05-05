unit Main1PDV.view.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  PDV.controller.servidor.erpnfe,
  Edit.classhelper,
  PDVConsultaOrcamento.view.client.erpnfe,
  Container.lib.erpnfe,
  Comum.lib.erpnfe,
  ConfiguracaoConexaoBanco, PDVCheckout.client.erpnfe,
  PDVConfiguracaoDispositivo.view.client.erpnfe,
  PDVConfiguracaoUsuario.client.erpnfe,
  PDVAlterarQuantidade.client.erpnfe,
  PDVAlterarVendedor.client.erpnfe, Estilo.lib;

type
  TView_PDVAzul = class(TForm)
    Pnl_Back: TPanel;
    Pnl_BackInterno: TPanel;
    Panel1: TPanel;
    Panel11: TPanel;
    Pnl_DadosProduto: TPanel;
    GrdPnl_Opcoes: TGridPanel;
    Pnl_OpcaoEscape: TPanel;
    Lbl_Esc: TLabel;
    Lbl_Sair: TLabel;
    Panel4: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Panel5: TPanel;
    Btn_PreVenda1: TLabel;
    Btn_PreVenda2: TLabel;
    Panel6: TPanel;
    Lbl_F3: TLabel;
    Lbl_NovaVenda: TLabel;
    Panel7: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Panel8: TPanel;
    Lbl_F5: TLabel;
    Lbl_FecharVenda: TLabel;
    Panel9: TPanel;
    Lbl_F6: TLabel;
    Lbl_Cancelar: TLabel;
    Panel10: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Panel12: TPanel;
    Pnl_Rodape: TPanel;
    Panel2: TPanel;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    Pnl_MensagemOperador: TPanel;
    DBGrid1: TDBGrid;
    Panel13: TPanel;
    Memo1: TMemo;
    Label1: TLabel;
    Panel14: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel15: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    DtSrc_Produto: TDataSource;
    Edt_CodProduto: TEdit;
    GrdPnl_MaisOpcoes: TGridPanel;
    Panel3: TPanel;
    Lbl_EscMaisOpcoes: TLabel;
    Lbl_VoltarOpcoes: TLabel;
    Panel16: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Panel17: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Panel18: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Panel19: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Panel20: TPanel;
    Panel21: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Panel22: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Lbl_Mensagem: TLabel;
    Lbl_PinPad: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure Btn_PreVenda1DblClick(Sender: TObject);
    procedure Lbl_F5DblClick(Sender: TObject);
    procedure Label20DblClick(Sender: TObject);
    procedure Lbl_F3DblClick(Sender: TObject);
    procedure Lbl_EscDblClick(Sender: TObject);
    procedure Label14DblClick(Sender: TObject);
    procedure Lbl_F6DblClick(Sender: TObject);
    procedure Label3DblClick(Sender: TObject);
    procedure Label4DblClick(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure DtSrc_ProdutoStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Lbl_EscMaisOpcoesDblClick(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label12DblClick(Sender: TObject);
  private
    { Private declarations }
    ControllerPDV: IControllerPDV;
    View_ConsultaOrcamento: TView_ConsultaOrcamento;
    procedure VerificarStatusPinPad;
    procedure SairPrograma;
    procedure AplicarEstilo;
    procedure ConsultarOrcamento;
    procedure FecharVenda;
    procedure AlterarVendedor;
    procedure ConsultarProduto;
    procedure ObterMaisOpcoes;
    procedure CancelarVenda;
    procedure AlterarQuantidade;
    procedure NovaVenda;
    procedure AlterarSerieNotaFiscal;
    procedure ConfigurarBotoes;
    procedure AtivarMenuOpcao;
    procedure ConfigurarDispositivo;
    procedure ConfigurarUsuario;
    procedure CancelarTEF;
  public
    { Public declarations }
  end;

var
  View_PDVAzul: TView_PDVAzul;

implementation

{$R *.dfm}

{ TForm2 }

procedure TView_PDVAzul.AlterarQuantidade;
begin
  if Not GrdPnl_Opcoes.Visible then
    Exit;

  if Not Assigned(View_AlterarQuantidade) then
    View_AlterarQuantidade := TView_AlterarQuantidade.Create(nil);

  View_AlterarQuantidade.ControllerPDV := ControllerPDV;
  View_AlterarQuantidade.ShowModal;
end;

procedure TView_PDVAzul.AlterarSerieNotaFiscal;
begin
  if Not GrdPnl_Opcoes.Visible then
    Exit;

  ShowMessage('Alterar serie Nota Fiscal');
end;

procedure TView_PDVAzul.AlterarVendedor;
begin
  if Not GrdPnl_Opcoes.Visible then
    Exit;

  if Not Assigned(View_AlterarVendedor) then
    View_AlterarVendedor := TView_AlterarVendedor.Create(nil);

  View_AlterarVendedor.ControllerPDV := ControllerPDV;
  View_AlterarVendedor.ShowModal;
end;

procedure TView_PDVAzul.AplicarEstilo;
var
  I: Integer;
begin
  Lbl_PinPad.Font.Color := $00F8E4D7;
end;

procedure TView_PDVAzul.Btn_PreVenda1DblClick(Sender: TObject);
begin
  ConsultarOrcamento;
end;

procedure TView_PDVAzul.CancelarTEF;
begin
  if Not GrdPnl_MaisOpcoes.Visible then
    Exit;

  ShowMessage('cancelar TEF');

end;

procedure TView_PDVAzul.CancelarVenda;
begin
  if Not GrdPnl_Opcoes.Visible then
    Exit;

  if Lbl_F6.Font.Color = clRed then
    Exit;

  ShowMessage('Cancelar Venda');

end;

procedure TView_PDVAzul.ConfigurarBotoes;
begin
  if ControllerPDV.model.ProdutoNotaFiscal.RecordCount > 0 then
  Begin
    Lbl_Mensagem.Caption := 'EM PROCESSO DE VENDAS';
    Lbl_Esc.Font.Color := clRed;
    Lbl_Sair.Font.Color := clRed;

    Lbl_NovaVenda.Color := clGreen;
    Lbl_F3.Color := clGreen;

    Lbl_F5.Font.Color := clGreen;
    Lbl_FecharVenda.Font.Color := clGreen;

    Lbl_F6.Font.Color := clGreen;
    Lbl_Cancelar.Font.Color := clGreen;
  End
  else
  Begin
    Lbl_Mensagem.Caption := 'CAIXA LIVRE';
    Lbl_Esc.Font.Color := clGreen;
    Lbl_Sair.Font.Color := clGreen;

    Lbl_NovaVenda.Color := clRed;
    Lbl_F3.Color := clRed;

    Lbl_F5.Font.Color := clRed;
    Lbl_FecharVenda.Font.Color := clRed;

    Lbl_F6.Font.Color := clRed;
    Lbl_Cancelar.Font.Color := clRed;

  End;
end;

procedure TView_PDVAzul.ConfigurarDispositivo;
begin
  if Not GrdPnl_MaisOpcoes.Visible then
    Exit;

  if Not Assigned(View_ConfiguracaoDispositivo) then
    View_ConfiguracaoDispositivo := TView_ConfiguracaoDispositivo.Create(nil);

  View_ConfiguracaoDispositivo.ShowModal;

end;

procedure TView_PDVAzul.ConfigurarUsuario;
begin
  if Not GrdPnl_MaisOpcoes.Visible then
    Exit;

  if Not Assigned(View_ConfiguracaoUsuario) then
    View_ConfiguracaoUsuario := TView_ConfiguracaoUsuario.Create(nil);

  View_ConfiguracaoUsuario.ControllerPDV := ControllerPDV;
  View_ConfiguracaoUsuario.ShowModal;

end;

procedure TView_PDVAzul.ConsultarOrcamento;
begin
  if Not GrdPnl_Opcoes.Visible then
    Exit;

  if Not Assigned(View_ConsultaOrcamento) then
    View_ConsultaOrcamento := TView_ConsultaOrcamento.Create(nil);

  View_ConsultaOrcamento.ControllerPDV := ControllerPDV;
  View_ConsultaOrcamento.ShowModal;

  ConfigurarBotoes;

  Edt_CodProduto.SetFocus;

end;

procedure TView_PDVAzul.ConsultarProduto;
begin

  ShowMessage('Consultar Prdouto');
end;

procedure TView_PDVAzul.DtSrc_ProdutoStateChange(Sender: TObject);
begin
  if DtSrc_Produto.DataSet.RecNo > 0 then
    Pnl_OpcaoEscape.Color := clRed
  Else
    Pnl_OpcaoEscape.Color := clBtnFace;
end;

procedure TView_PDVAzul.FecharVenda;

begin

  if Not GrdPnl_Opcoes.Visible then
    Exit;

  if Lbl_F5.Font.Color = clRed then
    Exit;

  if Not Assigned(View_CheckOut) then
    View_CheckOut := TView_CheckOut.Create(nil);

  View_CheckOut.ControllerPDV := ControllerPDV;

  View_CheckOut.ShowModal;

  ConfigurarBotoes;

end;

procedure TView_PDVAzul.FormCreate(Sender: TObject);
begin
  Self.Left := 0;
  Self.Top := 0;
  Self.Width := Screen.Width;
  Self.Height := Screen.Height;
  Pnl_Back.Left := (Self.Width - Pnl_Back.Width) div 2;
  Pnl_Back.Top := (Self.Height - Pnl_Back.Height) div 2;

  AtivarMenuOpcao;
  GrdPnl_MaisOpcoes.Parent := GrdPnl_Opcoes.Parent;

  DM_Container := TDM_Container.Create(Application);
  ControllerPDV := TControllerPDV.Create;

  Comum.lib.erpnfe.ConfiguracaoConexaoBanco := TConfiguracaoConexaoBanco.New;
  Comum.lib.erpnfe.ConfiguracaoConexaoBanco.obterDadosConexao('D:\DuoSig\Bin', 'DuoSig.ini');

  Self.Align := alClient;

  DtSrc_Produto.DataSet := ControllerPDV.model.ProdutoNotaFiscal;

  AplicarEstilo;

  VerificarStatusPinPad;

end;

procedure TView_PDVAzul.FormDestroy(Sender: TObject);
begin
  if Assigned(View_ConsultaOrcamento) then
    View_ConsultaOrcamento.Free;

  if Assigned(View_CheckOut) then
    View_CheckOut.Free;

  if Assigned(View_ConfiguracaoDispositivo) then
    View_ConfiguracaoDispositivo.Free;

  if Assigned(View_ConfiguracaoUsuario) then
    View_ConfiguracaoUsuario.Free;

  if Assigned(View_AlterarQuantidade) then
    View_AlterarQuantidade.Free;

  if Assigned(View_AlterarVendedor) then
    View_AlterarVendedor.Free;

end;

procedure TView_PDVAzul.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      SairPrograma;
    VK_F1:
      ObterMaisOpcoes;
    VK_F2:
      ConsultarOrcamento;
    VK_F3:
      NovaVenda;
    VK_F4:
      AlterarQuantidade;
    VK_F5:
      FecharVenda;
    VK_F6:
      CancelarVenda;
    VK_F7:
      ConsultarProduto;
    VK_F8:
      AlterarVendedor;
    VK_F9:
      AlterarSerieNotaFiscal;
    VK_F10:
      ConfigurarDispositivo;
    VK_F11:
      ConfigurarUsuario;
    VK_F12:
      CancelarTEF;

  end;
end;

procedure TView_PDVAzul.FormShow(Sender: TObject);
begin
  ConfigurarBotoes;
  Edt_CodProduto.SetFocus;
end;

procedure TView_PDVAzul.Lbl_F3DblClick(Sender: TObject);
begin
  NovaVenda;
end;

procedure TView_PDVAzul.Label10Click(Sender: TObject);
begin
  ConfigurarDispositivo;
end;

procedure TView_PDVAzul.Label12DblClick(Sender: TObject);
begin
  ConfigurarUsuario;
end;

procedure TView_PDVAzul.Label14DblClick(Sender: TObject);
begin
  AlterarQuantidade;
end;

procedure TView_PDVAzul.Lbl_F5DblClick(Sender: TObject);
begin
  FecharVenda;
end;

procedure TView_PDVAzul.Lbl_F6DblClick(Sender: TObject);
begin
  CancelarVenda;
end;

procedure TView_PDVAzul.Label20DblClick(Sender: TObject);
begin
  ConsultarProduto;
end;

procedure TView_PDVAzul.Label3DblClick(Sender: TObject);
begin
  AlterarVendedor;
end;

procedure TView_PDVAzul.Label4DblClick(Sender: TObject);
begin
  AlterarSerieNotaFiscal;
end;

procedure TView_PDVAzul.Lbl_EscMaisOpcoesDblClick(Sender: TObject);
begin
  AtivarMenuOpcao;
end;

procedure TView_PDVAzul.Lbl_EscDblClick(Sender: TObject);
begin
  Close;
end;

procedure TView_PDVAzul.Label8Click(Sender: TObject);
begin
  ObterMaisOpcoes;
end;

procedure TView_PDVAzul.NovaVenda;
begin

  if Not GrdPnl_Opcoes.Visible then
    Exit;

  if Lbl_F3.Font.Color = clRed then
    Exit;

  ControllerPDV.model.NovaVenda;

  ConfigurarBotoes;

end;

procedure TView_PDVAzul.ObterMaisOpcoes;
begin
  if Not GrdPnl_Opcoes.Visible then
    Exit;

  GrdPnl_Opcoes.Visible := false;
  GrdPnl_MaisOpcoes.Visible := true;
  Lbl_EscMaisOpcoes.Enabled := true;
  Lbl_VoltarOpcoes.Enabled := true;
  GrdPnl_MaisOpcoes.Repaint;
end;

procedure TView_PDVAzul.SairPrograma;
begin
  if Lbl_EscMaisOpcoes.Enabled then
  begin
    AtivarMenuOpcao;
    Exit;
  end;

  if Lbl_Esc.Font.Color = clRed then
    Exit;

  Close;
end;

procedure TView_PDVAzul.VerificarStatusPinPad;
begin
  if 1 = 2 then
    Lbl_PinPad.Caption := 'PINPAD ATIVO'
  Else
    Lbl_PinPad.Caption := 'PINPAD INATIVO';
end;

procedure TView_PDVAzul.AtivarMenuOpcao;
begin
  GrdPnl_MaisOpcoes.Visible := false;
  Lbl_EscMaisOpcoes.Enabled := false;
  Lbl_VoltarOpcoes.Enabled := false;
  GrdPnl_Opcoes.Visible := true;
end;

end.
