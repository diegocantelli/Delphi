unit uPessoa;

interface

type
  TPessoa = class
  private
    FPessoass: string;
    FCodigo: Integer;
  published
  public
    constructor Create;
    destructor Destroy;override;
    procedure Insert(Aid:Integer);
    property Pessoass:string read FPessoass write FPessoass;
    property Codigo:Integer read FCodigo write FCodigo;
  end;

implementation

uses
  SysUtils;

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

procedure TPessoa.Insert(Aid: Integer);
begin
  raise Exception.Create('Inserido com sucesso !');
end;

end.
