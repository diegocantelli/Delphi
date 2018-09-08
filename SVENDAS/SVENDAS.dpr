program SVENDAS;

uses
  Vcl.Forms,
  uInicial in 'Fontes\uInicial.pas' {frmInicial},
  uClientes in 'Fontes\uClientes.pas' {frmCliente},
  uFuncoes in 'Fontes\uFuncoes.pas',
  uProdutos in 'Fontes\uProdutos.pas' {frmProdutos},
  uDm in 'Fontes\uDm.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmInicial, frmInicial);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
