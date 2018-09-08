unit uLoginModel;

interface

type
  TLoginModel = class
  private
    FSenha: string;
    FLogin: string;

    public
      property Login:string read FLogin write FLogin;
      property Senha:string read FSenha write FSenha;
  end;

implementation

end.
