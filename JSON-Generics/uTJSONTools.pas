unit uTJSONTools;

interface
uses DBXJSONReflect, DBXJSON, sysutils, IOUtils;
type
  TJSONTools = class
    public
    { Public declarations }
    class function saveFileJSON<T :class>(obj: T; const filePath: string): Boolean;
    class function loadFileJSON<T : class>(const filePath: string): T;
  end;

implementation

class function TJSONTools.loadFileJSON<T>(const filePath: string): T;
var
  Unmarshal: TJSONUnMarshal;
  obj: TJSONObject;
begin
  Unmarshal := TJSONUnMarshal.Create();
  try
    try
      if not(FileExists(filePath)) then
        Exit(nil);
      obj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(TFile.ReadAllText(filePath)), 0) as TJSONObject;
      Result := T(Unmarshal.Unmarshal(obj));
    except
      Exit(nil);
    end;
  finally
    FreeAndNil(Unmarshal);
  end;
end;

class function TJSONTools.saveFileJSON<T>(obj: T; const filePath: string): Boolean;
var
  Marshal: TJSONMarshal;
begin
  Marshal := TJSONMarshal.Create(TJSONConverter.Create());
  try
    try
      TFile.WriteAllText(filePath, (Marshal.Marshal(obj) as TObject).ToString);
      Result := True;
    except
      Result := False;
    end;
  finally
    FreeAndNil(Marshal);
  end;
end;

end.
