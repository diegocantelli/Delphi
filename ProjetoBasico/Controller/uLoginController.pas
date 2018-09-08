unit uLoginController;

interface

uses uLoginModel, uLoginDao, SysUtils;

type
  TLoginController = class
    private
      FLoginDAO:TLoginDAO;
    public
      constructor Create;
      destructor Destroy;override;
      function Logar(LoginModel:TLoginModel):Boolean;
  end;

implementation

{ TLoginController }

constructor TLoginController.Create;
begin
  FLoginDAO := TLoginDAO.Create;
end;

destructor TLoginController.Destroy;
begin
  FLoginDAO.free;
  inherited;
end;

function TLoginController.Logar(LoginModel:TLoginModel): Boolean;
begin
  result := FLoginDAO.Logar(LoginModel);
end;

end.
