unit Main.viewfmx.client.erpnfe;

interface

uses
  System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, System.Rtti, FMX.Grid.Style, FMX.Grid, FMX.Controls.Presentation,
  FMX.ScrollBox, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle5: TRectangle;
    Rectangle3: TRectangle;
    Grid1: TGrid;
    Column1: TColumn;
    Column2: TColumn;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

uses
  System.SysUtils;

{$R *.fmx}


procedure TForm1.Button1Click(Sender: TObject);
Var
  st : TStringList;
  Btn : TButton;

begin
  st := TStringList.Create;
  st.Free;

  Btn := TButton.Create(nil);
  FreeAndNil(Btn);



end;

initialization
  ReportMemoryLeaksOnShutdown := true;

end.
