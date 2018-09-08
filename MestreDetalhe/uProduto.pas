unit uProduto;

interface

type
  TProduto = class
  private
    FValorVenda: Currency;
    FId: Integer;
    FNome: string;
  public
    property Id:Integer read FId write FId;
    property Nome:string read FNome write FNome;
    property ValorVenda:Currency read FValorVenda write FValorVenda;
  end;

implementation

end.
