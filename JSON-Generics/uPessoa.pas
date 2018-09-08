unit uPessoa;


interface

uses
  SysUtils, IOUtils, DBXJSONReflect, DBXJSON, Generics.Collections;

type
  TPessoa = class
  private
    { Private declarations }
    FPessIden: Integer;
    FPessNome: string;
  public
    { Published declarations }
    property PessIden: Integer read FPessIden write FPessIden;
    property PessNome: string read FPessNome write FPessNome;
  end;

implementation

end.
