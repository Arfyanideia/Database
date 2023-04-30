#===================================================================================
#DML
#Table Supermarkets
INSERT INTO Supermarkets (invoice_id, branch) values ("750678428", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("226313081", "C");
INSERT INTO Supermarkets (invoice_id, branch) values ("631413108", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("123191176", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("373737910", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("699143026", "C");
INSERT INTO Supermarkets (invoice_id, branch) values ("355535943", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("315225665", "C");
INSERT INTO Supermarkets (invoice_id, branch) values ("665329167", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("692925582", "B");
INSERT INTO Supermarkets (invoice_id, branch) values ("351620822", "B");
INSERT INTO Supermarkets (invoice_id, branch) values ("529563974", "B");
INSERT INTO Supermarkets (invoice_id, branch) values ("365640515", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("252562699", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("829343910", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("299461805", "B");
INSERT INTO Supermarkets (invoice_id, branch) values ("656959349", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("765266951", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("329621586", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("319503348", "B");
INSERT INTO Supermarkets (invoice_id, branch) values ("300714605", "B");
INSERT INTO Supermarkets (invoice_id, branch) values ("371855789", "B");
INSERT INTO Supermarkets (invoice_id, branch) values ("273166619", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("636488204", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("549591358", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("227035010", "B");
INSERT INTO Supermarkets (invoice_id, branch) values ("649296775", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("189174241", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("145949061", "A");
INSERT INTO Supermarkets (invoice_id, branch) values ("848627243", "B");
INSERT INTO Supermarkets (invoice_id, branch) values ("871798483", "B");
INSERT INTO Supermarkets (invoice_id, branch) values ("149716266", "B");
UPDATE Supermarkets SET branch = "C" WHERE invoice_id = 149716266;
DELETE FROM Supermarkets WHERE invoice_id = 149716266;
SELECT * FROM Supermarkets;
#===================================================================================

#Table Location
INSERT INTO Location (branch, city) values ("A", "Yangon");
INSERT INTO Location (branch, city) values ("B", "Mandalay");
INSERT INTO Location (branch, city) values ("C", "Naypyitaw");
INSERT INTO Location (branch, city) values ("D", "Indonesia");
UPDATE Location SET city = "Jakarta" WHERE branch = "D";
DELETE FROM Location WHERE branch = "D";
SELECT * FROM Location;
#===================================================================================

#Table Product
INSERT INTO Product (product_id, product_line) values ("P1","Health and beauty");
INSERT INTO Product (product_id, product_line) values ("P2","Electronic accessories");
INSERT INTO Product (product_id, product_line) values ("P3","Home and lifestyle");
INSERT INTO Product (product_id, product_line) values ("P4","Sports and travel");
INSERT INTO Product (product_id, product_line) values ("P5","Food and beverages");
INSERT INTO Product (product_id, product_line) values ("P6","Fashion accessories");
INSERT INTO Product (product_id, product_line) values ("P7","Healty and travel");
UPDATE Product SET product_line = "Home and Food" WHERE product_id = "P7";
DELETE FROM Product WHERE product_id = "P7";
SELECT*FROM Product;
#===================================================================================

#Table Items
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("750678428", "P1", "2019-1-05", "74.69", "7", "5489.715");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("226313081", "P2", "2019-3-08", "15.28", "5", "80.22");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("631413108", "P3", "2019-3-03", "46.33", "7", "3405.255");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("123191176", "P1", "2019-1-27", "58.22", "8", "489.048");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("373737910", "P4", "2019-1-27", "86.31", "7", "6343.785");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("699143026", "P2", "2019-3-25", "85.39", "7", "6276.165");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("355535943", "P2", "2019-2-25", "68.84", "6", "433.692");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("315225665", "P3", "2019-2-24", "73.56", "10", "772.38");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("665329167", "P1", "2019-1-10", "36.26", "2", "76.146");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("692925582", "P5", "2019-2-20", "54.84", "3", "172.746");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("351620822", "P6", "2019-2-06", "14.48", "4", "60.816");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("529563974", "P2", "2019-3-09", "25.51", "4", "107.142");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("365640515", "P2", "2019-2-12", "46.95", "5", "2464.875");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("252562699", "P5", "2019-2-07", "43.19", "10", "453.495");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("829343910", "P1", "2019-3-29", "71.38", "10", "749.49");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("299461805", "P4", "2019-1-15", "93.72", "6", "590.436");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("656959349", "P1", "2019-3-11", "68.93", "7", "5066.355");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("765266951", "P4", "2019-1-01", "72.61", "6", "457.443");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("329621586", "P5", "2019-1-21", "54.67", "3", "1722.105");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("319503348", "P3", "2019-3-11", "40.3", "2", "84.63");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("300714605", "P2", "2019-2-25", "86.04", "5", "451.71");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("371855789", "P1", "2019-3-05", "87.98", "3", "277.137");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("273166619", "P3", "2019-3-15", "33.2", "2", "69.72");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("636488204", "P2", "2019-2-17", "34.56", "5", "181.44");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("549591358", "P4", "2019-3-02", "88.63", "3", "2791.845");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("227035010", "P3", "2019-3-22", "52.59", "8", "441.756");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("649296775", "P6", "2019-2-08", "33.52", "1", "35.196");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("189174241", "P6", "2019-3-10", "83.67", "2", "184.107");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("145949061", "P5", "2019-1-25", "88.36", "5", "463.89");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("848627243", "P1", "2019-3-15", "24.89", "9", "2352.105");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("871798483", "P6", "2019-2-25", "94.13", "5", "4941.825");
INSERT INTO Items (invoice_id, product_id, date_time, unit_price, quantity, total) values ("149716266", "P4", "2019-1-28", "78.07", "9", "7377.615");
UPDATE Items SET product_id = "P7" where invoice_id = "149716266";
DELETE FROM Items WHERE invoice_id = "149716266";
SELECT*FROM Items;
#===================================================================================