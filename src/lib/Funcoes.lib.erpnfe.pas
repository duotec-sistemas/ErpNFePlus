unit Funcoes.lib.erpnfe;

interface

uses

  Vcl.Controls, Winapi.Windows, System.Types, Winapi.Messages;

Type
  TFuncoes = class
    class procedure MakeRounded(Control: TWinControl);
  end;

implementation


{ TFuncoes }

class procedure TFuncoes.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    Rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
    Perform(EM_GETRECT, 0, lParam(@R));
    InflateRect(R, -5, -5);
    Perform(EM_SETRECTNP, 0, lParam(@R));
    SetWindowRgn(Handle, Rgn, True);
    Invalidate;
  end;
end;

end.
