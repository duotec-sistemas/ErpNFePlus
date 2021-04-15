unit CamposTabela.entidade.erpnfe;

interface

uses Pai.entidade.erpnfe;

Type
  TCamposTabelaEntidade = class(TPaiEntidade)
  private
    FNomeAtributo: String;
    FComentario: String;
    FNomeCampo: String;
    FIdTbl0002: String;
    FIdTbl0003: String;
    procedure SetComentario(const Value: String);
    procedure SetIdTbl0002(const Value: String);
    procedure SetIdTbl0003(const Value: String);
    procedure SetNomeAtributo(const Value: String);
    procedure SetNomeCampo(const Value: String);

  public
    constructor Create;
    destructor Destroy; override;

    property Comentario: String read FComentario write SetComentario;
    property IdTbl0002: String read FIdTbl0002 write SetIdTbl0002;
    property IdTbl0003: String read FIdTbl0003 write SetIdTbl0003;
    property NomeAtributo: String read FNomeAtributo write SetNomeAtributo;
    property NomeCampo: String read FNomeCampo write SetNomeCampo;
  public

  end;

implementation

{ TCamposTabelaEntidade }

{ TCamposTabelaEntidade }

constructor TCamposTabelaEntidade.Create;
begin

end;

destructor TCamposTabelaEntidade.Destroy;
begin

  inherited;
end;

procedure TCamposTabelaEntidade.SetComentario(const Value: String);
begin
  FComentario := Value;
end;


procedure TCamposTabelaEntidade.SetIdTbl0002(const Value: String);
begin
  FIdTbl0002 := Value;
end;

procedure TCamposTabelaEntidade.SetIdTbl0003(const Value: String);
begin
  FIdTbl0003 := Value;
end;

procedure TCamposTabelaEntidade.SetNomeAtributo(const Value: String);
begin
  FNomeAtributo := Value;
end;

procedure TCamposTabelaEntidade.SetNomeCampo(const Value: String);
begin
  FNomeCampo := Value;
end;

end.
