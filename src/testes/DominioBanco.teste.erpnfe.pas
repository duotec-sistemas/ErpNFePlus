unit DominioBanco.teste.erpnfe;

interface

uses
  System.SysUtils, REST.Client, REST.JSon, DominioBanco.entidade.erpnfe;

Type
  IDominioEntidadeTeste = Interface
    Function GetRetorno: String;
    Function GetDominio: IDominioEntidadeTeste;
    function GetDominioEspecifico(NomeChave: String): IDominioEntidadeTeste;
    Function GetDominioById: IDominioEntidadeTeste;
    Function PostDominio: IDominioEntidadeTeste;
    Function PutDominio: IDominioEntidadeTeste;
    Function DeleteDominio: IDominioEntidadeTeste;
  End;

  TDominioEntidadeTeste = class(TInterfacedObject, IDominioEntidadeTeste)
  Private
    FId: String;
    FUrlBase, FUsuario, FSenha: String;
    FRetorno: String;
    procedure SetId(const Value: String);
  public

    Constructor Create(UrlBase, Usuario, Senha: String);
    Destructor Destroy; override;
    Class Function New(UrlBase, Usuario, Senha: String): IDominioEntidadeTeste;

    Function GetRetorno: String;
    Function GetDominio: IDominioEntidadeTeste;
    function GetDominioEspecifico(NomeChave: String): IDominioEntidadeTeste;
    Function GetDominioById: IDominioEntidadeTeste;
    Function PostDominio: IDominioEntidadeTeste;
    Function PutDominio: IDominioEntidadeTeste;
    Function DeleteDominio: IDominioEntidadeTeste;

    property Id: String read FId write SetId;

  End;

implementation

uses RESTRequest4D, System.JSon;

{ TDominioEntidadeTeste }

constructor TDominioEntidadeTeste.Create(UrlBase, Usuario, Senha: String);
begin
  FUrlBase := UrlBase;
  FUsuario := Usuario;
  FSenha := Senha;
end;

function TDominioEntidadeTeste.DeleteDominio: IDominioEntidadeTeste;
Var
  LResponse: IResponse;
  JObj, JReg: TJsonObject;
  JArray: TJsonArray;
  s: String;
begin
  result := self;
  GetDominioEspecifico('nome_dominio=D_TESTE');
  if FId = '' then
    raise Exception.Create('Antes de executar um teste do delete, execute o teste do post');

  LResponse := TRequest.New
    .BaseURL(FUrlBase + '/DominioBanco/'+FId+'/MORONI/TESTANDO')
    .Accept('application/json')
    .Delete;

  FRetorno := LResponse.Content;
  if LResponse.StatusCode <>200 then
  begin
    s := 'Erro ao exeutar o método TDominioEntidadeTeste.DeleteDominio' + SlineBreak
      + 'Na Unit Dominio.Entidade.Teste'
      + 'StatusCode retornado = ' + LResponse.StatusCode.ToString
      + 'Base URL '+ FUrlBase + '/DominioBanco/'+FId;
    raise Exception.Create(s);
  end;

end;

destructor TDominioEntidadeTeste.Destroy;
begin

  inherited;
end;

function TDominioEntidadeTeste.GetDominio: IDominioEntidadeTeste;
Var
  LResponse: IResponse;
  JObj, JReg: TJsonObject;
  JArray: TJsonArray;
  s: String;
begin
  result := self;
 // FAzer o REquest
  LResponse := TRequest.New.BaseURL(FUrlBase + '/DominioBanco').Get;
  s := LResponse.Content;
  Try
    JObj := TJsonObject.ParseJSONValue(s) as TJsonObject;
    FRetorno := JObj.ToString;
    JObj.TryGetValue('data', JArray);
    JReg := TJsonObject(JArray.Items[0]);
    JReg.TryGetValue('id', FId);
    if LResponse.StatusCode <> 200 then
    begin
      s := 'Erro ao exeutar o método TDominioEntidadeTeste.GetDominio' + SlineBreak
        + 'Na Unit Dominio.Entidade.Teste'
        + 'StatusCode retornado = ' + LResponse.StatusCode.ToString;
      raise Exception.Create(s);
    end;
  Finally
    JObj.Free;
  End;
