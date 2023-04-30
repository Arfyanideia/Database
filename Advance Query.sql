#===================================================================================
use db_tubes;

# Advance Query
# Clause Functions
# Mengetahui kuantitas barang pemberian dan total pembelian disetiap invoice id
SELECT invoice_id, quantity, total
FROM Items;

# Aggregation Functions
SELECT AVG(unit_price), MAX(unit_price), MIN(unit_price), SUM(unit_price), COUNT(unit_price) FROM 
items;
SELECT AVG(quantity), MAX(quantity), MIN(quantity), SUM(quantity), COUNT(quantity) FROM 
items;
SELECT AVG(total), MAX(total), MIN(total), SUM(total), COUNT(total) FROM 
items;

# Bulan Januari 2019
SELECT * FROM Items
WHERE date_time BETWEEN '2019-01-01' AND '2019-01-31';
SELECT SUM(total), COUNT(total) FROM Items
WHERE date_time BETWEEN '2019-01-01' AND '2019-01-31';
    
# Bulan Februari 2019
SELECT * FROM Items
WHERE date_time BETWEEN '2019-02-01' AND '2019-02-28';
SELECT SUM(total), COUNT(total) FROM Items
WHERE date_time BETWEEN '2019-02-01' AND '2019-02-28';

# Bulan Maret 2019
SELECT * FROM Items
WHERE date_time BETWEEN '2019-03-01' AND '2019-03-31';
SELECT SUM(total), COUNT(total) FROM Items
WHERE date_time BETWEEN '2019-03-01' AND '2019-03-31';

#===========================================================
CREATE TABLE Pendapatan(
	no_ INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	bulan varchar(10),
    jumlah_pendapatan int(20)
	);
desc Pendapatan;
#===========================================================

#Tabel Pendapatan
INSERT INTO Pendapatan (bulan, jumlah_pendapatan) values ("Januari", "15632");
INSERT INTO Pendapatan (bulan, jumlah_pendapatan) values ("Februari", "9968");
INSERT INTO Pendapatan (bulan, jumlah_pendapatan) values ("Maret", "21885");
SELECT * FROM Pendapatan;

# GROUP BY
SELECT invoice_id, total FROM Items
GROUP BY total;

SELECT product_id, count(*)
FROM Items
GROUP BY product_id;

SELECT branch, count(*)
FROM Supermarkets
GROUP BY branch;

# Having
SELECT invoice_id, product_id, unit_price, quantity, total FROM Items
Having quantity >= 10;

SELECT invoice_id, product_id, unit_price, quantity, total FROM Items
Having unit_price >= 90;

SELECT invoice_id, product_id, unit_price, quantity, total FROM Items
Having total >= 5000;

# Join
SELECT t1.invoice_id, t2.branch, t1.product_id, t1.unit_price, t1.quantity, t1.total
FROM Items t1
JOIN Supermarkets t2 ON t1.invoice_id = t2.invoice_id;

SELECT t1.invoice_id, t1.branch, t2.city
FROM Supermarkets t1
JOIN Location t2 ON t1.branch = t2.branch;

SELECT t1.invoice_id, t1.branch, t2.city, t3.product_id, t3.unit_price, t3.quantity, t3.total
FROM Supermarkets t1
JOIN Location t2 ON t1.branch = t2.branch
JOIN Items t3 ON t1.invoice_id = t3.invoice_id;

# Subquery
SELECT *
FROM Items
where quantity=(
	SELECT max(quantity)
Invoice id dengan no (299461805 dan 871798483) adalah supermarkets dengan harga product yang paling mahal yaitu 94 per unit.     FROM Items
);

SELECT *
FROM Items
where unit_price=(
	SELECT max(unit_price)
    FROM Items
);

SELECT *
FROM Items
where total=(
	SELECT max(total)
    FROM Items
);