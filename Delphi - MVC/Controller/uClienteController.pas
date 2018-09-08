unit uClienteController;

interface

uses
  uClienteModel, uDmCliente,SysUtils;

type
  TClienteController = class
    public
      constructor Create;
      destructor Destroy;override;
      procedure Pesquisar(sNome:string);
      procedure CarregarCliente(iCodigo:Integer; objCliente:TCliente);
      function Inserir(objCliente:TCliente; var sErro:String):Boolean;
      function Alterar(objCliente:TCliente; var sErro:String):Boolean;
      function Excluir(iCodigo:Integer; var sErro:String):Boolean;
    private
  end;

implementation

function TClienteController.Alterar(objCliente:TCliente; var sErro:String): Boolean;
begin
  Result:=DMCliente.Alterar(objCliente,sErro);
end;

procedure TClienteController.CarregarCliente(iCodigo: Integer;
  objCliente: TCliente);
begin
  DMCliente.CarregaCliente(objCliente, iCodigo);
end;

constructor TClienteController.Create;
begin
  DMCliente := TDMCliente.Create(nil);
end;

destructor TClienteController.Destroy;
begin
  // FreeAndNil(DMCliente);
  inherited;
end;

function TClienteController.Excluir(iCodigo: Integer; var sErro:String): Boolean;
begin
  DMCliente.Excluir(iCodigo, sErro);
end;

function TClienteController.Inserir(objCliente: TCliente; var sErro:String): Boolean;
begin
  Result:=DMCliente.Inserir(objCliente,sErro);
end;

procedure TClienteController.Pesquisar(sNome: string);
begin
  DMCliente.Pesquisar(sNome);
end;


end.
