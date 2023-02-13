/*VIEW 1: price_average_by_brand gives the average price of all phones released for
each year provided in the database organized by Brand name with averages descending. 
Properties Used: JOIN Clause x 1, Aggregation x 1*/
SELECT brand_name AS 'Brand', ROUND(AVG(phone_price),2) AS 'Average Price',
CONCAT(phone_model, ' at ', '$',MAX(phone_price)) AS 'Most Expensive Phone'
FROM phones
JOIN brands USING(brand_id)
GROUP BY brand_name 
ORDER BY phone_price DESC;
    
/*VIEW 2: high_storage_phones gives all phones with at least 1 gigbyte of max storage 
or more linking the phones table with phone_technology table using phones_phone_technology linking table
and organizing phones by brand
Properties Used: JOIN Clause x 1, Linking Table x 1, Filtering x 1*/
SELECT phone_model AS 'Phone Model', brand_name AS 'Brand', storage_upgrades AS 'Max Storage', 
phone_release_date AS 'Release Year'
FROM phones
JOIN brands USING(brand_id)
JOIN phones_phone_technology USING(phone_id)
JOIN phone_technology USING(tech_id)
WHERE storage_upgrades LIKE '%' 'GB' 
ORDER BY brand_name;

/*VIEW 3: less_than_300 uses a subquery to find all phones in the 
phone database with a price of less than 300 dollars if someone wants
to budget and find phones of specific prices
Properties Used: Subquery x 1, Filtering x 1, Join x 1*/
SELECT phone_model AS 'Phone Model', brand_name AS 'Brand', 
phone_price AS 'Price'
FROM phones
JOIN brands USING(brand_id)
WHERE phone_price IN (
	SELECT phone_price
        FROM phones
        WHERE phone_price < 300 )
ORDER BY phone_price;
    
/*VIEW 4: phone_best_camera filters each brands best camera phone by
taking the highest megapixel phone for each brand
Properties Used: JOIN Clause x 1, Aggregate x 1*/
SELECT phone_model AS 'Phone Name', MAX(resolution) AS 'Megapixels',
brand_name AS 'Brand'
FROM phones
OIN camera USING(camera_id)
JOIN brands USING(brand_id)
GROUP BY brand_name
ORDER BY resolution;

/*VIEW 5: large_battery_phones filters all phones in the database with greater
than 1000mAh battery sizes and gives the brands, release year and name.
Properties Used: JOIN x 1, Filtering x 1 */
SELECT phone_model AS 'Phone Name', brand_name AS 'Brand',
battery_upgrades AS 'Max Battery', phone_release_date AS 'Release'
FROM phone_technology
JOIN phones_phone_technology USING(tech_id)
JOIN phones USING(phone_id)
JOIN brands USING(brand_id)
WHERE battery_upgrades > '1000mAh'
ORDER BY battery_upgrades DESC;

/*VIEW 6: os_security_by_brand groups all brands and shows their most popular
operating system and most common security feature for all phones in the database.
Properties Used: JOIN x 1, Filtering x 1, Aggregate x 1 */
SELECT brand_name AS 'Brand', MAX(security_feature_name) AS 'Security Feature', 
os_name AS 'Operating System', app_store AS 'App Store'
FROM brands
JOIN phones USING(brand_id)
JOIN phones_db.security USING(security_id)
JOIN operating_systems USING(os_id)
GROUP BY brand_name;


	
