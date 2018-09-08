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
    function RetornaNome:String;override;{indica que essa fun��o est� sobreescrevendo a fun��o que foi definida na classe m�e}
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

  Result:=  'Essa classe � filha de: '+Nome;
end;

function TCliente.MetodoAbstrato:string;
begin
  result:='Este � o m�todo abstrato';
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
