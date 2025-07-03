
use customer;

CREATE TABLE client_master (Client_No VARCHAR(6), Name VARCHAR(20), City VARCHAR(15), Pincode DECIMAL(6), State VARCHAR(10), Bal_due DECIMAL(10,2));

INSERT INTO Client_Master (Client_No, Name, City, Pincode, State, Bal_due)

   VALUES  ('C00001', 'Ivan 3ayross', 'Bombay', 400054, 'Maharashtra', 15000),
     ('C00002', 'Vanı ana Saitwal', 'Madras', 780001, 'Tamil Nadu', 0),
     ('C00003', 'Pram ada Jagyste', 'Bombay', 400057, 'Maharashtra', 5000),
     ('C00004', 'Basu Navindgi', 'Bombay', 400056, 'Maharashtra', 0),
     ('C00005', 'Ravi Sreedharan', 'Delhi', 100001, 'Maharashtra', 2000),
     ('C00006', 'Rukr ini', 'Bombay', 400050, 'Maharashtra', 0);
     
SELECT * FROM Client_Data;


SELECT * FROM Client_Data WHERE Bal_due > 0;


SELECT * FROM Client_Data WHERE State = 'NY';


UPDATE Client_Data SET Bal_due = 200.50 WHERE Client_No = 'C002';


DELETE FROM Client_Data WHERE Client_No = 'C003';
     
     