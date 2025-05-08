-- 1. Obter todas as colunas das tabelas Clientes, Pedidos e Fornecedores

SELECT * FROM mydb.public.products
SELECT * FROM mydb.public.orders
SELECT * FROM mydb.public.suppliers

-- 2. Obter todos os Clientes em ordem alfabética por país e nome

-- Ordem alfabética por país
SELECT  c.region
FROM mydb.public.customers AS c
ORDER BY c.region ASC;

-- Ordem alfabética por nome
SELECT  c.contact_name
FROM mydb.public.customers AS c
ORDER BY c.contact_name ASC;

-- 3. Obter os 5 pedidos mais antigos
SELECT  o.order_date
FROM mydb.public.orders AS o
ORDER BY o.order_date ASC
LIMIT 5;

-- 4. Obter a contagem de todos os Pedidos feitos durante 1997
SELECT  o.order_date, COUNT(*)
FROM mydb.public.orders AS o
WHERE o.order_date BETWEEN '1997-01-01' AND '1997-12-31'
GROUP BY o.order_date
ORDER BY o.order_date ASC;

-- 5. Obter os nomes de todas as pessoas de contato onde a pessoa é um gerente, em ordem alfabética
SELECT  c.contact_name,
		c.contact_title
FROM mydb.public.customers AS c
WHERE c.contact_title = 'Sales Manager'
ORDER BY c.contact_name ASC;

-- 6. Obter todos os pedidos feitos em 19 de maio de 1997
SELECT  o.order_date
FROM mydb.public.orders AS o
WHERE o.order_date = '1997-05-19' 