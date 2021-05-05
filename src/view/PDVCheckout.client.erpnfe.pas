unit PDVCheckout.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, PraButtonStyle,
  PDV.controller.servidor.erpnfe, JvExMask, JvToolEdit, JvBaseEdits, Vcl.Buttons,
  JvComponentBase, JvEnterTab, ACBrBase, ACBrEnterTab, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, Estilo.lib,
  JvExControls, JvButton, JvTransparentButton, Funcoes.lib.erpnfe, sCalculator,
  JvBaseDlg, JvCalc, ACBrCalculadora;

type
  TView_CheckOut = class(TForm)
    Pnl_BackGround: TPanel;
    Pnl_BackGroundInterno: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrd_FormaPagto: TDBGrid;
    Pnl_Mensagem: TPanel;
    Pnl_Titulo: TPanel;
    DtSrc_FormaPagto: TDataSource;
    DtSrc_ProdutoNF: TDataSource;
    DtSrc_NF: TDataSource;
    ACBrEnterTab1: TACBrEnterTab;
    Panel3: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    CmbBx_FormaPagto: TComboBox;
    Label4: TLabel;
    GridPanel1: TGridPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Edt_SubTotal: TDBEdit;
    Label22: TLabel;
    Label2: TLabel;
    Edt_VlrTotalPago: TDBEdit;
    Label5: TLabel;
    Edt_VlrPagar: TDBEdit;
    Lbl_VlrTroco: TLabel;
    Edt_VlrTroco: TDBEdit;
    GrdPnl_Opcoes: TGridPanel;
    Pnl_OpcaoEscape: TPanel;
    Lbl_Esc: TLabel;
    Lbl_Sair: TLabel;
    Panel11: TPanel;
    Lbl_F10: TLabel;
    Lbl_NovaVenda: TLabel;
    Panel13: TPanel;
    Lbl_F5: TLabel;
    Lbl_FecharVenda: TLabel;
    Btn_Adicionar: TJvTransparentButton;
    Edt_VlrPago: TJvCalcEdit;
    Panel9: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Panel10: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Panel12: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure PraButtonStyle1Click(Sender: TObject);
    procedure DBGrd_FormaPagtoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Btn_AdicionarClick(Sender: TObject);
    procedure Edt_VlrPagoExit(Sender: TObject);
    procedure DtSrc_NFUpdateData(Sender: TObject);
  private
    FControllerPDV: IControllerPDV;
    procedure SetControllerPDV(const Value: IControllerPDV);
    procedure AdicionarFormaPagto;
    Procedure EncerrarVenda;
    { Private declarations }
  public
    { Public declarations }
    property ControllerPDV: IControllerPDV read FControllerPDV write SetControllerPDV;
  end;

var
  View_CheckOut: TView_CheckOut;

implementation

uses Container.lib.erpnfe;

{$R *.dfm}


procedure TView_CheckOut.AdicionarFormaPagto;
begin
  if Edt_VlrPago.Text > '0' then
  begin
    Try
      ControllerPDV.model.AdicionarFormaPagto(CmbBx_FormaPagto.Text, StrToFloatDef(Edt_VlrPago.Text, 0));
    except
      on e : Exception do
      begin
        Edt_VlrPago.Clear;
        raise;
      end;
    End;
    if ControllerPDV.model.NotaFiscalVLR_SALDO_PAGAR.AsCurrency = 0 then
    begin
//      EncerrarVenda;
    end
    Else
    Begin
      CmbBx_FormaPagto.SetFocus;
    End;
  end;
end;

procedure TView_CheckOut.Btn_AdicionarClick(Sender: TObject);
begin
  AdicionarFormaPagto;
  CmbBx_FormaPagto.SetFocus;
end;

procedure TView_CheckOut.DBGrd_FormaPagtoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{ if ControllerPDV.model.FormasPagto.RecordCount > 0 then
  begin
    SpdBtn_Apagar.Visible := Column.Field = ControllerPDV.model.FormasPagtoSTS_APAGAR;
  end;
 }
end;

procedure TView_CheckOut.DtSrc_NFUpdateData(Sender: TObject);
begin
  if ControllerPDV.model.NotaFiscalVLR_TROCO.AsCurrency > 0  then
  begin
    Lbl_VlrTroco.Font.Color := clMaroon;
    Edt_VlrTroco.Font.Color := clMaroon;
  end
  else begin
    Lbl_VlrTroco.Font.Color := clBlack;
    Edt_VlrTroco.Font.Color := clBlack;
  end;
end;

procedure TView_CheckOut.Edt_VlrPagoExit(Sender: TObject);
begin
  if Screen.ActiveControl.Name = 'DBGrd_FormaPagto' then
  begin
    AdicionarFormaPagto;
    CmbBx_FormaPagto.SetFocus;
  end;
end;

procedure TView_CheckOut.EncerrarVenda;
begin
  Pnl_Mensagem.Caption := 'AGUARDE!!! Gravando Documento ';
  Pnl_Mensagem.Update;
  Application.ProcessMessages;
//  ControllerPDV.model.EncerrarVenda;
  Close;
end;

procedure TView_CheckOut.FormCreate(Sender: TObject);
begin
  Self.Left := 0;
  Self.Top := 0;
  Self.Width := Screen.Width;
  Self.Height := Screen.Height;
  Pnl_BackGround.Left := (Self.Width - Pnl_BackGround.Width) div 2;
  Pnl_BackGround.Top := (Self.Height - Pnl_BackGround.Height) div 2;

  Pnl_Mensagem.Caption := '';
end;

procedure TView_CheckOut.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TView_CheckOut.FormShow(Sender: TObject);
begin
  TEstilo.AplicarEstilo(Self);
  CmbBx_FormaPagto.SetFocus;


end;

procedure TView_CheckOut.PraButtonStyle1Click(Sender: TObject);
begin
  AdicionarFormaPagto;
end;

procedure TView_CheckOut.SetControllerPDV(const Value: IControllerPDV);
begin
  FControllerPDV := Value;
  DtSrc_FormaPagto.DataSet := ControllerPDV.model.FormasPagto;
  DtSrc_ProdutoNF.DataSet := ControllerPDV.model.ProdutoNotaFiscal;
  DtSrc_NF.DataSet := ControllerPDV.model.NotaFiscal;
end;

end.
