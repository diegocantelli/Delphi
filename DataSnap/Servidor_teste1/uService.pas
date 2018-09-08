unit uService;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs,
  DSCommonServer, DSTCPServerTransport, DSServer;

type
  TService1 = class(TService)
    Server: TDSServer;
    ServerTransport: TDSTCPServerTransport;
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
  private
    { Private declarations }
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  Service1: TService1;

implementation

{$R *.DFM}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  Service1.Controller(CtrlCode);
end;

function TService1.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TService1.ServiceStart(Sender: TService; var Started: Boolean);
begin
  Server.Start;
end;

procedure TService1.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  Server.Stop;
end;

end.
