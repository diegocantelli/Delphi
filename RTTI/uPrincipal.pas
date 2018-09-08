unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, rtti, uPessoa;

type
  TForm1 = class(TForm)
    btnGetMethod: TBitBtn;
    btngetField: TBitBtn;
    betGetProperty: TBitBtn;
    btnGetPropertyValues: TBitBtn;
    btnSetValues: TBitBtn;
    btnMethodTypes: TBitBtn;
    BtninvocaMetodo: TBitBtn;
    btnValidar: TBitBtn;
    btnTabelaCampo: TBitBtn;
    Memo1: TMemo;
    procedure btnGetMethodClick(Sender: TObject);
    procedure btngetFieldClick(Sender: TObject);
    procedure betGetPropertyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.betGetPropertyClick(Sender: TObject);
var
  VCtx: TRttiContext;
  VType: TRttiType;
  VProp: TRttiProperty;
begin
  Memo1.Lines.Clear;
  VCtx := TRttiContext.Create.Create;
  try
    VType :=  VCtx.GetType(TPessoa);
    for VProp in VType.GetProperties do
    begin
      Memo1.Lines.Add(VProp.Name)
    end;
  finally
    VCtx.Free;
  end;

end;

procedure TForm1.btngetFieldClick(Sender: TObject);
var
  VCtx: TRttiContext;
  VType: TRttiType;
  VField: TRttiField;
begin
  VCtx := TRttiContext.Create.Create;
  try
    VType :=  VCtx.GetType(TPessoa);
    for VField in VType.GetFields do
    begin
      Memo1.Lines.Clear;
      Memo1.Lines.Add(VField.Name)
    end;
  finally
    VCtx.Free;
  end;
end;

procedure TForm1.btnGetMethodClick(Sender: TObject);
var
  VCtx: TRttiContext;
  VTypes : TRttiType;
  VMet: TRttiMethod;
begin
  VCtx := TRttiContext.Create;
  try
    VTypes := VCtx.GetType(TPessoa);

    for VMet in VTypes.GetMethods do
    begin
      Memo1.Lines.Add(VMet.Name);
    end;

  finally
    VCtx.Free;
  end;
end;

end.
