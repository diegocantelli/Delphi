unit uCliente;

interface

type
  TCliente = class
  private
    FCodigo: Integer;
    FRsocial: string;
  published
    public
      property Codigo:Integer read FCodigo write FCodigo;
      property Rsocial :string read FRsocial write FRsocial;
  end;

implementation

end.
