unit PDVConsultaOrcamento.view.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Container.lib.erpnfe,
  PDV.controller.servidor.erpnfe, PraButtonStyle;

type
  TView_ConsultaOrcamento = class(TForm)
    Pnl_BackGround: TPanel;
    Pnl_BackGroundInterno: TPanel;
    Pnl_Central: TPanel;
    DBGrd_Consulta: TDBGrid;
    Pnl_Cabecalho: TPanel;
    Label1: TLabel;
    Edt_Pesquisa: TEdit;
    Btn_Pesquisar: TSpeedButton;
    Pnl_Rodape: TPanel;
    DtSrc_Orcamento: TDataSource;
    Lbl_Mensagem: TLabel;
    PraButtonStyle1: TPraButtonStyle;
    PraButtonStyle2: TPraButtonStyle;
    Pnl_Titulo: TPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DBGrd_ConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure Edt_PesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrd_ConsultaEnter(Sender: TObject);
    procedure DBGrd_ConsultaExit(Sender: TObject);
    procedure Edt_PesquisaEnter(Sender: TObject);
    procedure PraButtonStyle2Click(Sender: TObject);
    procedure PraButtonStyle1Click(Sender: TObject);
    procedure DBGrd_ConsultaDblClick(Sender: TObject);
  private
    FControllerPDV: IControllerPDV;
    FCodLoja: String;
    { Private declarations }
    procedure ConfirmarOrcamentoSelecionado;
    procedure Sair;
    procedure SetControllerPDV(const Value: IControllerPDV);
    procedure SetCodLoja(const Value: String);

  public
    { Public declarations }
    property ControllerPDV: IControllerPDV read FControllerPDV write SetControllerPDV;
    property CodLoja: String read FCodLoja write SetCodLoja;
  end;

implementation

{$R *.dfm}


procedure TView_ConsultaOrcamento.BitBtn2Click(Sender: TObject);
begin
  Sair;
end;

procedure TView_ConsultaOrcamento.DBGrd_ConsultaDblClick(Sender: TObject);
begin
  ConfirmarOrcamentoSelecionado;
end;

procedure TView_ConsultaOrcamento.DBGrd_ConsultaEnter(Sender: TObject);
begin
  Lbl_Mensagem.Caption := 'F7 para pesquisar novamente';
end;

procedure TView_ConsultaOrcamento.DBGrd_ConsultaExit(Sender: TObject);
begin
  Lbl_Mensagem.Caption := '';
end;

procedure TView_ConsultaOrcamento.DBGrd_ConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F7:
      Edt_Pesquisa.SetFocus;
    VK_RETURN:
      ConfirmarOrcamentoSelecionado;
  end;
end;

procedure TView_ConsultaOrcamento.Edt_PesquisaEnter(Sender: TObject);
begin
  Lbl_Mensagem.Caption := 'Digite o nome do cliente e pressione <ENTER> ou no botão Pesquisar';
end;

procedure TView_ConsultaOrcamento.Edt_PesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Btn_PesquisarClick(Sender);

end;

procedure TView_ConsultaOrcamento.FormCreate(Sender: TObject);
begin
  Self.BorderStyle := bsNone;
  Self.Tag := 0;
  FCodLoja := '01';

  Self.Left := 0;
  Self.Top := 0;
  Self.Width := Screen.Width;
  Self.Height := Screen.Height;
  Pnl_BackGround.Left := (Self.Width - Pnl_BackGround.Width) div 2;
  Pnl_BackGround.Top  := (Self.Height - Pnl_BackGround.Height) div 2;

end;

procedure TView_ConsultaOrcamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      begin
        Self.ModalResult := mrCancel;
        Close;
      end;

    VK_RETURN:
      begin
        if (Edt_Pesquisa.Focused) then
          Btn_PesquisarClick(Sender);
      end;
  end;

end;

procedure TView_ConsultaOrcamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Key := #0;
  if Key = #13 then
    Key := #0;
end;

procedure TView_ConsultaOrcamento.FormShow(Sender: TObject);
begin
  Self.Tag := 0;
  Lbl_Mensagem.Caption := '';
  Edt_Pesquisa.SetFocus;
//  ControllerPDV.model.LimparTabelaOrcamento;
end;

procedure TView_ConsultaOrcamento.PraButtonStyle1Click(Sender: TObject);
begin
  ConfirmarOrcamentoSelecionado;
end;

procedure TView_ConsultaOrcamento.PraButtonStyle2Click(Sender: TObject);
begin
  Sair;
end;

procedure TView_ConsultaOrcamento.Sair;
begin
  Self.Tag := 1;
  Close;
end;

procedure TView_ConsultaOrcamento.SetCodLoja(const Value: String);
begin
  FCodLoja := Value;
end;

procedure TView_ConsultaOrcamento.SetControllerPDV(const Value: IControllerPDV);
begin
  FControllerPDV := Value;
end;

procedure TView_ConsultaOrcamento.Btn_PesquisarClick(Sender: TObject);
begin
  ControllerPDV.Model.ObterListaOrcamento(CodLoja, Edt_Pesquisa.Text);
  DtSrc_Orcamento.DataSet := ControllerPDV.Model.Orcamento;
  DBGrd_Consulta.SetFocus;
end;

procedure TView_ConsultaOrcamento.ConfirmarOrcamentoSelecionado;
begin
  ControllerPDV.Model.CarregarOrcamentoParaVenda(
    DtSrc_Orcamento.DataSet.FieldByName('COD_LOJA').AsString,
    DtSrc_Orcamento.DataSet.FieldByName('NUM_ORCAMENTO').AsInteger);
  Self.Tag := 0;
  Close;
end;

end.
