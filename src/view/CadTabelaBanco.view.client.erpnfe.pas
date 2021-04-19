unit CadTabelaBanco.view.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls,
  Template.view.client.erpnfe,
  TemplateCadastro.view.client.erpnfe, Vcl.WinXPanels, Vcl.ExtCtrls;

type
  TView_CadTabelaBanco = class(TView_TemplateCadastro)
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

function GetClassForm: TFormClass;
begin
  result := TView_CadTabelaBanco;
end;

exports
  GetClassForm;

{$R *.dfm}








end.
