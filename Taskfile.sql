show databases;
#create database task;
use task; 
create table if not exists Attribute_Dataset(
dress_id int,
style varchar(30),
Price varchar(20),	
Rating	decimal(2,1),
Size	varchar(10),
Season	varchar(30),
NeckLine  varchar(30),	
SleeveLength  varchar(30),	
waiseline    varchar(30),
Material     varchar(30),	
FabricType   varchar(30),
Decoration   varchar(30),
Pattern_type  varchar(30), 
Recommendation int)

show tables
describe  Attribute_Dataset;

create table if not exists Dress_Sales(
dress_id  int,	
`29-8-2013` int, 	
`31-8-2013` int,	
`02-09-2013` int,	
`04-09-2013` int,
`06-09-2013` int,	
`08-09-2013` int,	
`10-09-2013` int,	
`12-09-2013` int,	
`14-09-2013` int,	
`16-09-2013` int,	
`18-09-2013` int,
`20-09-2013` int,
`22-09-2013` int,
`24-09-2013` int,	
`26-09-2013` int,
`28-09-2013` int,	
`30-09-2013` int,
`02-10-2013` int,	
`04-10-2013` int,
`06-10-2013` int,
`08-10-2013` int,
`10-10-2013` int,	
`12-10-2013` int)

show tables
describe dress_sales;

describe  attribute_dataset;
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Attribute_DataSet.csv' INTO TABLE  Attribute_Dataset
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
SET sql_mode = ""
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\dress_sale.csv' INTO TABLE  Dress_Sales
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;
select * from attribute_dataset;
select * from Dress_Sales;

select * from attribute_dataset as a left join Dress_Sales as d on a.dress_id = d.dress_id;
select count(distinct(dress_id)) from attribute_dataset ;
select count(dress_id) from attribute_dataset where Recommendation = 0;
select  * from Dress_Sales where dress_id = 1006032852;


