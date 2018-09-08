program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmSalao},
  uFrmCadastroPadrao in 'uFrmCadastroPadrao.pas' {frmCadastroPadrao},
  uFrmCadastroServicos in 'uFrmCadastroServicos.pas' {frmCadastroPadrao1},
  uDmDados in 'uDmDados.pas' {DmDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSalao, frmSalao);
  Application.CreateForm(TfrmCadastroPadrao, frmCadastroPadrao);
  Application.CreateForm(TfrmCadastroPadrao1, frmCadastroPadrao1);
  Application.CreateForm(TDmDados, DmDados);
  Application.Run;
end.
