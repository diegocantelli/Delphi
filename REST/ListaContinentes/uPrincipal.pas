unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, IPPeerClient,
  FMX.Controls.Presentation, FMX.StdCtrls, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, FMX.ScrollBox, FMX.Memo, System.JSon, FMX.Edit;

type
  TForm1 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Button1: TButton;
    Panel1: TPanel;
    txtEnderecos: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    txtEndOrigem: TEdit;
    txtEndDestino: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
var
  Obj:TJSONObject;
  ParRows : TJSONPair;
begin
 RESTRequest1.Execute;
 RESTRequest1.Params.AddUrlSegment('origem', txtEndOrigem.Text);
 RESTRequest1.Params.AddUrlSegment('destino', txtEndDestino.Text);
 RESTRequest1.Execute;
 Memo1.Lines.Add(RESTResponse1.JSONText);

 Obj := RESTResponse1.JSONValue as TJSONObject;

 if(Obj.GetValue('status').Value = 'OK')then
 begin
  ParRows := Obj.GetValue('rows');
  ShowMessage(Obj.GetValue('rows').ToString);
 end;

end;

end.
