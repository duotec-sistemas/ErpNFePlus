unit Edit.classhelper;

interface

uses
  Vcl.StdCtrls, Funcoes.lib.erpnfe;


Type
  TEditHelper = class helper for TEdit
      procedure MakeRounded;
  end;



implementation

{ TEditHelper }

procedure TEditHelper.MakeRounded;
begin
  TFuncoes.MakeRounded(Self);
end;

end.
