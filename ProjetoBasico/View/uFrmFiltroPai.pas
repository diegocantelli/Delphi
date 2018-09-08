unit uFrmFiltroPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, uDMConexaoDAO;

type
  TfrmFiltroPai = class(TForm)
    pnlHeader: TPanel;
    edtPesqNome: TEdit;
    btnPesquisar: TButton;
    Label1: TLabel;
    QryFiltro: TZQuery;
    DSFiltro: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiltroPai: TfrmFiltroPai;

implementation

{$R *.dfm}

end.
