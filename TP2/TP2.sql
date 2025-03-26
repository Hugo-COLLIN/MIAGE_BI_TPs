select count(*) AS NombreEnregistrements
FROM dbo.DiscountCodeByWeek;

select count(*) AS NombreEnregistrements
FROM dbo.CountryRegionBikes;

---


select top 10 *
from dbo.DiscountCodebyWeek;

select top 10 *
from dbo.CountryRegionBikes;

---


Select COLUMN_NAME, DATA_TYPE
from INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DiscountCodebyWeek';

Select COLUMN_NAME, DATA_TYPE
from INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'CountryRegionBikes';

---

select * from dbo.DiscountCodebyWeek
where DiscountCode is Null or WeekInYear is null;

select * from dbo.CountryRegionBikes
where PercentBikeRides is Null;

---

select DiscountCode, COUNT(*)
from dbo.DiscountCodebyWeek
group by DiscountCode
having count(*) > 1;

select CountryRegionCode, COUNT(*)
from dbo.CountryRegionBikes
group by CountryRegionCode
having count(*) > 1;

---------------------
select * from [AdventureWorks2022].[Sales].[SalesOrderHeader]

select 
TerritoryID as 'Territory ID',
SUM(SubTotal) as 'Sub Total',
SUM(TaxAmt) as 'Tax Amount',
SUM(TotalDue) as 'Total Due'
from [AdventureWorks2022].[Sales].[SalesOrderHeader]
group by TerritoryID
Order by 1 asc;

---


SELECT 
StoreAddress.City AS 'City',
StoreAddress.Name as 'Store Name',
StoreAddress.PostalCode as 'Postal Code',
SUM(StoreDemo.NumberEmployees) AS 'Number of employees'
from [AdventureWorks2022].[Sales].[vStoreWithAddresses] as StoreAddress
inner join [AdventureWorks2022].[Sales].[vStoreWithDemographics] as StoreDemo
on StoreAddress.BusinessEntityID = StoreDemo.BusinessEntityID
group by 
StoreAddress.City,
StoreAddress.Name,
StoreAddress.PostalCode
order by 1 ASC;