unit uCliente;

interface

uses uPessoa,uEndereco;

type
  TCliente = class(TPessoa)
  private
    FEndereco: TEndereco;
    procedure SetEndereco(const Value: TEndereco);
  public
    constructor Create; overload;
    constructor Create(value:string);overload;
    destructor Destroy; reintroduce;
    function RetornaNome:String;override;{indica que essa função está sobreescrevendo a função que foi definida na classe mãe}
    function MetodoAbstrato:string;override;
    property Endereco : TEndereco read FEndereco write SetEndereco;
  end;

implementation

constructor TCliente.Create;
begin
  Nome := 'Novo Cliente';
end;

constructor TCliente.Create(value:String);
begin
  FEndereco := TEndereco.Create;
  Nome := value;
end;

function TCliente.RetornaNome:string;
begin

  Result:=  'Essa classe é filha de: '+Nome;
end;

function TCliente.MetodoAbstrato:string;
begin
  result:='Este é o método abstrato';
end;

destructor TCliente.Destroy;
begin
  FEndereco.Free;
end;

procedure TCliente.SetEndereco(const Value: TEndereco);
begin
  FEndereco := Value;
end;

end.
