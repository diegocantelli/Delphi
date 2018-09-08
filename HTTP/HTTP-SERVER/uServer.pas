unit uServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdBaseComponent, IdComponent, IdCustomTCPServer, IdCustomHTTPServer,
  IdHTTPServer, IdContext, ExtCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    IdHTTPServer1: TIdHTTPServer;
    TrayIcon1: TTrayIcon;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure IdHTTPServer1CommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure TrayIcon1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  IdHTTPServer1.Active := True;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  IdHTTPServer1.Active := False;
end;

procedure TForm1.IdHTTPServer1CommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
begin
  // Retorna a Data e hora
     AResponseInfo.ContentText := DateTimeToStr(now);
     AResponseInfo.WriteContent;
end;

procedure TForm1.TrayIcon1Click(Sender: TObject);
begin
  TrayIcon1.Visible := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
end;

end.
