unit uFrmCadastroCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastroPai, StdCtrls, DB, ExtCtrls;

type
  TfrmCadastroCidade = class(TfrmCadastroPai)
    Label1: TLabel;
    Label2: TLabel;
    txtCodigo: TEdit;
    txtCidade: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCidade: TfrmCadastroCidade;

implementation

{$R *.dfm}

end.
