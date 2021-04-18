unit CadDominioBanco.view.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  TemplateCadastro.view.client.erpnfe,
  Vcl.WinXPanels, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TView_CadDominio = class(TView_TemplateCadastro)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

function ObterFormClass(value: String) : TFormClass;
begin
  result := TView_CadDominio;
end;

exports
  ObterFormClass;

{$R *.dfm}


end.
