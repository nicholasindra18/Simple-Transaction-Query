--1
USE aguitar

--2
SELECT guitarid AS GuitarID, guitarname AS GuitarName, brandname AS BrandName FROM msguitar
JOIN msbrand
ON msbrand.BrandID = msguitar.BrandID
WHERE guitarname LIKE '% %'

--3
SELECT staffid AS ID, UPPER(staffname) AS Name FROM msstaff
UNION
SELECT customerid AS ID, UPPER(customername) AS Name FROM mscustomer
WHERE YEAR(CustomerDOB) > 2000

--4
SELECT RIGHT(msguitar.guitarid, 3) AS 'Guitar Number', LOWER(guitarname) AS 'Lower Guitar Name' FROM msguitar
JOIN transactiondetail
ON transactiondetail.GuitarID = msguitar.GuitarID
WHERE quantity > 15
UNION
SELECT RIGHT(msguitar.guitarid, 3) AS 'Guitar Number', LOWER(guitarname) AS 'Lower Guitar Name' FROM msguitar
JOIN msbrand
ON msbrand.BrandID = msguitar.BrandID
WHERE brandname IN('Gibson', 'Taylor')

--5
ALTER TABLE mscustomer
ADD membership CHAR(3)

ROLLBACK;

--6
DELETE msguitar FROM msguitar
JOIN transactiondetail
ON transactiondetail.GuitarID = msguitar.GuitarID
JOIN transactionheader
ON transactionheader.TransactionID = transactiondetail.TransactionID
WHERE MONTH(transactiondate) = 8  AND DAY(transactiondate) > 10

--7
SELECT msstaff.staffid AS StaffID, staffname AS StaffName, guitarid as GuitarID, DAYNAME(transactiondate) AS 'Day Name' FROM msstaff
JOIN transactionheader
ON transactionheader.StaffID = msstaff.StaffID
JOIN transactiondetail
ON transactiondetail.TransactionID = transactionheader.TransactionID
WHERE quantity > 5 AND LOCATE('in', staffname) > 0

--8
SELECT guitarid AS GuitarID, brandname AS Brandname, guitartype AS GuitarType, guitarname AS GuitarName, guitarprice AS GuitarPrice FROM msguitar
JOIN msbrand
ON msbrand.BrandID = msguitar.BrandID
WHERE LENGTH(guitarname) > 5
ORDER BY guitarprice ASC

--9
CREATE VIEW Guitar_Detail AS
SELECT guitarname AS GuitarName, brandname AS BrandName, FORMAT(guitarprice, 2) AS 'Guitar Price', CURDATE() AS 'Last Update Date' FROM msguitar
JOIN msbrand
ON msbrand.BrandID = msguitar.BrandID

--10
CREATE VIEW View_All_Order AS
SELECT transactionheader.transactionid AS TransactionID, staffname AS StaffName, GROUP_CONCAT(guitarname) AS GuitarName, DATE_FORMAT(transactiondate, '%a %d %b %Y') AS TransactionDate FROM msstaff
JOIN transactionheader
ON transactionheader.StaffID = msstaff.StaffID
JOIN transactiondetail
ON transactiondetail.TransactionID = transactionheader.TransactionID
JOIN msguitar
ON msguitar.GuitarID = transactiondetail.GuitarID
WHERE WEEKDAY(transactiondate) = 5 OR WEEKDAY(transactiondate) = 6
GROUP BY transactionid, staffname, transactiondate