unit uFornecedorModel;

interface

type
  TFornecedorModel = class
  private
    FCnpj: string;
    FFantasia: string;
    FBairro: string;
    FId: Integer;
    FRazsoc: string;
    FCidade: integer;
    FEndereco: string;
    FEstado: integer;
    FNomeCidade: string;
    FEstadoNome: string;
  published
    public
      property Id:Integer read FId write FId;
      property Endereco:string read FEndereco write FEndereco;
      property Fantasia:string read FFantasia write FFantasia;
      property Cnpj:string read FCnpj write FCnpj;
      property Razsoc:string read FRazsoc write FRazsoc;
      property Bairro:string read FBairro write FBairro;
      property Cidade:integer read FCidade write FCidade;
      property Estado:integer read FEstado write FEstado;
      property NomeEstado:string read FEstadoNome write FEstadoNome;
      property NomeCidade:string read FNomeCidade write FNomeCidade;
  end;

implementation

end.
