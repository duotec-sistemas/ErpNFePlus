unit Usuario.view.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Router4d.interfaces;

type
  TView_Usuario = class(TForm,iRouter4DComponent)
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
  View_Usuario: TView_Usuario;

implementation

{$R *.dfm}

{ TView_Usuario }

function TView_Usuario.Render: TForm;
begin
  result := Self;
end;

procedure TView_Usuario.UnRender;
begin

end;

end.
