-- CREATE TABLE sales
-- (
--     Id INT PRIMARY KEY AUTO_INCREMENT,
--     Order_date DATE,
--     Count_product INT
-- );

-- INSERT INTO sales (Order_date, Count_product)
-- VALUES
-- ('2022-01-01', 156),
-- ('2022-01-02', 180),
-- ('2022-01-03', 21),
-- ('2022-01-04', 124),
-- ('2022-01-05', 341);

-- SELECT * FROM sales;

-- SELECT Id,
-- CASE
--     WHEN Count_product < 100
--         THEN 'Маленький заказ'
--     WHEN Count_product >= 100 and Count_product <= 300
--         THEN 'Средний заказ'
--     WHEN Count_product > 300
--         THEN 'Большой заказ'
-- END AS "Тип заказа"
-- FROM sales;

-- SELECT Id,
--     IF (Count_product < 100, 'Маленький заказ',
--         IF(Count_product >= 100 and Count_product <= 300,'Средний заказ',
--             IF(Count_product > 300, 'Большой заказ', null)))
--    AS "Тип заказа"
-- FROM sales;


CREATE TABLE orders
(
Id INT PRIMARY KEY AUTO_INCREMENT,
Employee_id varchar(3),
Amount decimal(5,2),
Order_status varchar(9)
);

INSERT INTO orders (Employee_id, Amount, Order_status)
VALUES
('E03', '15.00', 'OPEN'),
('E01', '25.50', 'OPEN'),
('E05', '100.70', 'CLOSED'),
('E02', '22.18', 'OPEN'),
('E04', '9.50', 'CANCELLED');

SELECT * FROM orders;

SELECT *,
CASE
    WHEN Order_status = 'OPEN'
        THEN 'Order is open in state'
    WHEN Order_status = 'CLOSED'
        THEN 'Order is closed'
    WHEN Order_status = 'CANCELLED'
        THEN 'Order is cancelled'
END AS "full_order_status"
FROM orders;

SELECT *,
    IF (Order_status = 'OPEN', 'Order is open in state',
        IF(Order_status = 'CLOSED','Order is closed',
            IF(Order_status = 'CANCELLED', 'Order is cancelled', null)))
AS "full_order_status"
FROM orders;