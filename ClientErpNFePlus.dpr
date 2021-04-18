program ClientErpNFePlus;

uses
  Vcl.Forms,
  Main.view.client.erpnfe in 'src\view\Main.view.client.erpnfe.pas' {View_Main},
  EstiloAplicacao.lib.erpnfe in 'src\lib\EstiloAplicacao.lib.erpnfe.pas',
  Container.lib.erpnfe in 'src\lib\Container.lib.erpnfe.pas' {DM_Container: TDataModule},
  Principal.view.client.erpnfe in 'src\view\Principal.view.client.erpnfe.pas' {View_Principal},
  Usuario.view.client.erpnfe in 'src\view\Usuario.view.client.erpnfe.pas' {View_Usuario},
  InterfaceTeste in 'Dll\CadDominioBanco\InterfaceTeste.pas',
  CarregarDll in 'src\lib\CarregarDll.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TView_Main, View_Main);
  Application.CreateForm(TView_Principal, View_Principal);
  Application.CreateForm(TView_Usuario, View_Usuario);
  Application.Run;
end.
