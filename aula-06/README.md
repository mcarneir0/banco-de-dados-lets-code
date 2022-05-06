## Atividade Principal 1:

### PRINCIPAL (700XP)

1. Quantos são os produtos que são da CategoryID 2?

    ```sql
    SELECT category_id, COUNT(*)
        FROM products
        GROUP BY category_id
        HAVING category_id = 2;
    ```

    **12 produtos**

2. Quantos produtos com SupplierID idêntico ao CategoryID e que custam mais do que 10?

    ```sql
    SELECT supplier_id, COUNT(*)
        FROM products
        WHERE unit_price > 10
        GROUP BY supplier_id, category_id
        HAVING supplier_id = category_id;
    ```

    **5 produtos**

3. Liste todos os nomes de produtos, suas "Units" e seus respectivos preços distintos que pertencem às categorias 1, 2 e 7;

    ```sql
    SELECT product_name, unit_price, units_in_stock, units_on_order, category_id
	    FROM products
	    WHERE category_id = 1 OR category_id = 2 OR category_id = 7
	    ORDER BY category_id, product_name;
    ```

4. Liste os 5 primeiros nomes de produtos que começam com "A" ou tenham "h" no meio do nome. Retorne em português os nomes das colunas;

    ```sql
    SELECT product_name AS nome_do_produto
        FROM products
        WHERE product_name LIKE 'A%' OR product_name LIKE '%h%'
        ORDER BY nome_do_produto
        LIMIT 5;
    ```

5. Dê a média de preços de todos os produtos das categorias entre 1 e 5. Arredonde para 1 casa decimal;

    ```sql
    SELECT ROUND(AVG(unit_price)::numeric, 1)
	    FROM products
	    WHERE category_id >= 1 AND category_id <= 5;
    ```

    **Média 27.5**

6. Liste a média de preços e a quantidade de produtos distintos por SupplierID; ordene pela média de preço, do maior para o menor, e só mostre os 5 primeiros;

    ```sql
    SELECT supplier_id, COUNT(*) AS qtde, ROUND(AVG(unit_price)::numeric, 2) AS media_de_preco
        FROM products
        GROUP BY supplier_id
        ORDER BY media_de_preco DESC
        LIMIT 5;
    ```

7. Liste os clientes com mais pedidos - mas somente aqueles que tiverem a partir de 2 pedidos. Corte explicitamente os clientes que compraram de funcionários sem ID;

    ```sql
    SELECT DISTINCT customer_id, COUNT(*)
        FROM orders
        GROUP BY customer_id, employee_id
        HAVING COUNT(*) > 1 AND employee_id IS NOT NULL
        ORDER BY COUNT(*) DESC, customer_id
    ```

8. Existe alguma cidade com mais de um código de área de telefone?

    ```sql
    SELECT city, SUBSTRING(phone, '\((.+)\)') AS codigo_area
        FROM customers
        WHERE SUBSTRING(phone, '\((.+)\)') IS NOT NULL
            AND (
                SELECT COUNT(*)
                FROM customers temp
                WHERE customers.city = temp.city
            ) > 1
        ORDER BY city;
    ```

    **Não, todas as cidades possuem apenas um código de área**

9. Gere uma relação com os nomes dos clientes, suas cidades e países, em ordem alfabética de nome;

    ```sql
    SELECT contact_name, city, country
        FROM customers
        ORDER BY contact_name;
    ```

10. Na relação do item (9), filtre pelos clientes da Alemanha, da França e da Espanha, excluindo-se os clientes que vivem nas capitais destes países;

    ```sql
    SELECT contact_name, city, country
        FROM customers
        WHERE (country LIKE 'Germany' OR country LIKE 'France' OR country LIKE 'Spain')
            AND (city NOT LIKE 'Berlin' AND city NOT LIKE 'Paris' AND city NOT LIKE 'Madrid')
        ORDER BY contact_name;
    ```

### EXTRA (300XP)

1. Liste o top 3 de funcionários com mais vendas no primeiro trimestre de 1997;

2. Conte todos os diferentes fornecedores por país. Agrupe categorizando os países em 'Americas' (se o país for USA, Brazil ou Canada) e 'Outros' senão. Detalhe, estamos buscando aqueles cujo DDD não comece com o dígito 1;

3. Tome a primeira letra de cada cidade (ex. "N" para "New Orleans"). Quais são as 5 iniciais de nomes de cidades que têm mais fornecedores associados (em ordem descrescente de fornecedores/cidade)?
