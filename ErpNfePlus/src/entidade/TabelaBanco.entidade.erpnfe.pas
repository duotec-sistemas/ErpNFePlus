unit TabelaBanco.entidade.erpnfe;

interface

uses CamposTabela.entidade.erpnfe, System.Generics.Collections, REST.Json.Types,   REST.JSon,

  Pai.entidade.erpnfe;

Type

  TTabelaEntidade = class(TPaiEntidade)
  private
    [JSONMarshalledAttribute(False)]
    FListaCamposTabela: TObjectList<TcamposTabelaEntidade> ;

    FNome_Tabela: String;
    FDescricao_Tabela: String;
    FNome_Entidade: String;
    FAlias_Tabela: String;
    FCampos: TArray<TcamposTabelaEntidade>;

    procedure SetAliasTabela(const Value: String);
    procedure SetDescricaoTabela(const Value: String);
    procedure SetNomeEntidade(const Value: String);
    procedure SetNomeTabela(const Value: String);

    procedure LimparArrayCamposTabela;
    
  public

    constructor Create;
    destructor Destroy; override;

    property NomeTabela: String read FNome_Tabela write SetNomeTabela;
    property NomeEntidade: String read FNome_Entidade write SetNomeEntidade;
    property DescricaoTabela: String read FDescricao_Tabela write SetDescricaoTabela;
    property AliasTabela: String read FAlias_Tabela write SetAliasTabela;

    function ToStringJson: String; override;

    function AdicionarCamposTabela(CamposTabelaEntidade: TcamposTabelaEntidade): Integer;
    function RemoverCamposTabela(Posicao: Integer): Integer;

  end;

implementation

{ TTabelaEntidade }

function TTabelaEntidade.AdicionarCamposTabela(CamposTabelaEntidade: TcamposTabelaEntidade): Integer;
begin
  result := FListaCamposTabela.Add(CamposTabelaEntidade);
end;

constructor TTabelaEntidade.Create;
begin
  FListaCamposTabela := TObjectList<TcamposTabelaEntidade>.Create;
  FCampos := nil;
end;

destructor TTabelaEntidade.Destroy;
begin
  FListaCamposTabela.Free;
  LimparArrayCamposTabela;
  inherited;
end;

procedure TTabelaEntidade.LimparArrayCamposTabela;
var
  i: Integer;
begin
  if FCampos <> nil then
  begin
    for i := 0 To High(FCampos) do
      FCampos[i].Free;
  end;
end;

function TTabelaEntidade.RemoverCamposTabela(Posicao: Integer): Integer;
begin
  result := Posicao;

end;

procedure TTabelaEntidade.SetAliasTabela(const Value: String);
begin
  FAlias_Tabela := Value;
end;

procedure TTabelaEntidade.SetDescricaoTabela(const Value: String);
begin
  FDescricao_Tabela := Value;
end;

procedure TTabelaEntidade.SetNomeEntidade(const Value: String);
begin
  FNome_Entidade := Value;
end;

procedure TTabelaEntidade.SetNomeTabela(const Value: String);
begin
  FNome_Tabela := Value;
end;

function TTabelaEntidade.ToStringJson: String;
var
  I: Integer;
begin
  SetLength(FCampos,FListaCamposTabela.Count);
  for I := 0 to FListaCamposTabela.Count-1 do
  begin
    FCampos[i] := FListaCamposTabela.Items[i];
  end;
  result := TJson.ObjectToJsonString(self,[joIndentCaseLower]);
  Finalize(FCampos);
end;

end.
