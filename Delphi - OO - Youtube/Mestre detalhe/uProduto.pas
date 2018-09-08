unit uProduto;

interface

type
  TProduto = class
  private
    FCodigo: Integer;
    FNome: string;
    FValorVenda: Currency;
  published
    public
      property ValorVenda:Currency read FValorVenda write FValorVenda;
      property Nome:string read FNome write FNome;
      property Codigo:Integer read FCodigo write FCodigo;
  end;

implementation

{ TProduto }


end.
