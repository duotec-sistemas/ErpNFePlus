unit PDVAlterarVendedor.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Samples.Spin, sSpeedButton, JvgSpeedButton,
  PDV.controller.servidor.erpnfe, JvExMask, JvToolEdit, JvBaseEdits;

type
  TView_AlterarVendedor = class(TForm)
    Pnl_BackGround: TPanel;
    Pnl_BackGroundInterno: TPanel;
    Panel1: TPanel;
    Pnl_Mensagem: TPanel;
    Pnl_Titulo: TPanel;
    Pnl_Opcoes: TPanel;
    Btn_Salvar: TJvgSpeedButton;
    JvgSpeedButton1: TJvgSpeedButton;
    Label11: TLabel;
    ComboBox1: TComboBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    FControllerPDV: IControllerPDV;
    procedure SetControllerPDV(const Value: IControllerPDV);
    { Private declarations }
  public
    { Public declarations }
    property ControllerPDV : IControllerPDV read FControllerPDV write SetControllerPDV;
  end;

var
  View_AlterarVendedor: TView_AlterarVendedor;

implementation

{$R *.dfm}

procedure TView_AlterarVendedor.FormCreate(Sender: TObject);
begin
  Self.Left := 0;
  Self.Top := 0;
  Self.Width := Screen.Width;
  Self.Height := Screen.Height;
  Self.BorderStyle := bsNone;
  Pnl_BackGround.Left := (Self.Width - Pnl_BackGround.Width) div 2;
  Pnl_BackGround.Top := (Self.Height - Pnl_BackGround.Height) div 2;

  Pnl_Mensagem.Caption := '';

end;

procedure TView_AlterarVendedor.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key  of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TView_AlterarVendedor.SetControllerPDV(const Value: IControllerPDV);
begin
  FControllerPDV := Value;
end;

end.
