unit uBliblioteca;

interface
uses
  IniFiles, SysUtils, Forms;

procedure SetValorIni(ALocal, ASesao, ASubsessao, AValor:string);
function GetValorIni(ALocal, ASesao, ASubsessao:string):string;
implementation

procedure SetValorIni(ALocal, ASesao, ASubsessao, AValor:string);
var
  IniFile:TIniFile;
begin
  IniFile := TIniFile.Create(ALocal);
  IniFile.WriteString(ASesao, ASubsessao, AValor);
  IniFile.Free;
end;

function GetValorIni(ALocal, ASesao, ASubsessao:string):string;
var
  IniFile:TIniFile;
begin
  IniFile := TIniFile.Create(ALocal);

  Result := IniFile.ReadString(ASesao,ASubsessao,'');

  IniFile.Free;
end;

end.
