unit uFrmCadastroEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastroPai, DB, StdCtrls, ExtCtrls;

type
  TfrmCadastroEstados = class(TfrmCadastroPai)
    Label1: TLabel;
    Label2: TLabel;
    txtCodigo: TEdit;
    txtNomeEstado: TEdit;
    Label3: TLabel;
    txtSigla: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroEstados: TfrmCadastroEstados;

implementation

{$R *.dfm}

end.
