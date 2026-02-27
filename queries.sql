
use ecommerce;

-- queries

-- Quantos pedidos foram feitos por cada tipo de cliente?
SELECT   c.clientType ,COUNT(o.idOrder)AS total_orders
	FROM orders o
	JOIN clients c  ON c.idClient = o.idClient
	LEFT JOIN client_pj pj  ON pj.idClient = c.idClient
	LEFT JOIN client_pf pf   ON pf.idClient = c.idClient
	GROUP BY   c.clientType;

-- quantos pedidos foram feitos por clientes, e se for pj mostrar o nome social, se não mostrar o nome da pf
select c.idClient, 
	case 
		when c.clientType = 'PJ' then pj.SocialName
		else pf.Fname
	end as clientName,
	count(o.idClient) as qtdPedido 
	from orders o
	join clients c on c.idClient = o.idClient
	left join client_pj pj on pj.idClient = c.idClient
	left join client_pf pf on pf.idClient = c.idClient
	group by c.idClient;



-- Algum vendedor também é fornecedor?
select * from seller se left join supplier sp on se.CNPJ = sp.CNPJ


-- Quais cliente mais compraram?
select idClient,count(*) as qtd from orders group by idclient order by qtd desc limit 5;

-- Qual produto mais vendido?
select p.Pname ,sum(po.poQuantity) as qtd from productOrder po join products p  where po.idProduct = p.idProduct group by po.idProduct order by qtd desc limit 5

-- Quantos pedidos estão em processamento?

select  COUNT(*) AS qtd
FROM orders
WHERE orderStatus = 'Em processamento'; 

-- Quantidade por status

SELECT orderStatus, COUNT(*) AS qtd
FROM orders
GROUP BY orderStatus;

-- Qual valor total recebido por tipo de pagamento?

select typePayment, sum(amount) as qnt from payments group by typePayment 

-- Estoque total por produto

select p.Pname, sum(quantity) as qtd from productstorage ps join products p on ps.idProduct = p.idProduct group by p.Pname order by qtd desc

-- Pedidos com múltiplos pagamentos

SELECT 
    o.idOrder,
    o.orderStatus,
    COUNT(p.idPayment) AS qtd_pagamentos
FROM orders o
JOIN payments p ON o.idOrder = p.idOrder
GROUP BY o.idOrder
having qtd_pagamentos >1


-- Qual categoria de produto mais vendeu?


select p.category,count(*) as qtd from products p  join productorder po on p.idProduct = po.idProduct group by category order by qtd desc



-- Quanto cada cliente gastou em cada produto
SELECT 
    c.idClient,
    p.Pname,
    SUM(pay.amount) AS total_pago
FROM clients c
JOIN orders o ON c.idClient = o.idClient
JOIN productOrder po ON o.idOrder = po.idOrder
JOIN products p ON po.idProduct = p.idProduct
JOIN payments pay ON o.idOrder = pay.idOrder
GROUP BY c.idClient, p.Pname
ORDER BY total_pago DESC;

-- Quanto cada cliente gastou
SELECT 
    c.idClient,    
    SUM(pay.amount) AS total_pago
FROM clients c
JOIN orders o ON c.idClient = o.idClient
JOIN productOrder po ON o.idOrder = po.idOrder
JOIN products p ON po.idProduct = p.idProduct
JOIN payments pay ON o.idOrder = pay.idOrder
GROUP BY c.idClient
ORDER BY total_pago DESC;