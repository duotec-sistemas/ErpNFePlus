unit TemplateCadastro.view.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Template.view.client.erpnfe,
  Vcl.WinXPanels, Vcl.ExtCtrls;

type
  TView_TemplateCadastro = class(TView_Template)
    CardPanel1: TCardPanel;
    Crd_Pesquisa: TCard;
    Crd_Dados: TCard;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  View_TemplateCadastro: TView_TemplateCadastro;

implementation

{$R *.dfm}

end.