end;

function TDominioEntidadeTeste.GetDominioById: IDominioEntidadeTeste;
Var
  LResponse: IResponse;
  JObj, JReg: TJsonObject;
  JArray: TJsonArray;
  s: String;
begin
  result := self;

 // FAzer o REquest
  LResponse := TRequest.New.BaseURL(FUrlBase + '/DominioBanco/' + FId).Get;
  s := LResponse.Content;
  Try
    JObj := TJsonObject.ParseJSONValue(s) as TJsonObject;
    FRetorno := JObj.ToString;
    JObj.TryGetValue('data', JArray);
    JReg := TJsonObject(JArray.Items[0]);
    JReg.TryGetValue('id', FId);
    if LResponse.StatusCode <> 200 then
    begin
      s := 'Erro ao exeutar o método TDominioEntidadeTeste.GetDominio' + SlineBreak
        + 'Na Unit Dominio.Entidade.Teste'
        + 'StatusCode retornado = ' + LResponse.StatusCode.ToString;
      raise Exception.Create(s);
    end;
  Finally
    JObj.Free;
  End;
end;

function TDominioEntidadeTeste.GetDominioEspecifico(
  NomeChave: String): IDominioEntidadeTeste;
Var
  LResponse: IResponse;
  JObj, JReg: TJsonObject;
  JArray: TJsonArray;
  s: String;
begin
  result := self;
 // FAzer o REquest
  s := FUrlBase + '/DominioBanco?' + NomeChave;
  LResponse := TRequest.New.BaseURL(s).Get;
  s := LResponse.Content;
  Try
    JObj := TJsonObject.ParseJSONValue(s) as TJsonObject;
    FRetorno := JObj.ToString;
    JObj.TryGetValue('data', JArray);
    JReg := TJsonObject(JArray.Items[0]);
    JReg.TryGetValue('id', FId);
    if LResponse.StatusCode <> 200 then
    begin
      s := 'Erro ao exeutar o método TDominioEntidadeTeste.GetDominio' + SlineBreak
        + 'Na Unit Dominio.Entidade.Teste'
        + 'StatusCode retornado = ' + LResponse.StatusCode.ToString;
      raise Exception.Create(s);
    end;
  Finally
    JObj.Free;
  End;
end;

function TDominioEntidadeTeste.GetRetorno: String;
begin
  result := FRetorno;
end;

class function TDominioEntidadeTeste.New(UrlBase, Usuario, Senha: String): IDominioEntidadeTeste;
begin
  result := self.Create(UrlBase, Usuario, Senha);

end;

function TDominioEntidadeTeste.PostDominio: IDominioEntidadeTeste;
Var
  Entidade: TDominioBancoEntidade;
  LResponse: IResponse;
  JObj, JReg: TJsonObject;
  JArray: TJsonArray;
  s: String;
begin
  result := self;
  Entidade := TDominioBancoEntidade.Create;
  Try
    Entidade.NomeDominio := 'D_TESTE';
    Entidade.TipoCampo := tvVarChar;
    Entidade.Tamanho := 10;
    Entidade.QtdCasaDecimal := 5;
    Entidade.UsrIns := 'TONE-TESTE';
    Entidade.ToStringJson;
    LResponse := TRequest.New
      .BaseURL(FUrlBase + '/DominioBanco/')
      .Accept('application/json')
      .AddBody(Entidade.ToStringJson)
      .Post;
    FRetorno := LResponse.Content;
    if LResponse.StatusCode <> 201 then
    begin
      s := 'Erro ao exeutar o método TDominioEntidadeTeste.PostDominio' + SlineBreak
        + 'Na Unit Dominio.Entidade.Teste'
        + 'StatusCode retornado = ' + LResponse.StatusCode.ToString;
      raise Exception.Create(s);
    end;
  Finally
    Entidade.Free;
  End;

end;

function TDominioEntidadeTeste.PutDominio: IDominioEntidadeTeste;
begin
  result := self;

end;

procedure TDominioEntidadeTeste.SetId(const Value: String);
begin
  FId := Value;
end;

end.
