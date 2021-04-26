program PDVErpNfe;

uses
  Vcl.Forms,
  MainPdv.view.client.erpnfe in 'src\view\MainPdv.view.client.erpnfe.pas' {View_PDV},
  PDV.controller.servidor.erpnfe in 'src\controller\PDV\PDV.controller.servidor.erpnfe.pas',
  PDV.model.client.erpnfe in 'src\Model\PDV.model.client.erpnfe.pas' {PdvModel: TDataModule},
  Funcoes.lib.erpnfe in 'src\lib\Funcoes.lib.erpnfe.pas',
  Edit.classhelper in 'src\class_helper\Edit.classhelper.pas',
  dao.servidor.erpnfe in 'src\dao\heranca\dao.servidor.erpnfe.pas' {ServidorDao: TDataModule},
  OrcamentoDuotec.dao.servidor.erpnfe in 'src\dao\OrcamentoDuotec.dao.servidor.erpnfe.pas' {OrcamentoDao: TDataModule},
  PDVConsultaOrcamento.view.client.erpnfe in 'src\view\PDVConsultaOrcamento.view.client.erpnfe.pas' {View_ConsultaOrcamento},
  Container.lib.erpnfe in 'src\lib\Container.lib.erpnfe.pas' {DM_Container: TDataModule},
  PDVCheckout.client.erpnfe in 'src\view\PDVCheckout.client.erpnfe.pas' {View_CheckOut},
  Main1PDV.view.client.erpnfe in 'src\view\Main1PDV.view.client.erpnfe.pas' {View_PDVAzul},
  PDVAlterarVendedor.client.erpnfe in 'src\view\PDVAlterarVendedor.client.erpnfe.pas' {View_AlterarVendedor},
  PDVConfiguracaoDispositivo.view.client.erpnfe in 'src\view\PDVConfiguracaoDispositivo.view.client.erpnfe.pas' {View_ConfiguracaoDispositivo},
  PDVAlterarQuantidade.client.erpnfe in 'src\view\PDVAlterarQuantidade.client.erpnfe.pas' {View_AlterarQuantidade},
  PDVConfiguracaoUsuario.client.erpnfe in 'src\view\PDVConfiguracaoUsuario.client.erpnfe.pas' {View_ConfiguracaoUsuario},
  Estilo.lib in 'src\lib\Estilo.lib.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := true;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TView_PDVAzul, View_PDVAzul);
  Application.Run;
end.
