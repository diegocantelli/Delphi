unit uClasseCliente;

interface

type
  TCliente = class
    private
      FId:Integer;
      FNome:string;
      FDtNasc:TDate;
    public
      property Id:Integer read FId write FId;
      property Nome: string read FNome write FNome;
      property DtNasc:TDate read FDtNasc write FDtNasc;
  end;

implementation

end.
