unit uPessoa;

interface

type
  TPessoa = class
  private
    FNome:string;
    FDataNasc:String;
    FSexo:String;
    FNacionalidade:String;
    function  getNome:string;
    procedure setNome(valor:String);
    function getDataNasc:string;
    procedure setDataNasc(valor:string);
    function getSexo:String;
    procedure setSexo(valor:string);
    function getNacionalidade:string;
    procedure setNacionalidade(valor:string);
  public
    property Nome:String read getNome write setNome;
    property DataNasc:string read getDataNasc write setDataNasc;
    property Sexo:string read getSexo write setSexo;
    property Nacionalidade:string read getNacionalidade write setNacionalidade;
    Function idade : Integer;
    function ReceberValor(i:Integer):string;overload;
    function receberValor(i:string):string;overload;
    function RetornaNome:String; virtual;{indica que essa fun��o pode ser reescrita em outra classe filha}
    function MetodoAbstrato:String; virtual; abstract;{n�o pode ser implementado na classe m�e} 
  end;

implementation

uses SysUtils;
{TPessoa}

function TPessoa.idade : Integer;
begin
  result:= Trunc((now - StrToDate(DataNasc))/365.25);
end;

function TPessoa.getNome:string;
begin
  result:=FNome;
end;

procedure TPessoa.setNome(valor:String);
begin
  FNome := valor;
end;

function TPessoa.getDataNasc:string;
begin
  Result:=FDataNasc;
end;

procedure TPessoa.setDataNasc(valor:string);
begin
  FDataNasc:=valor;
end;

function TPessoa.getSexo:string;
begin
  result:= FSexo;
end;

procedure TPessoa.setSexo(valor:string);
begin
  fsexo := valor;
end;

function TPessoa.getNacionalidade:string;
begin
  result:=FNacionalidade;
end;

procedure TPessoa.setNacionalidade(valor:string);
begin
  FNacionalidade:=valor;
end;


function TPessoa.ReceberValor(i: Integer): string;
begin
  result:= 'O valor recebido foi um inteiro de: '+IntToStr(i);
end;

function TPessoa.ReceberValor(i: string): string;
begin
  result:= 'O valor recebido foi uma string de: '+i;
end;

function TPessoa.RetornaNome: String;
begin
  Nome := 'TPessoa';
//  Result:= 'Essa � a classe TPessoa';
end;

end.
 