unit Pai.entidade.erpnfe;

interface

uses
  REST.JSon;

Type

  IPaiEntidade = interface
    ['{9EC977E1-FC5B-415B-8AB0-B02118867A07}']

    function ToStringJson: String;

  end;

  TPaiEntidade = class(TInterfacedObject, IPaiEntidade)
  private

    FDt_Hr_Ins: TDateTime;

    FDt_Hr_Exc: TDateTime;

    FDt_Hr_Alt: TDateTime;

    FUsr_Ins: String;

    FUsr_Exc: String;

    FUsr_Alt: String;

    FId: String;

    FExcluido: Integer;

    procedure SetDtHrAlt(const Value: TDateTime);
    procedure SetDtHrExc(const Value: TDateTime);
    procedure SetDtHrIns(const Value: TDateTime);
    procedure SetExcluido(const Value: Integer);
    procedure SetId(const Value: String);
    procedure SetUsrAlt(const Value: String);
    procedure SetUsrExc(const Value: String);
    procedure SetUsrIns(const Value: String);

  public
    class Function New: IPaiEntidade;
    constructor Create;
    destructor Destroy; override;
    function Ref: IPaiEntidade;

    function ToStringJson: String; virtual;

    property Id: String read FId write SetId;
    property DtHrIns: TDateTime read FDt_Hr_Ins;
    property DtHrAlt: TDateTime read FDt_Hr_Alt;
    property UsrIns: String read FUsr_Ins write SetUsrIns;
    property UsrAlt: String read FUsr_Alt write SetUsrAlt;
    property Excluido: Integer read FExcluido;
    property DtHrExc: TDateTime read FDt_Hr_Exc;
    property UsrExc: String read FUsr_Exc;
  end;

implementation

{ TPaiEntidade }

constructor TPaiEntidade.Create;
begin

end;

destructor TPaiEntidade.Destroy;
begin

end;

class function TPaiEntidade.New: IPaiEntidade;
begin

end;

function TPaiEntidade.Ref: IPaiEntidade;
begin
  result := self;
end;

function TPaiEntidade.ToStringJson: String;
begin
  result := TJson.ObjectToJsonString(self,[joIndentCaseLower]);  //  essa opcao transforma todos os campos em caixa baixa
end;

procedure TPaiEntidade.SetDtHrAlt(const Value: TDateTime);
begin
  FDt_Hr_Alt := Value;
end;

procedure TPaiEntidade.SetDtHrExc(const Value: TDateTime);
begin
  FDt_Hr_Exc := Value;
end;

procedure TPaiEntidade.SetDtHrIns(const Value: TDateTime);
begin
  FDt_Hr_Ins := Value;
end;

procedure TPaiEntidade.SetExcluido(const Value: Integer);
begin
  FExcluido := Value;
end;

procedure TPaiEntidade.SetUsrExc(const Value: String);
begin
  FUsr_Exc := Value;
end;

procedure TPaiEntidade.SetUsrIns(const Value: String);
begin
  FUsr_Ins := Value;
end;

procedure TPaiEntidade.SetUsrAlt(const Value: String);
begin
  FUsr_Alt := Value;
end;


procedure TPaiEntidade.SetId(const Value: String);
begin
  FId := Value;
end;

end.
