unit uClienteModel;

interface

uses
  SysUtils;

type
  TCliente = class
    private
    FDocumento: String;
    FID: integer;
    FNome: String;
    FTipo: String;
    FTelefone: String;
    procedure SetNome(const Value: String);
    public
      property ID:integer read FID write FID;
      property Nome:String read FNome write SetNome;
      property Tipo:String read FTipo write FTipo;
      property Documento:String read FDocumento write FDocumento;
      property Telefone:String read FTelefone write FTelefone;
  end;

implementation

{ TCliente }

procedure TCliente.SetNome(const Value: String);
begin
  if value = EmptyStr then
    raise EArgumentException.Create('O nome precisa ser preenchido');
  FNome := Value;

end;

end.
