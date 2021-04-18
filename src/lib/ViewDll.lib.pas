unit ViewDll.lib;

interface

uses
  Vcl.Forms, System.SysUtils, Winapi.Windows;

Type
  TViewDll = class
    class function ObterClasseView(const pNomeDll: String): TFormClass;
  end;

implementation

{ TDllView }

{ TViewDll }

class function TViewDll.ObterClasseView(const pNomeDll: String): TFormClass;

var
  MinhaPackage: HModule;
  FuncaoExecutar: function(value: String): TFormClass;
  ArquivoDll: String;
begin
  result := nil;
  ArquivoDll := ExtractFilePath(ParamStr(0)) + 'dll\'+pNomeDll;
  MinhaPackage := LoadLibrary(PWideChar(ArquivoDll));

  if MinhaPackage <> 0 then
  begin
    @FuncaoExecutar := GetProcAddress(MinhaPackage, 'ObterFormClass');
    if Assigned(FuncaoExecutar) then
    begin
      result := FuncaoExecutar(pNomeDll);
    end
  end;

end;

end.
