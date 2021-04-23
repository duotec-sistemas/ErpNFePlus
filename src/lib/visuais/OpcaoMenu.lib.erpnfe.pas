unit OpcaoMenu.lib.erpnfe;

interface

uses
  Vcl.ExtCtrls, Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.Graphics, Vcl.Forms;

Type

  IOpcaoMenu = interface
    ['{ED24DE5E-4848-496F-BB20-153A1BFBC220}']
    Function NomeModulo : String;
    Function OnClick(const Value: TNotifyEvent): IOpcaoMenu;
  end;

  TOpcaoMenu = class(TInterfacedObject, IOpcaoMenu)
  private
    FPnlOpcao, FPnlTituloOpcao, FPnlBarra: TPanel;
    FSpeedButton: TSpeedButton;
    FNomeModulo: String;
    FOnClick: TNotifyEvent;

    procedure ConfigurarEvento;
  protected
  public
    constructor Create(PAOwner: TWinControl; PNomeModulo : String);
    destructor Destroy; override;
    class function New(PAOwner: TWinControl; PNomeModulo : String): IOpcaoMenu;

    Function NomeModulo : String;
    Function OnClick(const PValue: TNotifyEvent): IOpcaoMenu;

    procedure EnterPanel (Sender : TObject);
    procedure ExitPanel(Sender : TObject);

  end;

implementation

{ TOpcaoMenu }
procedure TOpcaoMenu.ConfigurarEvento;
begin
  FSpeedButton.OnClick := FOnClick;
  FPnlTituloOpcao.OnClick := FOnClick;
end;

constructor TOpcaoMenu.Create(PAOwner: TWinControl; PNomeModulo : String);
begin
  FNomeModulo := PNomeModulo;
  //
  //
  FPnlOpcao := TPanel.Create(nil);
  FPnlOpcao.Height := 32;
  FPnlOpcao.ParentBackground := False;
  FPnlOpcao.Align := alTop;
  FPnlOpcao.ParentColor := False;
  FPnlOpcao.Color := clWhite;
  FPnlOpcao.Caption := '';
  FPnlOpcao.Parent := PAOwner;
  FPnlOpcao.BevelOuter := bvNone;
  FPnlOpcao.AlignWithMargins := true;
  FPnlOpcao.Margins.Bottom := 0;
  FPnlOpcao.Margins.Left := 0;
  FPnlOpcao.Margins.Right := 0;
  FPnlOpcao.Margins.Top := 2;


  FPnlOpcao.Name := 'FPnlOpcao_'+PNomeModulo;
  FPnlOpcao.OnMouseEnter := EnterPanel;
  FPnlOpcao.OnMouseLeave := ExitPanel;
  //
  FPnlBarra := TPanel.Create(nil);
  FPnlBarra.Height := FPnlOpcao.Height;
  FPnlBarra.ParentBackground := False;
  FPnlBarra.ParentColor := False;
  FPnlBarra.Width:= 5;
  FPnlBarra.Align := alLeft;
  FPnlBarra.Color := clBlue;
  FPnlBarra.Caption := '';
  FPnlBarra.BevelOuter := bvNone;
  FPnlBarra.Name := 'FPnlBarra_'+PNomeModulo;
  FPnlBarra.Parent := FPnlOpcao;
FPnlBarra.Visible := false;
  //
  FPnlTituloOpcao := TPanel.Create(nil);
  FPnlTituloOpcao.Height := FPnlOpcao.Height;
  FPnlTituloOpcao.ParentBackground := False;
  FPnlTituloOpcao.Align := alClient;
  FPnlTituloOpcao.ParentColor := False;
  FPnlTituloOpcao.Color := clWhite;
  FPnlTituloOpcao.Caption := '';
  FPnlTituloOpcao.Parent := FPnlOpcao;
  FPnlTituloOpcao.BevelOuter := bvNone;
  FPnlTituloOpcao.Name := 'FPnlTituloOpcao_'+PNomeModulo;
  FPnlTituloOpcao.OnMouseEnter := EnterPanel;
  FPnlTituloOpcao.OnMouseLeave := ExitPanel;
  //
  // Speed Button
  FSpeedButton := TSpeedButton.Create(Application);
  FSpeedButton.Height := FPnlOpcao.Height;
  FSpeedButton.Width := FPnlOpcao.Height;
  FSpeedButton.Align := alLeft;
  FSpeedButton.Flat := true;
  FSpeedButton.Parent := FPnlTituloOpcao;
  //
end;

destructor TOpcaoMenu.Destroy;
begin
 inherited;
end;

procedure TOpcaoMenu.EnterPanel(Sender: TObject);
begin
  TPanel(Sender).Color := ClWhite;
  FPnlBarra.Visible := true;
end;

procedure TOpcaoMenu.ExitPanel(Sender: TObject);
begin
  TPanel(Sender).Color := ClWhite;
  FPnlBarra.Visible := false;
end;

function TOpcaoMenu.NomeModulo: String;
begin
  result := FNomeModulo;
end;

class function TOpcaoMenu.New(PAOwner: TWinControl; PNomeModulo : String): IOpcaoMenu;
begin
  result := Self.Create(PAOwner, PNomeModulo);
end;

function TOpcaoMenu.OnClick(const PValue: TNotifyEvent): IOpcaoMenu;
begin
  result := self;
  FOnClick := PValue;
  ConfigurarEvento;
end;

end.
