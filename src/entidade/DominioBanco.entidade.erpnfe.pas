unit DominioBanco.entidade.erpnfe;

interface

uses  Pai.entidade.erpnfe,REST.Json.Types,   REST.JSon;


Type

  TTipoVariavel = (tvVarChar, tvInteger, tvDate, tvTimeStamp, tvNumeric, tvBigInt, tvBoolean, tvBlobTexto, tvBlobBinario, tvFloat);
  TDominioBancoEntidade = class(TPaiEntidade)
  private
    // Campos do Json
    FTipo_Campo: Integer;
    FNome_Dominio: String;
    FQtd_Casa_Decimal: Integer;
    FTamanho: Integer;

    // Campos que não serao gerados para o json
    [JSONMarshalledAttribute(False)]
    FTipoCampo: TTipoVariavel;

    procedure SetNome_Dominio(const Value: String);
    procedure SetQtd_Casa_Decimal(const Value: Integer);
    procedure SetTamanho(const Value: Integer);
    procedure SetTipoCampo(const Value: TTipoVariavel);
    function GetTipoCampo: TTipoVariavel;
  public

    constructor Create;
    destructor Destroy; override;

    property NomeDominio: String read FNome_Dominio write SetNome_Dominio;
    property TipoCampo: TTipoVariavel read GetTipoCampo write SetTipoCampo;
    property Tamanho: Integer read FTamanho write SetTamanho;
    property QtdCasaDecimal: Integer read FQtd_Casa_Decimal write SetQtd_Casa_Decimal;

  end;

implementation

{ TDominioBancoEntidade }


{ TDominioBancoEntidade }

constructor TDominioBancoEntidade.Create;
begin

end;

destructor TDominioBancoEntidade.Destroy;
begin

  inherited;
end;

function TDominioBancoEntidade.GetTipoCampo: TTipoVariavel;
begin
  FTipoCampo := TTipoVariavel(FTipo_Campo);
end;

procedure TDominioBancoEntidade.SetNome_Dominio(const Value: String);
begin
  FNome_Dominio := Value;
end;

procedure TDominioBancoEntidade.SetQtd_Casa_Decimal(const Value: Integer);
begin
  FQtd_Casa_Decimal := Value;
end;

procedure TDominioBancoEntidade.SetTamanho(const Value: Integer);
begin
  FTamanho := Value;
end;

procedure TDominioBancoEntidade.SetTipoCampo(const Value: TTipoVariavel);
Var
  OrdValue : Integer;
begin
  FTipoCampo := Value;
  FTipo_Campo := Ord(Value);
end;


end.
