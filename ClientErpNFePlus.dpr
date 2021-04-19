program ClientErpNFePlus;

uses
  Vcl.Forms,
  Main.view.client.erpnfe in 'src\view\Main.view.client.erpnfe.pas' {View_Main},
  EstiloAplicacao.lib.erpnfe in 'src\lib\EstiloAplicacao.lib.erpnfe.pas',
  Container.lib.erpnfe in 'src\lib\Container.lib.erpnfe.pas' {DM_Container: TDataModule},
  Principal.view.client.erpnfe in 'src\view\Principal.view.client.erpnfe.pas' {View_Principal},
  ViewDll.lib in 'src\lib\ViewDll.lib.pas',
  Conexao.SQLite.dao.clent.erpnfe in 'src\dao\Conexao.SQLite.dao.clent.erpnfe.pas' {ConexaoSQLLite: TDataModule},
  Template.view.client.erpnfe in 'src\view\Template.view.client.erpnfe.pas' {View_Template},
  ViewBpl.lib in 'src\lib\ViewBpl.lib.pas',
  OpcaoMenu.lib.erpnfe in 'src\lib\visuais\OpcaoMenu.lib.erpnfe.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TView_Main, View_Main);
  Application.Run;
end.
