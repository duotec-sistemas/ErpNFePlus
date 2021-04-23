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
  PDVCheckout.client.erpnfe in 'src\view\PDVCheckout.client.erpnfe.pas' {Form1},
  Main1PDV.view.client.erpnfe in 'src\view\Main1PDV.view.client.erpnfe.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TView_PDV, View_PDV);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
