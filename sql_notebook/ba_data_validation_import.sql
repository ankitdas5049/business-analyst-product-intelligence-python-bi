CREATE TABLE products (
    asin VARCHAR(30) PRIMARY KEY,
    amazon_category TEXT,
    category_id INTEGER,
    stars DOUBLE PRECISION,
    reviews INTEGER,
    price DOUBLE PRECISION,
    listprice DOUBLE PRECISION,
    isbestseller BOOLEAN,
    boughtinlastmonth INTEGER,
    discount_amount DOUBLE PRECISION,
    discount_percentage DOUBLE PRECISION,
    price_band VARCHAR(30),
    rating_category VARCHAR(30),
    demand_category VARCHAR(30),
    bestseller_label VARCHAR(30),
    value_index DOUBLE PRECISION,
    discount_category VARCHAR(30),
    price_premium VARCHAR(30),
    discount_flag VARCHAR(20)
);

COPY products
FROM 'C:\temp\product_fe_eda_final.csv'
DELIMITER ','
CSV HEADER;










