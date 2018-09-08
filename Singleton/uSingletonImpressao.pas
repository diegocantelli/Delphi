unit uSingletonImpressao;

interface

uses
 Dialogs, SysUtils;

type
  TSingletonImpressao = class
    private
      constructor Create;
    public
      class function GetInstance:TSingletonImpressao;
      procedure FazAlgumaCoisa;
  end;

implementation
var
  _instancia:TSingletonImpressao;

{ TSingletonImpressao }

constructor TSingletonImpressao.Create;
begin
  inherited;
end;

procedure TSingletonImpressao.FazAlgumaCoisa;
begin
  showmessage('Imprimindo ...');
end;

class function TSingletonImpressao.GetInstance: TSingletonImpressao;
begin
  if _instancia = nil then
    _instancia := TSingletonImpressao.Create;
  Result := _instancia;
end;

initialization
  _instancia := nil;

finalization
  if _instancia <> nil then
    _instancia.Free;

end.
