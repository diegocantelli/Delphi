unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnClientes: TButton;
    procedure btnClientesClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbrirCliente;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uFrmCadastrarCliente;

{$R *.dfm}

procedure TfrmPrincipal.AbrirCliente;
begin
  frmCadastrarCliente := TfrmCadastrarCliente.Create(nil);
  //try
    frmCadastrarCliente.ShowModal;
 // finally
 //   FreeAndNil(frmCadastrarCliente);
 // end;
end;

procedure TfrmPrincipal.btnClientesClick(Sender: TObject);
begin
  AbrirCliente;
end;

end.
