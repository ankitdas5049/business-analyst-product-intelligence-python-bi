-- ADVANCE QUERIES
-- Query A -- Rank Products by Price Within Each Category
SELECT
    asin,
    amazon_category,
    price,
    RANK() OVER (
        PARTITION BY amazon_category
        ORDER BY price DESC
    ) AS price_rank
FROM products
ORDER BY amazon_category, price_rank;


-- Query B TOP 3 HIGHEST RATED PRODUCTS FROM EVEVRY CATEGORY

WITH ranked_products AS
(
    SELECT
        asin,
        amazon_category,
        stars,
        boughtinlastmonth,
        price,
        ROW_NUMBER() OVER (
            PARTITION BY amazon_category
            ORDER BY stars DESC,
                     boughtinlastmonth DESC,
                     price DESC
        ) AS ranking
    FROM products
)

SELECT
    asin,
    amazon_category,
    stars,
    boughtinlastmonth,
    price,
    ranking
FROM ranked_products
WHERE ranking <= 3
ORDER BY amazon_category, ranking;


-- Query C -- PRICE QUARTILES 

SELECT
    asin,
    amazon_category,
    price,
    NTILE(4) OVER (
        ORDER BY price
    ) AS price_quartile
FROM products;


-- Query D -- PRODUCT SELLING ABOVE THEIR CATEGORY AVERAGE

WITH category_average AS
(
    SELECT
        amazon_category,
        AVG(price) AS average_price
    FROM products
    GROUP BY amazon_category
)

SELECT
    p.asin,
    p.amazon_category,
    p.price,
    ROUND(c.average_price::numeric, 2) AS category_average
FROM products p
JOIN category_average c
ON p.amazon_category = c.amazon_category
WHERE p.price > c.average_price
ORDER BY p.price DESC;



-- Query E -- CATEGORIES PERFORMING ABOVE MARKETPLACE AVERAGE 

WITH marketplace_average AS
(
    SELECT
        AVG(stars) AS avg_rating,
        AVG(boughtinlastmonth) AS avg_demand
    FROM products
)

SELECT
    p.amazon_category,
    ROUND(AVG(p.stars)::numeric, 2) AS category_rating,
    ROUND(AVG(p.boughtinlastmonth)::numeric, 2) AS category_demand
FROM products p
CROSS JOIN marketplace_average m
GROUP BY
    p.amazon_category,
    m.avg_rating,
    m.avg_demand
HAVING
    AVG(p.stars) > m.avg_rating
    AND AVG(p.boughtinlastmonth) > m.avg_demand
ORDER BY category_rating DESC;