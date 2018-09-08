unit uEndereco;

interface

type
  TEndereco = class
  private
    FEndereco: String;
    FLogradouro: String;
    procedure SetEndereco(const Value: String);
    procedure SetLogradouro(const Value: String);
  public
    constructor Create;
    destructor Destroy;reintroduce;
    property Endereco : String read FEndereco write SetEndereco;
    property Logradouro: String read FLogradouro write SetLogradouro;

  end;

implementation

{ TEndereco }

constructor TEndereco.Create;
begin
  FLogradouro := 'Sem número';
  FEndereco := 'Sem nome';
end;
destructor TEndereco.Destroy;
begin

end;

procedure TEndereco.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TEndereco.SetLogradouro(const Value: String);
begin
  FLogradouro := Value;
end;

end.
 