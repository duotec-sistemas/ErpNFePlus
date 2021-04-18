unit Main.view.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, EstiloAplicacao.lib.erpnfe,
  Vcl.StdCtrls, Vcl.Buttons,
  System.Generics.Collections,
  Container.lib.erpnfe;

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
    Button1: TButton;
    Pnl_SubMenu: TPanel;
    Button2: TButton;
    Button3: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    ListaFormulario: TDictionary<String, TForm>;
    ViewAtual: TForm;
    procedure MostrarView(view: TForm);
    procedure AplicarEstilo;
    procedure CarregarDll(pNomeDll: String);
    procedure ExecutarPrograma(pNomeDll  : String);
  public
    { Public declarations }

  end;

var
  View_Main: TView_Main;

implementation

{$R *.dfm}

uses ViewDll.lib;

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
  Self.Caption := 'ErpNFe Plus Versão 1.00 - Compilação 1.001 - Dt.Ultima Compilação: 15/04/2021';
end;

procedure TView_Main.Button1Click(Sender: TObject);
begin
  ExecutarPrograma('aCadDominioBanco.dll');
end;

procedure TView_Main.CarregarDll(pNomeDll: String);
{var
  MinhaPackage: HModule;
  FuncaoExecutar: function(value: String): IForm;
  view: TForm;
  ClasseView: IForm;
  Classe: TFormClass;
  ArquivoDll: String;  }
begin

 { view := nil;
  ListaFormulario.TryGetValue(pNomeDll, view);

  if Assigned(view) then
  begin
    if view.Caption = ViewAtual.Caption then
      Exit;
    MostrarView(view);
    Exit
  end;
  ArquivoDll := ExtractFilePath(ParamStr(0)) + pNomeDll;
  MinhaPackage := LoadLibrary(PWideChar(ArquivoDll));

  if MinhaPackage <> 0 then
  begin
    @FuncaoExecutar := GetProcAddress(MinhaPackage, 'ObterInstanciaView');
    if Assigned(FuncaoExecutar) then
    begin
      ClasseView := FuncaoExecutar(pNomeDll);
      Classe := TFormClass(GetClass('TView_CadDominio'));

      Classe := ClasseView.Getform;
      view := Classe.Create(nil);

      view.Caption := pNomeDll;
      ViewAtual := view;
      ListaFormulario.Add(pNomeDll, view);
      MostrarView(view);
    end
  end;  }
end;

procedure TView_Main.ExecutarPrograma(pNomeDll: String);
var
  Classe: TFormClass;
  LView  : TForm;
begin

  LView := nil;
  ListaFormulario.TryGetValue(pNomeDll, LView);

  if Assigned(LView) then
  begin
    if LView.Caption = ViewAtual.Caption then
      Exit;
    MostrarView(LView);
    Exit
  end;
  Classe := TViewDll.ObterClasseView(pNomeDll);
  if Classe <> Nil  then
  begin
      LView := Classe.Create(nil);
      LView.Caption := pNomeDll;
      ViewAtual := LView;
      ListaFormulario.Add(pNomeDll, LView);
      MostrarView(LView);
  end;
end;

procedure TView_Main.FormCreate(Sender: TObject);
begin
  AplicarEstilo;
  DM_Container := TDM_Container.Create(Application);
  ListaFormulario := TDictionary<String, TForm>.Create;
end;

procedure TView_Main.FormDestroy(Sender: TObject);
begin
  ListaFormulario.Free;
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
  view.Show;
end;

initialization

ReportMemoryLeaksOnShutdown := true;

end.
