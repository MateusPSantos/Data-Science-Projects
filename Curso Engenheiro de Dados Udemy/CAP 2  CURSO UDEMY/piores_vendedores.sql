-- Seleciona o Top 5 piores vendedores
select TOP 5 Vendedores$.Vendedor, count(Vendas$.VendedorID) from Vendedores$
INNER JOIN Vendas$ ON Vendedores$.VendedorID = Vendas$.VendedorID
group by Vendedores$.Vendedor
ORDER BY count(Vendas$.VendedorID) ASC;