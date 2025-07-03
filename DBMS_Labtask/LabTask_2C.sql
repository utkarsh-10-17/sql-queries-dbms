CREATE TABLE Salesman_Master (
    Salesman_No VARCHAR(6),
    Salesman_Name VARCHAR(35),
    Address1 VARCHAR(15),
    Address2 VARCHAR(15),
    S_City VARCHAR(15),
    Pincode INT(6),
    State VARCHAR(10),
    Sal_amt DECIMAL(8,2),
    Tgt_to_get DECIMAL(6,2),
    Ytd_sales DECIMAL(8,2),
    Remarks VARCHAR(15)
);

INSERT INTO Salesman_Master (Salesman_No, Salesman_Name, Address1, Address2, S_City, Pincode, State, Sal_amt, Tgt_to_get, Ytd_sales, Remarks)
     VALUES
     ('S00001', 'Kiran', 'A/14', 'Worli', 'Bombay', 400002, 'Maharashtra', 3000, 100, 50, 'Good'),
     ('S00002', 'Manish', '65', 'Nariman', 'Bombay', 400001, 'Maharashtra', 3000, 200, 100, 'Good'),
     ('S00003', 'Ravi', 'P-7', 'Bandra', 'Bombay', 400032, 'Maharashtra', 3000, 200, 200, 'Good'),
     ('S00004', 'Ashish', 'A/5', 'Juhu', 'Bombay', 400044, 'Maharashtra', 3000, 200, 150,'Good');
     
SELECT * FROM Salesman_Master;


SELECT * FROM Salesman_Master WHERE Sal_amt > 5000;


UPDATE Salesman_Master SET Ytd_sales = 13000.00 WHERE Salesman_No = 'S001';


DELETE FROM Salesman_Master WHERE Salesman_No = 'S00003';