unit ViewBpl.lib;

interface

uses
  Vcl.Forms, System.SysUtils, Winapi.Windows;

Type
  TViewBpl = class
    class function ObterClasseViewBpl(const pNomeBpl: String): TFormClass;
  end;

implementation

{ TDllView }


class function TViewBpl.ObterClasseViewBpl(const pNomeBpl: String): TFormClass;

var
  MinhaPackage: HModule;
  FuncaoExecutar: function(value: String): TFormClass;
  ArquivoDll: String;
begin
  result := nil;

  ArquivoDll := ExtractFilePath(ParamStr(0)) + 'bpl\'+pNomeBpl;

  MinhaPackage := LoadLibrary(PWideChar(ArquivoDll));

  if MinhaPackage <> 0 then
  begin
    @FuncaoExecutar := GetProcAddress(MinhaPackage, 'GetFormClass');
    if Assigned(FuncaoExecutar) then
    begin
      result := FuncaoExecutar(pNomeBpl);
    end
  end;

end;


end.
