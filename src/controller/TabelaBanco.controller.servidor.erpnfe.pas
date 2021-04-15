unit TabelaBanco.controller.servidor.erpnfe;

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
  TabelaBanco.dao.servidor.erpnfe,
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
  App.Get('/TabelaBanco', Get);
  App.Get('/TabelaBanco/:id', GetId);
  App.Put('/TabelaBanco/:id', Put);
  App.Post('/TabelaBanco', Post);
  App.Delete('/TabelaBanco/:id/:usr_exc/:motivo_exc', Delete);
end;

procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  LTabelaBancoDao: TTabelaBancoDao;
  LTabelaBanco: TJsonArray;
  LJson: TJsonObject;
begin
  LTabelaBancoDao := nil;
  Try
    LTabelaBancoDao := TTabelaBancoDao.Create;
    LTabelaBanco := LTabelaBancoDao.BuscarTodos(Req.Query).ToJSONArray();
    Res.Send<TJsonArray>(LTabelaBanco);

    LJson := TJsonObject.Create;
    LJson.AddPair('data', LTabelaBanco);
    LJson.AddPair('records', TJSONNumber.Create(LTabelaBancoDao.Qry_QtdRegistroQTD_REG.AsLargeInt));
    Res.Send<TJsonObject>(LJson);

  Finally
    LTabelaBancoDao.Free;
  End;

end;

procedure GetId(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  LTabelaBancoDao: TTabelaBancoDao;
  LTabelaBancoJson: TJsonArray;
  LJson: TJsonObject;
  LId: String;
begin

  LId := Req.Params.Items['id'];

  LTabelaBancoDao := nil;
  Try
    LTabelaBancoDao := TTabelaBancoDao.Create;
    LTabelaBancoJson := LTabelaBancoDao.ObterPeloId(LId).ToJSONArray();
    Res.Send<TJsonArray>(LTabelaBancoJson);

    LJson := TJsonObject.Create;
    LJson.AddPair('data', LTabelaBancoJson);
    LJson.AddPair('records', '1');
    Res.Send<TJsonObject>(LJson);
  Finally
    LTabelaBancoDao.Free;
  End;
end;

procedure Put(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  LTabelaBancoDao: TTabelaBancoDao;
  LTabelaBancoJson: TJsonObject;
  LId: String;
begin
  LId := Req.Params.Items['id'];
  LTabelaBancoJson := Req.Body<TJsonObject>;
  LTabelaBancoDao := TTabelaBancoDao.Create;
  Try
    LTabelaBancoDao.TpRequisicao := TMethodType.mtPut;
    LTabelaBancoDao.Update(LId, LTabelaBancoJson);
    Res.Send<TJsonObject>(LTabelaBancoJson);
  Finally
    LTabelaBancoDao.Free;
  End;
end;

procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  LTabelaBancoDao: TTabelaBancoDao;
  LTabelaBancoJson: TJsonObject;
  LId: String;
begin
  LTabelaBancoJson := Req.Body<TJsonObject>;
  LTabelaBancoDao := TTabelaBancoDao.Create;
  Try
    LTabelaBancoDao.TpRequisicao := TMethodType.mtPost;
    LTabelaBancoDao.Insert(LTabelaBancoJson);
    Res.Send<TJsonObject>(LTabelaBancoJson).Status(THTTPStatus.Created);
  Finally
    LTabelaBancoDao.Free;
  End;

end;

procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  LTabelaBancoDao: TTabelaBancoDao;
  LTabelaBancoJson: TJsonObject;
  LId, lUsrExc, lMotivoExc: String;
begin
  LId := Req.Params.Items['id'];
  lUsrExc := Req.Params.Items['usr_exc'];
  lMotivoExc := Req.Params.Items['motivo_exc'];

  LTabelaBancoJson := TJsonObject.Create;
  LTabelaBancoJson.AddPair('usr_exc', lUsrExc);
  LTabelaBancoJson.AddPair('motivo_exc', lMotivoExc);

  LTabelaBancoDao := TTabelaBancoDao.Create;
  Try
    LTabelaBancoDao.TpRequisicao := TMethodType.mtDelete;
    Try
      LTabelaBancoDao.Delete(LId, LTabelaBancoJson);
      Res.Send<TJsonObject>(LTabelaBancoJson);
    Except
      on e: Exception do
      begin
        LTabelaBancoJson.Free;
        raise;
      end;
    End;
  Finally
    LTabelaBancoDao.Free;
  End;

end;

end.
