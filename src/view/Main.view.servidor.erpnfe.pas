unit Main.view.servidor.erpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  //
  ConfiguracaoConexaoBanco.Interfaces,
  ConfiguracaoConexaoBanco,
  //
  Horse,
  Horse.Jhonson,
  Horse.HandleException,
  Horse.Exception,
  Horse.BasicAuthentication,
  //
  Comum.lib.erpnfe,
  //
  umdclasse,
  //  Controller
  ModuloSistema.controller.servidor.erpnfe,
  TabelaBanco.controller.servidor.erpnfe,
  DominioBanco.controller.servidor.erpnfe;

type
  TFrm_Main = class(TForm)
    lbStatus: TLabel;
    lbPorta: TLabel;
    btnStop: TBitBtn;
    btnStart: TBitBtn;
    Button1: TButton;
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    ServidorHorse: THorse;
    procedure Status;
    procedure Start;
    procedure Stop;
  public
    { Public declarations }
  end;

var
  Frm_Main: TFrm_Main;

implementation

{$R *.dfm}

procedure TFrm_Main.btnStartClick(Sender: TObject);
begin
  Start;
  Status;
end;

procedure TFrm_Main.btnStopClick(Sender: TObject);
begin
  Stop;
  Status;
end;

procedure TFrm_Main.Button1Click(Sender: TObject);
begin

  DM_Classe := TDM_Classe.Create(self);
  DM_Classe.GerarInstrucaoSQL;
//  FreeAndNil(DM_Classe);
end;

procedure TFrm_Main.FormCreate(Sender: TObject);
begin
  ServidorHorse := THorse.Create;
  ReportMemoryLeaksOnShutdown := true;
end;

procedure TFrm_Main.Start;
begin
  Comum.lib.erpnfe.ConfiguracaoConexaoBanco := TConfiguracaoConexaoBanco.New;
  Comum.lib.erpnfe.ConfiguracaoConexaoBanco.obterDadosConexao('D:\ServidorErpNfeHorse', 'ServidorErpNFe.ini');

{  ServidorHorse.Use(HorseBasicAuthentication(
    function(const AUsername, APassword: string): Boolean
    begin
       Comum.lib.erpnfe.NomeUsuario :=  AUsername;
       Comum.lib.erpnfe.SenhaUsuario :=  APassword;
       result := true;
    end));  }

  ServidorHorse.Use(Jhonson);
  ServidorHorse.Use(HandleException);

  ServidorHorse.Get('ping',

    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  DominioBanco.controller.servidor.erpnfe.Registry(ServidorHorse);
  TabelaBanco.controller.servidor.erpnfe.Registry(ServidorHorse);
  ModuloSistema.controller.servidor.erpnfe.Registry(ServidorHorse);

  ServidorHorse.Listen(9000);
end;

procedure TFrm_Main.Status;
begin
  btnStop.Enabled := THorse.IsRunning;
  btnStart.Enabled := not THorse.IsRunning;
  if THorse.IsRunning then
  begin
    lbStatus.Caption := 'Status: Online';
    lbPorta.Caption := 'Port: ' + IntToStr(THorse.Port);
  end
  else
  begin
    lbStatus.Caption := 'Status: Offline';
    lbPorta.Caption := 'Port: ';
  end;
end;

procedure TFrm_Main.Stop;
begin
  ServidorHorse.StopListen;
end;

end.
