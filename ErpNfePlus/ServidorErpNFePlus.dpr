program ServidorErpNFePlus;

uses
  Vcl.Forms,
  DominioBanco.controller.servidor.erpnfe in 'src\controller\DominioBanco.controller.servidor.erpnfe.pas',
  TabelaBanco.controller.servidor.erpnfe in 'src\controller\TabelaBanco.controller.servidor.erpnfe.pas',
  dao.servidor.erpnfe in 'src\dao\heranca\dao.servidor.erpnfe.pas' {ServidorDao: TDataModule},
  DominioBanco.dao.servidor.erpnfe in 'src\dao\DominioBanco.dao.servidor.erpnfe.pas' {DominioBancoDao: TDataModule},
  TabelaBanco.dao.servidor.erpnfe in 'src\dao\TabelaBanco.dao.servidor.erpnfe.pas' {TabelaBancoDao: TDataModule},
  CamposTabela.entidade.erpnfe in 'src\entidade\CamposTabela.entidade.erpnfe.pas',
  DominioBanco.entidade.erpnfe in 'src\entidade\DominioBanco.entidade.erpnfe.pas',
  TabelaBanco.entidade.erpnfe in 'src\entidade\TabelaBanco.entidade.erpnfe.pas',
  Comum.lib.erpnfe in 'src\lib\Comum.lib.erpnfe.pas',
  Types.lib.erpnfe in 'src\lib\Types.lib.erpnfe.pas',
  DominioBanco.teste.erpnfe in 'src\testes\DominioBanco.teste.erpnfe.pas',
  TesteEntidade.view.erpnfe in 'src\testes\TesteEntidade.view.erpnfe.pas' {Form3},
  Main.view.servidor.erpnfe in 'src\view\Main.view.servidor.erpnfe.pas' {Frm_Main},
  umdclasse in 'src\view\umdclasse.pas' {DM_Classe: TDataModule},
  Pai.entidade.erpnfe in 'src\entidade\heranca\Pai.entidade.erpnfe.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Main, Frm_Main);
  Application.Run;
end.
