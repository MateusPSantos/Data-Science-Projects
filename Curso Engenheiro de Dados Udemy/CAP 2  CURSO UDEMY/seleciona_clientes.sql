-- Seleciona cliente, produto, quantidade, valor total e data. o filtro é o ID cliente
select distinct  Cliente, Produto, Quantidade, ValorTotal, Data from Vendas$
INNER JOIN Clientes$ ON Clientes$.ClienteID = Vendas$.ClienteID
INNER JOIN ItensVendas$ ON ItensVendas$.VendasID = Vendas$.VendasID
INNER JOIN Produtos$ ON Produtos$.ProdutoID = ItensVendas$.ProdutoID
where Vendas$.ClienteID = 1;