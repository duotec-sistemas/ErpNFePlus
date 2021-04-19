unit ModuloSistema.controller.servidor.erpnfe;

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
  ModuloSistema.dao.servidor.erpnfe,
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
  App.Get('/ModuloSistema', Get);
  App.Get('/ModuloSistema/:id', GetId);
  App.Put('/ModuloSistema/:id', Put);
  App.Post('/ModuloSistema', Post);
  App.Delete('/ModuloSistema/:id/:usr_exc/:motivo_exc', Delete);
end;

procedure Get(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  lModuloSistemaDao: TModuloSistemaDao;
  lModuloSistema: TJsonArray;
  lJson: TJsonObject;
begin
  lModuloSistemaDao := nil;
  Try
    lModuloSistemaDao := TModuloSistemaDao.Create;
    lModuloSistema := lModuloSistemaDao.BuscarTodos(Req.Query).ToJSONArray();
    Res.Send<TJsonArray>(lModuloSistema);

    lJson := TJsonObject.Create;
    lJson.AddPair('data', lModuloSistema);
    lJson.AddPair('records', TJSONNumber.Create(lModuloSistemaDao.Qry_QtdRegistroQTD_REG.AsLargeInt));
    Res.Send<TJsonObject>(lJson);

  Finally
    lModuloSistemaDao.Free;
  End;

end;

procedure GetId(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  lModuloSistemaDao: TModuloSistemaDao;
  lModuloSistemaJson: TJsonArray;
  lJson : TJsonObject;
  lId: String;
begin

  lId := Req.Params.Items['id'];

  lModuloSistemaDao := nil;
  Try
    lModuloSistemaDao := TModuloSistemaDao.Create;
    lModuloSistemaJson := lModuloSistemaDao.ObterPeloId(lId).ToJSONArray();
    Res.Send<TJsonArray>(lModuloSistemaJson);

    lJson := TJsonObject.Create;
    lJson.AddPair('data', lModuloSistemaJson);
    lJson.AddPair('records','1');
    Res.Send<TJsonObject>(lJson);
  Finally
    lModuloSistemaDao.Free;
  End;
end;

procedure Put(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  lModuloSistemaDao: TModuloSistemaDao;
  lModuloSistemaJson: TJsonObject;
  lId: String;
begin
  lId := Req.Params.Items['id'];
  lModuloSistemaJson := Req.Body<TJSONObject>;
  lModuloSistemaDao := TModuloSistemaDao.Create;
  Try
    lModuloSistemaDao.TpRequisicao := TMethodType.mtPut;
    lModuloSistemaDao.Update(lId, lModuloSistemaJson);
    Res.Send<TJsonObject>(lModuloSistemaJson);
  Finally
    lModuloSistemaDao.Free;
  End;
end;

procedure Post(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  lModuloSistemaDao: TModuloSistemaDao;
  lModuloSistemaJson: TJsonObject;
  lId: String;
begin
  lModuloSistemaJson := Req.Body<TJSONObject>;
  lModuloSistemaDao := TModuloSistemaDao.Create;
  Try
    lModuloSistemaDao.TpRequisicao := TMethodType.mtPost;
    lModuloSistemaDao.Insert(lModuloSistemaJson);
    Res.Send<TJsonObject>(lModuloSistemaJson).Status(THTTPStatus.Created);
  Finally
    lModuloSistemaDao.Free;
  End;

end;

procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TNextProc);
Var
  lModuloSistemaDao: TModuloSistemaDao;
  lModuloSistemaJson: TJsonObject;
  lId, lUsrExc, lMotivoExc: String;
begin
  lId := Req.Params.Items['id'];
  lUsrExc := Req.Params.Items['usr_exc'];
  lMotivoExc := Req.Params.Items['motivo_exc'];

  lModuloSistemaJson := TJSONObject.Create;
  lModuloSistemaJson.AddPair('usr_exc',lUsrExc);
  lModuloSistemaJson.AddPair('motivo_exc',lMotivoExc);

  lModuloSistemaDao := TModuloSistemaDao.Create;
  Try
    lModuloSistemaDao.TpRequisicao := TMethodType.mtDelete;
    Try
    lModuloSistemaDao.Delete(lId, lModuloSistemaJson);
    Res.Send<TJsonObject>(lModuloSistemaJson);
    Except
      on e : Exception do
      begin
        lModuloSistemaJson.free;
        raise;
      end;
    End;
  Finally
    lModuloSistemaDao.Free;
  End;
end;

end.
