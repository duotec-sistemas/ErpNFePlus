unit CadDominioBanco.view.client.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  TemplateCadastro.view.client.erpnfe,
  Vcl.WinXPanels, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TView_CadDominio = class(TView_TemplateCadastro)
    Panel2: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
function GetClassForm : TFormClass;
begin
  result := TView_CadDominio;
end;

exports
  GetClassForm;

{$R *.dfm}



end.
