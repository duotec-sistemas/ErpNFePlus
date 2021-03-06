unit DominioBanco.controller.servidor.erpnfe;

interface

uses
  System.SysUtils, System.Variants,
  System.Classes,
  //
  Horse,
  Horse.Commons,
  //
  //
  System.JSON,
  //
  System.Net.URLClient,
  //
  DataSet.Serialize,
  //
  DominioBanco.dao.servidor.erpnfe,
  Types.lib.erpnfe;

procedure Registry(App: THorse);
procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
procedure GetId(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
procedure Put(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);

implementation

procedure Registry(App: THorse);
begin
  App.Get('/DominioBanco', Get);
  App.Get('/DominioBanco/:id', GetId);
  App.Put('/DominioBanco/:id', Put);
  App.Post('/DominioBanco', Post);
  App.Delete('/DominioBanco/:id/:usr_exc/:motivo_exc', Delete);
end;

procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  lDominioBancoDao: TDominioBancoDao;
  lDominioBanco: TJsonArray;
  lJson: TJsonObject;
begin
  lDominioBancoDao := nil;
  Try
    lDominioBancoDao := TDominioBancoDao.Create;
    lDominioBanco := lDominioBancoDao.BuscarTodos(Req.Query).ToJSONArray();
    Res.Send<TJsonArray>(lDominioBanco);

    lJson := TJsonObject.Create;
    lJson.AddPair('data', lDominioBanco);
    lJson.AddPair('records', TJSONNumber.Create(lDominioBancoDao.Qry_QtdRegistroQTD_REG.AsLargeInt));
    Res.Send<TJsonObject>(lJson);

  Finally
    lDominioBancoDao.Free;
  End;

end;

procedure GetId(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  lDominioBancoDao: TDominioBancoDao;
  lDominioBancoJson: TJsonArray;
  lJson : TJsonObject;
  lId: String;
begin

  lId := Req.Params.Items['id'];

  lDominioBancoDao := nil;
  Try
    lDominioBancoDao := TDominioBancoDao.Create;
    lDominioBancoJson := lDominioBancoDao.ObterPeloId(lId).ToJSONArray();
    Res.Send<TJsonArray>(lDominioBancoJson);

    lJson := TJsonObject.Create;
    lJson.AddPair('data', lDominioBancoJson);
    lJson.AddPair('records','1');
    Res.Send<TJsonObject>(lJson);
  Finally
    lDominioBancoDao.Free;
  End;
end;

procedure Put(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  lDominioBancoDao: TDominioBancoDao;
  lDominioBancoJson: TJsonObject;
  lId: String;
begin
  lId := Req.Params.Items['id'];
  lDominioBancoJson := Req.Body<TJSONObject>;
  lDominioBancoDao := TDominioBancoDao.Create;
  Try
    lDominioBancoDao.TpRequisicao := TMethodType.mtPut;
    lDominioBancoDao.Update(lId, lDominioBancoJson);
    Res.Send<TJsonObject>(lDominioBancoJson);
  Finally
    lDominioBancoDao.Free;
  End;
end;

procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  lDominioBancoDao: TDominioBancoDao;
  lDominioBancoJson: TJsonObject;
  lId: String;
begin
  lDominioBancoJson := Req.Body<TJSONObject>;
  lDominioBancoDao := TDominioBancoDao.Create;
  Try
    lDominioBancoDao.TpRequisicao := TMethodType.mtPost;
    lDominioBancoDao.Insert(lDominioBancoJson);
    Res.Send<TJsonObject>(lDominioBancoJson).Status(THTTPStatus.Created);
  Finally
    lDominioBancoDao.Free;
  End;

end;

procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  lDominioBancoDao: TDominioBancoDao;
  lDominioBancoJson: TJsonObject;
  lId, lUsrExc, lMotivoExc: String;
begin
  lId := Req.Params.Items['id'];
  lUsrExc := Req.Params.Items['usr_exc'];
  lMotivoExc := Req.Params.Items['motivo_exc'];

  lDominioBancoJson := TJSONObject.Create;
  lDominioBancoJson.AddPair('usr_exc',lUsrExc);
  lDominioBancoJson.AddPair('motivo_exc',lMotivoExc);

  lDominioBancoDao := TDominioBancoDao.Create;
  Try
    lDominioBancoDao.TpRequisicao := TMethodType.mtDelete;
    Try
    lDominioBancoDao.Delete(lId, lDominioBancoJson);
    Res.Send<TJsonObject>(lDominioBancoJson);
    Except
      on e : Exception do
      begin
        lDominioBancoJson.free;
        raise;
      end;
    End;
  Finally
    lDominioBancoDao.Free;
  End;


end;

end.
