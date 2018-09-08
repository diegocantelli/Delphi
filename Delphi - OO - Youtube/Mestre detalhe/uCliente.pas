unit uCliente;

interface

type
  TCliente = class
    private
    FCodigo: Integer;
    FRSocial: string;
    public
      property Codigo:Integer read FCodigo write FCodigo;
      property RSocial:string read FRSocial write FRSocial;
  end;
implementation

end.
