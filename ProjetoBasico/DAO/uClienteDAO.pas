unit uClienteDAO;

interface

uses uConexao,ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uClienteModel, uDMConexaoDAO, SysUtils,
  generics.collections;

type
  TClienteDAO = class
    private

    public
      function Inserir(ClienteModelo:TClienteModel):Boolean;
      function Excluir(Id:Integer):Boolean;
      function Alterar(ClienteModelo:TClienteModel):Boolean;
      function ExecutaFiltro(FiltroNome:string):String;overload;
      function ExecutaFiltro(FiltroNome,FiltroFanta:string):String;overload;
      function ExecutaFiltro(FiltroNome,FiltroFanta,
               FiltroCPF_CNPJ:string):String;overload;
      function ExecutaFiltro(FiltroNome,FiltroFanta,
               FiltroCPF_CNPJ, FiltroCod:string):String;overload;
      function ExecutaFiltroPadrao:String;
      function RetornaClientes:TObjectList<TClienteModel>;
  end;

implementation

{ TClienteDAO }

function TClienteDAO.ExecutaFiltroPadrao: String;
var
  SqlFiltro:string;
begin
   SqlFiltro := 'select id_cliente as '+QuotedStr('Código') +
               ', cli.nome as '+QuotedStr('Cliente') +
               ', raz_soc as '+QuotedStr('Razão Social')+ ' ,'
               + 'cpf_cnpj as ' +QuotedStr('CPF/CNPJ') +
               ', cid.nome as '+QuotedStr('Cidade')+
               ', est.nome as '+QuotedStr('Estado')+
               ', cid.id_cidade, est.id_estado '+
               ' from clientes cli '
               + ' inner join cidade cid on (cid.id_cidade = cli.id_cidade) ' +
               ' inner join estado est on (cli.id_estado = est.id_estado) ';
   result := SqlFiltro;
end;

function TClienteDAO.ExecutaFiltro(FiltroNome: String): string;
var
  SqlFiltro:string;
begin
  SqlFiltro := '';
  if Length(FiltroNome) > 0 then
  begin
    SqlFiltro := ' and cli.nome like ' + QuotedStr('%') + ' :nome '
                 + QuotedStr('%');
  end;
  result := SqlFiltro;
end;

function TClienteDAO.ExecutaFiltro(FiltroNome, FiltroFanta: string): String;
var
  SqlFiltro:string;
begin
  SqlFiltro := '';
  if Length(FiltroFanta) > 0 then
  begin
    SqlFiltro := ExecutaFiltro(FiltroNome) + ' and cli.raz_soc like '
                 + QuotedStr('%') + ' :raz_soc '
                 + QuotedStr('%');
  end;
end;

function TClienteDAO.ExecutaFiltro(FiltroNome, FiltroFanta,
  FiltroCPF_CNPJ: string): String;
var
  SqlFiltro:string;
begin
  SqlFiltro := '';
  if Length(FiltroCPF_CNPJ) > 0 then
  begin
    SqlFiltro := ExecutaFiltro(FiltroNome) + ExecutaFiltro(FiltroNome,FiltroFanta)
                 + ' and cli.cpf_cnpj like '
                 + QuotedStr('%') + ' :cpf_cnpj '
                 + QuotedStr('%');
  end;
  result := SqlFiltro;
end;

function TClienteDAO.Alterar(ClienteModelo: TClienteModel): Boolean;
var
  Qry:TZQuery;
begin
  Qry := DMConexao.CriaQuery;
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add(' update clientes set nome = :nome, raz_soc = :raz_soc, '+
              ' cpf_cnpj = :cpf_cnpj, id_cidade = :id_cidade, '+
              ' id_estado = :id_estado '+
              ' where id_cliente = :id_cliente');
  Qry.ParamByName('id_cliente').AsInteger := ClienteModelo.Id;
  Qry.ParamByName('nome').AsString := ClienteModelo.Nome;
  Qry.ParamByName('raz_soc').AsString := ClienteModelo.RazSoc;
  Qry.ParamByName('cpf_cnpj').AsString := ClienteModelo.CpfCnpj;
  Qry.ParamByName('id_cidade').AsInteger := ClienteModelo.Cidade;
  Qry.ParamByName('id_estado').AsInteger := ClienteModelo.Estado;
  try
    Qry.ExecSQL;
    FreeAndNil(Qry);
    Result := True;
  Except
    Result:= false;
  end;
end;

function TClienteDAO.Excluir(Id: Integer): Boolean;
var
  Qry:TZQuery;
begin
  Qry := DMConexao.CriaQuery;
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add(' delete from clientes where id_cliente = :id_cliente ');
  Qry.ParamByName('id_cliente').AsInteger := Id;
  try
    Qry.ExecSQL;
    FreeAndNil(Qry);
    Result := True;
  Except
    Result:= false;
  end;
end;

function TClienteDAO.ExecutaFiltro(FiltroNome, FiltroFanta, FiltroCPF_CNPJ,
  FiltroCod: string): String;
var
  SqlFiltro:string;
begin
  SqlFiltro := '';
  if Length(FiltroCod) > 0 then
  begin
    SqlFiltro := ExecutaFiltro(FiltroNome) + ExecutaFiltro(FiltroNome,FiltroFanta)
                 + ExecutaFiltro(FiltroNome, FiltroFanta, FiltroCPF_CNPJ)
                 + ' and cli.id_cliente like '
                 + QuotedStr('%') + ' :id_cliente '
                 + QuotedStr('%');
  end;
  result := SqlFiltro;
end;



function TClienteDAO.Inserir(ClienteModelo:TClienteModel): Boolean;
var
  Qry:TZQuery;
begin
  Qry := DMConexao.CriaQuery;
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add(' insert into clientes(nome, raz_soc, cpf_cnpj) values '
            + ' (:nome, :raz_soc, :cpf_cnpj)');
  Qry.ParamByName('nome').AsString := ClienteModelo.Nome;
  Qry.ParamByName('raz_soc').AsString := ClienteModelo.RazSoc;
  Qry.ParamByName('cpf_cnpj').AsString := ClienteModelo.CpfCnpj;
  try
    Qry.ExecSQL;
    Result := True;
  Except
    Result:= false;
  end;
end;

function TClienteDAO.RetornaClientes: TObjectList<TClienteModel>;
var
  Qry:TZQuery;
  ListaClientes :TObjectList<TClienteModel>;
  Cliente:TClienteModel;
begin
  Qry := DMConexao.CriaQuery;
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('select * from clientes');
  Qry.Open;

  if Qry.RecordCount > 0 then
  begin
    ListaClientes := TObjectList<TClienteModel>.Create;
    Cliente := TClienteModel.Create;
    Qry.First;
    while not(Qry.Eof) do
    begin
      Cliente.Id      := Qry.FieldByName('id_cliente').AsInteger;
      Cliente.Nome    := Qry.FieldByName('nome').AsString;
      Cliente.RazSoc  := Qry.FieldByName('raz_soc').AsString;
      Cliente.CpfCnpj := Qry.FieldByName('cpf_cnpj').AsString;
      Cliente.Cidade  := Qry.FieldByName('id_cidade').AsInteger;
      Cliente.Estado  := Qry.FieldByName('id_estado').AsInteger;
      ListaClientes.Add(Cliente);
      Qry.Next;
    end;
  end;
  Qry.Free;
  Result:=ListaClientes;
end;

end.
