unit Principal.view.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
    Router4d.interfaces;

type
  TView_Principal = class(TForm,iRouter4DComponent)
    Panel1: TPanel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UnRender;
    Function Render : TForm;
  end;

var
  View_Principal: TView_Principal;

implementation

{$R *.dfm}

{ TView_Principal }

function TView_Principal.Render: TForm;
begin
  result := self;
end;

procedure TView_Principal.UnRender;
begin

end;

end.
