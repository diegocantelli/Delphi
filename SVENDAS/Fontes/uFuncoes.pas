unit uFuncoes;

interface
uses
  Vcl.Forms;

type
  TFuncoes = class
    class function TestarPermissao(nomeForm:TForm):Boolean;
  end;

implementation

{ TFuncoes }

class function TFuncoes.TestarPermissao(nomeForm: TForm): Boolean;
begin
  Result:=True;
end;

end.
