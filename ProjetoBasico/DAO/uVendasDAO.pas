unit uVendasDAO;

interface

uses uProdutosModel, uVendaModel,uDMConexaoDAO,DB,ZAbstractRODataset,
     ZAbstractDataset, ZDataset, generics.Collections,StrUtils, SysUtils;

type
  TVendasDAO = class
    public
      function Gravar(VendaModel:TVendasModel):Boolean;
      function RecuperaIdVenda(Qry:TZQuery):Integer;
  end;

implementation

{ TVendasDAO }

function TVendasDAO.RecuperaIdVenda(Qry:TZQuery):Integer;
begin
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('Select Last_Insert_Id() as CODVENDA');
  Qry.Open;
  result := Qry.FieldByName('CODVENDA').AsInteger;
end;

function TVendasDAO.Gravar(VendaModel: TVendasModel): Boolean;
  function InsereVenda(Qry:TZQuery):Boolean;
  var
    Sucesso:Boolean;
  begin
    Sucesso := true;
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('insert into venda_cab(id_cliente, data_venda, faturado, data_faturado )'+
               ' values(:id_cliente, :data_venda, :faturado, :data_faturado )');
    Qry.ParamByName('id_cliente').AsInteger := VendaModel.Cliente.Id;
    Qry.ParamByName('data_venda').AsDate    := VendaModel.DataVenda;
    Qry.ParamByName('faturado').AsInteger   := StrToInt(IfThen(VendaModel.Faturado = True,
                                                      '1','0'));
    Qry.ParamByName('data_faturado').AsDate := VendaModel.DataFaturado;
    try
      Qry.ExecSQL;      
    except
      Sucesso := False;
    end;
    Result := Sucesso;
  end;

  function InsereItensVenda(Qry:TZQuery;IdVenda:Integer;
                             ListaProdutos:TObjectList<TProdutosModel>):Boolean;
  var
    ProdutosModel:TProdutosModel;
    Sucesso:Boolean;
  begin
    Sucesso := True;
    for ProdutosModel in ListaProdutos do
    begin
      Qry.Close;
      Qry.SQL.Clear;
      Qry.SQL.Add('insert into venda_item(Qtd, valor_unitario, '+
                  ' desconto, id_venda_cab, id_produto ) '+
                 ' values(:Qtd, :valor_unitario, :desconto, :id_venda_cab, :id_produto )');
      Qry.ParamByName('Qtd').AsFloat              := ProdutosModel.Qtd;
      Qry.ParamByName('valor_unitario').AsFloat   := ProdutosModel.Custo;
      Qry.ParamByName('desconto').AsFloat         := ProdutosModel.Desconto;
      Qry.ParamByName('id_venda_cab').AsInteger   := IdVenda;
      Qry.ParamByName('id_produto').AsInteger     := ProdutosModel.Id;
      try
        Qry.ExecSQL;      
      except
        Sucesso := False;
      end;      
    end;
    Result := Sucesso;
  end;
var
  Qry:TZQuery;
  IdVenda:Integer;
  SucessoVenda,SucessoItemVenda:Boolean;
begin
 Qry := DMConexao.CriaQuery;
 try
  SucessoVenda:=InsereVenda(Qry);
  IdVenda := RecuperaIdVenda(Qry);
  SucessoItemVenda:=InsereItensVenda(Qry, IdVenda, VendaModel.ListaDeProdutos);
 finally
  Qry.Free;
 end;
 Result:=(SucessoVenda and SucessoItemVenda);
end;

end.
