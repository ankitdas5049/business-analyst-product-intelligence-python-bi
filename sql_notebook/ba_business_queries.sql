-- BUSINESS QUERIES

-- Query 1 -- MARKETPLACE OVERVIEW
-- How many products and unique categories are available in the Amazon marketplace?

SELECT
    COUNT(*) AS total_products,
    COUNT(DISTINCT category_id) AS total_categories
FROM products;


-- Query 2 -- Marketplace KPIs
-- What are the overall marketplace KPIs such as average selling price, 
-- average customer rating, average discount percentage, and average monthly demand?

SELECT
    ROUND(AVG(price)::numeric, 2) AS average_price,
    ROUND(AVG(stars)::numeric, 2) AS average_rating,
    ROUND(AVG(discount_percentage)::numeric, 2) AS average_discount,
    ROUND(AVG(boughtinlastmonth)::numeric, 2) AS average_monthly_demand
FROM products;


-- Query 3 -- BEST-SELLER PERCENTAGE

SELECT
    bestseller_label,
    COUNT(*) AS total_products,
    ROUND(
        (COUNT(*) * 100.0 / SUM(COUNT(*)) OVER ())::numeric,
        2
    ) AS percentage
FROM products
GROUP BY bestseller_label;


-- Query 4 -- TOP 10 MOST EXPENSIVE PRODUCTS

SELECT
    asin,
    amazon_category,
    price,
    stars
FROM products
ORDER BY price DESC
LIMIT 10;


-- Query 5 -- AVG SELLING PRIE BY CATEGORY

SELECT
    amazon_category,
    ROUND(AVG(price)::numeric, 2) AS average_price
FROM products
GROUP BY amazon_category
ORDER BY average_price DESC;


-- Query 6 -- PRODUCT DISTRIBUTION ACROSS PRICE BANDS

SELECT
    price_band,
    COUNT(*) AS total_products
FROM products
GROUP BY price_band
ORDER BY total_products DESC;


-- Query 7 -- CATEGORIES OFFERING HIGHEST DISCOUNTS

SELECT
    amazon_category,
    ROUND(AVG(discount_percentage)::numeric, 2) AS average_discount
FROM products
GROUP BY amazon_category
ORDER BY average_discount DESC;


-- Query 8 -- HIGHEST RATED CATEGORIES

SELECT
    amazon_category,
    ROUND(AVG(stars)::numeric, 2) AS average_rating
FROM products
GROUP BY amazon_category
HAVING COUNT(*) >= 20
ORDER BY average_rating DESC
LIMIT 20;


-- Query 9 -- BESTSELLERS VS NON BESTSELLERS

SELECT
    bestseller_label,
    ROUND(AVG(price)::numeric, 2) AS average_price,
    ROUND(AVG(stars)::numeric, 2) AS average_rating,
    ROUND(AVG(discount_percentage)::numeric, 2) AS average_discount,
    ROUND(AVG(boughtinlastmonth)::numeric, 2) AS average_monthly_demand
FROM products
GROUP BY bestseller_label;


-- Query 10 -- TOP 20 HIGHEST DEMAND PRODUCTS

SELECT
    asin,
    amazon_category,
    price,
    stars,
    boughtinlastmonth
FROM products
ORDER BY boughtinlastmonth DESC
LIMIT 20;


--Query 11 -- DEMAND ACROSS PRICE BANDS

SELECT
    price_band,
    ROUND(AVG(boughtinlastmonth)::numeric, 2) AS average_monthly_demand
FROM products
GROUP BY price_band
ORDER BY average_monthly_demand DESC;


--Query 12 -- Largest Product Categories

SELECT
    amazon_category,
    COUNT(*) AS total_products
FROM products
GROUP BY amazon_category
ORDER BY total_products DESC
LIMIT 20;



-- Query 13 -- CATEGORIES WITH HIGHEST BEST SELLERS

SELECT
    amazon_category,
    ROUND(
        (
            SUM(
                CASE
                    WHEN bestseller_label = 'Bestseller' THEN 1
                    ELSE 0
                END
            ) * 100.0 / COUNT(*)
        )::numeric,
        2
    ) AS bestseller_percentage
FROM products
GROUP BY amazon_category
ORDER BY bestseller_percentage DESC;


-- Query 14 -- HIGHEST DEMAND CATEGORIES

SELECT
    amazon_category,
    ROUND(AVG(boughtinlastmonth)::numeric, 2) AS average_monthly_demand
FROM products
GROUP BY amazon_category
ORDER BY average_monthly_demand DESC;


--Query 15 -- HIGHEST PERFORMING CATEGORIES

SELECT
    amazon_category,
    ROUND(AVG(stars)::numeric, 2) AS average_rating,
    ROUND(AVG(boughtinlastmonth)::numeric, 2) AS average_monthly_demand
FROM products
GROUP BY amazon_category
HAVING
    AVG(stars) > (SELECT AVG(stars) FROM products)
    AND
    AVG(boughtinlastmonth) > (SELECT AVG(boughtinlastmonth) FROM products)
ORDER BY average_rating DESC;


