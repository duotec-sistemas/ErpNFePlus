unit PDV.controller.servidor.erpnfe;

interface

uses
  PDV.model.client.erpnfe;

Type
  IControllerPDV = interface
    ['{CD8CC5BD-595A-4552-BC8F-63CF5D62DFF4}']

    function model: TPdvModel;
  end;

  TcontrollerPDV = class(TInterfacedObject, IControllerPDV)
  private
    FModel: TPdvModel;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: IControllerPDV;

    function model: TPdvModel;
  end;

implementation

{ TcontrollerPDV }

constructor TcontrollerPDV.Create;
begin
  FModel := TPDVModel.Create(nil);
end;

destructor TcontrollerPDV.Destroy;
begin

  if Assigned(FModel) then
    FModel.Free;

  inherited;
end;

function TcontrollerPDV.model: TPdvModel;
begin
  result := FModel;
end;

class function TcontrollerPDV.New: IControllerPDV;
begin
  result := self.Create;
end;

end.
