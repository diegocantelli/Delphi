unit UHttpDownloadHtml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP;

type
  TForm1 = class(TForm)
    IdHTTP1: TIdHTTP;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin

  Memo1.Text :=  IdHTTP1.Get('http://www.activedelphi.com.br/forum/viewtopic.php?p=23040&sid=87c2afd1e1aa5d1797944fd4d79da2db');
end;

end.
