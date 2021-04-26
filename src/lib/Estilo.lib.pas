unit Estilo.lib;

interface

uses
  Vcl.Forms, Vcl.DBCtrls, System.Classes,JvBaseEdits,  Vcl.StdCtrls, cxButtons;

Type
  TEstilo = class
    class function FontSize(Pvalue: Integer): Integer;
    class procedure AplicarEstilo ( PForm : TForm);
  end;

implementation

{ TEstilo }
class procedure TEstilo.AplicarEstilo(PForm: TForm);
Var
  i : Integer;
begin
  for I := 0 to PForm.ComponentCount - 1 do
  begin
    if (PForm.Components[I] is TLabel) then
      TLabel(PForm.Components[I]).Font.Size := TEstilo.FontSize(TComponent(PForm.Components[I]).Tag)
    Else IF (PForm.Components[I] is TDBEdit) then
      TDBEdit(PForm.Components[I]).Font.Size := TEstilo.FontSize(TComponent(PForm.Components[I]).Tag)
    Else IF (PForm.Components[I] is TComboBox) then
      TComboBox(PForm.Components[I]).Font.Size := TEstilo.FontSize(TComponent(PForm.Components[I]).Tag)
    Else IF (PForm.Components[I] is TComboBox) then
      TComboBox(PForm.Components[I]).Font.Size := TEstilo.FontSize(TComponent(PForm.Components[I]).Tag)
    Else IF (PForm.Components[I] is TCxButton) then
      TCxButton(PForm.Components[I]).Font.Size := TEstilo.FontSize(TComponent(PForm.Components[I]).Tag)
    Else IF (PForm.Components[I] is TJvCalcEdit) then
      TJvCalcEdit(PForm.Components[I]).Font.Size := TEstilo.FontSize(TComponent(PForm.Components[I]).Tag);

  end;

end;

class function TEstilo.FontSize(Pvalue: Integer): Integer;
begin
  case Pvalue of
    1:
      result := 10;
    2:
      result := 11;
    3:
      result := 12;
    4:
      result := 14;
    5:
      result := 16;
    6:
      result := 18;
    7:
      result := 20;
    8:
      result := 22;
    9:
      result := 24;
    10:
      result := 28;
  end;
end;

end.
