unit Mensagem;

interface

type
  TMensagem = class
  private
    FCorpo: string;
    FCabecalho: string;
    FPara: string;
    FDe: string;
    FMes: string;
    FAno: string;
    FDia: string;


  published
    public
      property Para      :string read FPara write FPara;
      property De        :string read FDe write FDe;
      property Cabecalho :string read FCabecalho write FCabecalho;
      property Corpo     :string read FCorpo write FCorpo;
      property Ano       :string read FAno write FAno;
      property Mes       :string read FMes write FMes;
      property Dia       :string read FDia write FDia;
  end;

implementation

{ TMensagem }


end.
