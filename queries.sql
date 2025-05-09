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
SELECT COUNT(o.order_date)
FROM mydb.public.orders AS o
WHERE o.order_date BETWEEN '1997-01-01' AND '1997-12-31'

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

-- 7. Cria um relatório para todos os pedidos de 1996 e seus clientes (152 linhas)
SELECT 
	o.customer_id,
	o.order_date
FROM mydb.public.orders AS o 
WHERE EXTRACT (YEAR FROM order_date) = 1996
GROUP BY customer_id, order_date;

-- 8. Cria um relatório que mostra o número de funcionários e clientes de cada cidade que tem funcionários (5 linhas)
SELECT
	e.city,
	COUNT(DISTINCT e.employee_id) as number_employees,
	COUNT(DISTINCT c.customer_id) as number_customers
FROM employees AS e 
LEFT JOIN customers AS c ON e.city = c.city
GROUP BY e.city;

-- 9. Cria um relatório que mostra o número de funcionários e clientes de cada cidade que tem clientes (69 linhas)

-- 10.Cria um relatório que mostra o número de funcionários e clientes de cada cidade (71 linhas)

-- 11. Cria um relatório que mostra a quantidade total de produtos encomendados.
-- Mostra apenas registros para produtos para os quais a quantidade encomendada é menor que 200 (5 linhas)

-- 12. Cria um relatório que mostra o total de pedidos por cliente desde 31 de dezembro de 1996.
-- O relatório deve retornar apenas linhas para as quais o total de pedidos é maior que 15 (5 linhas)