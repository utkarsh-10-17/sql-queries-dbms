create database customer;

CREATE TABLE customer(
First_Name varchar(15),
Last_name varchar(15),
Address varchar(35),
City varchar(15),
Country varchar(15),
Birth_date date);

INSERT INTO temp (First_Name, Last_name, Birth_date, Address, Country, City)
VALUES 
    ('John', 'Smith', '1969-12-12', 'WesternRoad', 'USA', 'NewYork'),
    ('David', 'Stonewall', '1954-01-03', 'ParkAvenue', 'USA', 'SanFrancisco'),
    ('Susan', 'Grrant', '1970-03-03', 'LordPark', 'USA', 'LosAngeles'),
    ('Paul', 'O.Neil', '1982-09-17', 'RedCross', 'USA', 'NewYork'),
    ('Stephen', 'Grrant', '1974-03-03', 'CarpetRoad', 'USA', 'LosAngeles');
    
select * from customer;
    
ALTER TABLE customer
ADD COLUMN gender VARCHAR(10);

ALTER TABLE customer
ADD COLUMN Email VARCHAR(10),
ADD COLUMN Telephone VARCHAR(12);

ALTER TABLE customer
MODIFY COLUMN address VARCHAR(80);




     


