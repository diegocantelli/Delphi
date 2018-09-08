unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btnOk: TButton;
    txtNome: TEdit;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uCliente, uPessoa;

{$R *.dfm}

procedure TForm1.btnOkClick(Sender: TObject);
var
  Cliente:TCliente;
begin
  Cliente := TCliente.Create(txtNome.Text);
  try
    ShowMessage(Cliente.Endereco.Endereco + ' '+ Cliente.Endereco.Logradouro);
  finally
    Cliente.Destroy;
  end;
end;

end.
