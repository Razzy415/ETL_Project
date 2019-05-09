
-- getting Prices for all cards with set name
SELECT p.lowprice,c.name,s.set_name from price p  inner join set_description s on s.productid=p.productid
inner join core_card_objects c on c.oracle_id=s.oracle_id ;

-- get the low price value between range 1 to 5 dollars
SELECT p.lowprice,c.name,s.set_name from price p  inner join set_description s on s.productid=p.productid
inner join core_card_objects c on c.oracle_id=s.oracle_id  where p.lowprice between 1.00 and 5.00 ;

-- get the cards and set name that are reprint =true
SELECT c.name,s.set_name from price p  inner join set_description s on s.productid=p.productid
inner join core_card_objects c on c.oracle_id=s.oracle_id  where s.reprint = "True";

-- Select count of cards by set name

SELECT count(c.name),s.set_name from core_card_objects c  inner join set_description s on c.oracle_id=s.oracle_id group by s.set_name




