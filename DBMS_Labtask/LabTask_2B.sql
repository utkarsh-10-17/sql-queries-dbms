CREATE TABLE Product_Master (
    Product_No VARCHAR(6),
    Description VARCHAR(20),
    Profit_percentage NUMERIC(4,2),
    Unit_measure VARCHAR(10),
    Qty_on_hand INT(8),
    Reorder_level INT(8),
    Sell_price NUMERIC(8,2),
    Cost_price NUMERIC(8,2)
);

INSERT INTO Product_Master (Product_No, Description, Profit_Perrcentage, Unit_Measure, Qty_On_Hand, Reorder_Level, Sell_Price, Cost_Price)
     VALUES
     ('P00001', '1.44 Floppies', 5, 'Piece', 100, 20, 525, 500),
     ('P03453', 'Monitors', 6, 'Piece', 10, 5, 12000, 11280),
     ('P06734', 'Mouse', 5, 'Piece', 20, 20, 1050, 1000),
     ('P07865', '1.22 Floppies', 5, 'Piece', 100, 3, 525, 500),
     ('P07868', 'Keyboards', 2, 'Piece', 10, 1, 3150, 3050),
     ('P07885', 'CD Drive', 2.5, 'Piece', 10, 10, 5250, 5100),
     ('P07965', '540 HDD', 4, 'Piece', 10, 10, 8400, 8000),
     ('P07975', '1.44 Drive', 5, 'Piece', 10, 10, 1050, 1000),
     ('P08865', '1.22 Drive', 5, 'Piece', 2, 2, 1050, 1000);
     
SELECT * FROM Product_Master;

SELECT * FROM Product_Master
 WHERE Qty_on_hand < Reorder_level;

SELECT * FROM Product_Master
 WHERE Profit_percentage > 0.15;

UPDATE Product_Master 
SET Sell_price = 22.99 
WHERE Product_No = 'P001';

DELETE FROM Product_Master 
WHERE Product_No = 'P003';
     
     