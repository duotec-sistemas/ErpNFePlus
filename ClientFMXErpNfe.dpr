program ClientFMXErpNfe;

uses
  System.StartUpCopy,
  FMX.Forms,
  Main.viewfmx.client.erpnfe in 'src\view.fmx\Main.viewfmx.client.erpnfe.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
