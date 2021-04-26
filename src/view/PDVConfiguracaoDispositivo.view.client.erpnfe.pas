unit PDVConfiguracaoDispositivo.view.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Samples.Spin, sSpeedButton, JvgSpeedButton,
    PDV.controller.servidor.erpnfe;

type
  TView_ConfiguracaoDispositivo = class(TForm)
    Pnl_BackGround: TPanel;
    Pnl_BackGroundInterno: TPanel;
    Panel1: TPanel;
    Pnl_Mensagem: TPanel;
    Pnl_Titulo: TPanel;
    gbConfigImpressora: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label7: TLabel;
    Label29: TLabel;
    btSerial: TSpeedButton;
    btProcuraImpressoras: TSpeedButton;
    seLinhasPular: TSpinEdit;
    seEspLinhas: TSpinEdit;
    seColunas: TSpinEdit;
    cbxModeloPosPrinter: TComboBox;
    cbxPorta: TComboBox;
    cbxPagCodigo: TComboBox;
    btTestarPosPrinter: TBitBtn;
    gbConfigTEF: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SbArqLog: TSpeedButton;
    Label12: TLabel;
    Label9: TLabel;
    cbxGP: TComboBox;
    cbMultiplosCartoes: TCheckBox;
    cbSuportaDesconto: TCheckBox;
    cbSuportaSaque: TCheckBox;
    seMaxCartoes: TSpinEdit;
    cbIMprimirViaReduzida: TCheckBox;
    edLog: TEdit;
    seTrocoMaximo: TSpinEdit;
    cbSuportaReajusteValor: TCheckBox;
    btTestarTEF: TBitBtn;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edRazaoSocial: TEdit;
    edAplicacaoNome: TEdit;
    edRegistro: TEdit;
    edAplicacaoVersao: TEdit;
    cbxQRCode: TComboBox;
    Btn_Salvar: TJvgSpeedButton;
    Pnl_Opcoes: TPanel;
    JvgSpeedButton1: TJvgSpeedButton;
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
  View_ConfiguracaoDispositivo: TView_ConfiguracaoDispositivo;

implementation

{$R *.dfm}

procedure TView_ConfiguracaoDispositivo.FormCreate(Sender: TObject);
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

procedure TView_ConfiguracaoDispositivo.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key  of
    VK_ESCAPE:
      Close;
  end;
end;

procedure TView_ConfiguracaoDispositivo.SetControllerPDV(
  const Value: IControllerPDV);
begin
  FControllerPDV := Value;
end;

end.
