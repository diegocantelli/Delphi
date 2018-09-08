unit uSistemaController;

interface

uses
   uConexao, SysUtils, uEmpresaModel;

type
  TSistemaControll = class
  private
    FConexao : TConexao;
    FEmpresa: TEmpresaModel;
    class var FInstance : TSistemaControll;
  public
    constructor Create;
    destructor Destroy;override;
    class function GetInstance:TSistemaControll;
    property Conexao:TConexao read FConexao write FConexao;
    property Empresa:TEmpresaModel read FEmpresa write FEmpresa;
    procedure CarregarEmpresa(ACodigoEmpresa:Integer);
  end;

implementation

{ TSistemaControll }

procedure TSistemaControll.CarregarEmpresa(ACodigoEmpresa:Integer);
begin
  FEmpresa.Carregar(ACodigoEmpresa);
end;

constructor TSistemaControll.Create;
begin
  FConexao := TConexao.Create;
  FEmpresa := TEmpresaModel.Create();
end;

destructor TSistemaControll.Destroy;
begin
  FreeAndNil(FEmpresa);
  FreeAndNil(FConexao);
  inherited;
end;

class function TSistemaControll.GetInstance: TSistemaControll;
begin
  if not Assigned(self.FInstance) then
    Self.FInstance := TSistemaControll.Create;
  Result := Self.FInstance;
end;

end.
