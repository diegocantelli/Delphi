unit uEmpresaModel;

interface

uses
  SysUtils;

type
  TEmpresaModel = class
    private
    FCodigo: Integer;
    FRSocial: string;
    procedure SetCodigo(const Value: Integer);
    procedure SetRSocial(const Value: string);
    public
      property Codigo: Integer read FCodigo write SetCodigo;
      property RSocial:string read FRSocial write SetRSocial;
      procedure Carregar(AEmpresa: integer);
  end;
implementation

uses
  uEmpresaDAO;
{ TEmpresa }

procedure TEmpresaModel.Carregar(AEmpresa: Integer);
var
  VEmpresaDAO : TEmpresaDAO;
begin
  try
    VEmpresaDAO := TEmpresaDAO.Create;
    VEmpresaDAO.Carregar(self, AEmpresa);
  finally
    FreeAndNil(VEmpresaDAO);
  end;

end;

procedure TEmpresaModel.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TEmpresaModel.SetRSocial(const Value: string);
begin
  FRSocial := Value;
end;

end.
