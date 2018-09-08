unit uFrmCadastroPadrao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  System.Actions, FMX.ActnList, FMX.Controls.Presentation;

type
  TfrmCadastroPadrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    acSalvar: TAction;
    acNovo: TAction;
    acExcluir: TAction;
    acSair: TAction;
    acEditar: TAction;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

{$R *.fmx}

end.
