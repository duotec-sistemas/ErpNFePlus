unit Main.view.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, EstiloAplicacao.lib.erpnfe,
  Vcl.StdCtrls, Vcl.Buttons,
  System.Generics.Collections,
  Container.lib.erpnfe,
  Conexao.SQLite.dao.clent.erpnfe, OpcaoMenu.lib.erpnfe;

type
  TView_Main = class(TForm)
    Pnl_Top: TPanel;
    Pnl_BackGround: TPanel;
    Pnl_MenuModulo: TPanel;
    Pnl_View: TPanel;
    Label1: TLabel;
    Pnl_Menu: TPanel;
    Pnl_Logo: TPanel;
    SpeedButton1: TSpeedButton;
    Pnl_SubMenu: TPanel;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    ListaFormulario: TDictionary<String, TForm>;
    ListaOpcaoMenuModulo: TDictionary<String, IOpcaoMenu>;
    ViewAtual: TForm;
    procedure MostrarView(view: TForm);
    procedure AplicarEstilo;
    procedure ConectarBancoLocal;
    procedure ExecutarPrograma(PNomeBpl: String);
    procedure CriarMenuModulo;
    //
  public
    { Public declarations }
    procedure ClickModulo(Sender : TObject);

  end;

var
  View_Main: TView_Main;
  ConexaoSQLLite: TConexaoSQLLite;

implementation

{$R *.dfm}


uses ViewBpl.lib;

{ TView_Main }

procedure TView_Main.AplicarEstilo;
begin

  Self.Font.Name := _NOME_FONT;
  Self.Font.Size := _FONT_H3;

{$REGION 'Configuracao Panels'}
  Pnl_Top.Caption := '';
  Pnl_BackGround.Caption := '';
  Pnl_MenuModulo.Caption := '';
  Pnl_View.Caption := '';
  Pnl_Logo.Caption := '';
  Pnl_Menu.Caption := '';

  Pnl_Top.BevelOuter := bvNone;
  Pnl_BackGround.BevelOuter := bvNone;
  Pnl_MenuModulo.BevelOuter := bvNone;
  Pnl_View.BevelOuter := bvNone;
  Pnl_Logo.BevelOuter := bvNone;
  Pnl_Menu.BevelOuter := bvNone;

  Pnl_Top.ParentBackground := false;
  Pnl_BackGround.ParentBackground := false;
  Pnl_MenuModulo.ParentBackground := false;
  Pnl_View.ParentBackground := false;
  Pnl_Logo.ParentBackground := false;
  Pnl_Menu.ParentBackground := false;

  Pnl_Top.ParentColor := false;
  Pnl_BackGround.ParentColor := false;
  Pnl_MenuModulo.ParentColor := false;
  Pnl_View.ParentColor := false;
  Pnl_Logo.ParentColor := false;
  Pnl_Menu.ParentColor := false;

  Pnl_Top.Color := _COR_HEADER;
  Pnl_MenuModulo.Color := _COR_MENU;
  Pnl_BackGround.Color := _COR_BACKGROUND;
  Pnl_View.Color := _COR_BACKGROUND;
  Pnl_Logo.Color := _COR_HEADER;
  Pnl_Menu.Color := _COR_HEADER;

{$ENDREGION}
  Self.Caption := 'ErpNFe Plus Vers?o 1.00 - Compila??o 1.001 - Dt.Ultima Compila??o: 15/04/2021';
end;

procedure TView_Main.ClickModulo(Sender: TObject);
begin
  ShowMessage(TComponent(Sender).Name);
end;

procedure TView_Main.ConectarBancoLocal;
begin
  ConexaoSQLLite.FDconexao.Connected := true;
end;

procedure TView_Main.CriarMenuModulo;
begin
  Try
    ListaOpcaoMenuModulo.Add('1', TOpcaoMenu.New(Pnl_MenuModulo,'1').OnClick(ClickModulo));
    ListaOpcaoMenuModulo.Add('2', TOpcaoMenu.New(Pnl_MenuModulo,'2').OnClick(ClickModulo));
    ListaOpcaoMenuModulo.Add('3', TOpcaoMenu.New(Pnl_MenuModulo,'3').OnClick(ClickModulo));
  Finally
  End;
end;

procedure TView_Main.ExecutarPrograma(PNomeBpl: String);
var
  Classe: TFormClass;
  LView: TForm;
begin

  LView := nil;
  ListaFormulario.TryGetValue(PNomeBpl, LView);

  if Assigned(LView) then
  begin
    if LView.Caption = ViewAtual.Caption then
      Exit;
    MostrarView(LView);
    Exit
  end;
  Classe := TViewBpl.ObterClasseViewBpl(PNomeBpl);
  if Classe <> Nil then
  begin
    LView := Classe.Create(nil);
    LView.Caption := PNomeBpl;
    ViewAtual := LView;
    ListaFormulario.Add(PNomeBpl, LView);
    MostrarView(LView);
  end;
end;

procedure TView_Main.FormCreate(Sender: TObject);
begin
  AplicarEstilo;
  DM_Container := TDM_Container.Create(Application);
  ListaFormulario := TDictionary<String, TForm>.Create;
  ListaOpcaoMenuModulo := TDictionary<String, IOpcaoMenu>.Create;
  ConectarBancoLocal;
  CriarMenuModulo;
end;

procedure TView_Main.FormDestroy(Sender: TObject);
begin
  ListaFormulario.Free;
  ListaOpcaoMenuModulo.Free;
end;

procedure TView_Main.FormResize(Sender: TObject);
begin
  AplicarEstilo;
end;

procedure TView_Main.MostrarView(view: TForm);
begin
  Winapi.Windows.SetParent(view.Handle, Pnl_View.Handle);
  view.WindowState := wsMaximized;
  view.BorderStyle := bsNone;
  view.Align := alClient;
  view.Show;
  Pnl_View.Update;
  view.SetFocus;
end;

initialization
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  ConexaoSQLLite := TConexaoSQLLite.Create(Application);

end.
