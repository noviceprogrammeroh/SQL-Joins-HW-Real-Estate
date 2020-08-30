/*
select * from apartments;
select * from tenants;

select price, floor, bedrooms from apartments;
select name, gender from tenants;
select * from buildings where name = 'Schmidt and Sons';
select * from buildings;
select * from buildings where id = 2;
select * from tenants;
select * from tenants where gender = 'Female';
select * from  tenants where gender = 'Male';
select * from  tenants where age > 60;
select * from apartments where bedrooms > 3;

SELECT tenants.name, tenants.age, apartments.bedrooms, apartments.price
FROM tenants
INNER JOIN apartments ON tenants.apartment_id = apartments.id;


SELECT tenants.name, tenants.age, apartments.bedrooms, apartments.price
FROM tenants
INNER JOIN apartments ON tenants.apartment_id = apartments.id;


select apartments.bedrooms, buildings.name, buildings.address
from apartments
inner join buildings
on apartments.building_id = buildings.id

select *
from buildings
inner join apartments
on apartments.building_id = buildings.id
*/


SELECT *
FROM tenants
LIMIT 10;
 

SELECT name, age, gender
FROM tenants
LIMIT 10;


SELECT *
FROM tenants
where age > 65
order by age asc;


SELECT *
FROM tenants
where id = 20;




SELECT *
FROM tenants
where id between 20 AND 21;

/*
SELECT doormen.name, doormen.building_id, apartments.floor, apartments.name, apartments.building_id
FROM doormen
INNER JOIN apartments ON doormen.building_id = apartments.building_id;
*/

SELECT doormen.name, buildings.address FROM doormen  INNER JOIN buildings ON doormen.building_id = buildings.id; 

DELETE 
FROM tenants
where age > 65;


/* check if records of tenants older than 65 were deleted*/
SELECT *
FROM tenants
order by age asc;

/* this query searches for all the doormen who work in building 3 and do not work the Night shift 
SELECT name, shift,  building_id
FROM doormen
where shift = 'Day' and building_id = 3; */


UPDATE doormen
SET shift = 'Night'
WHERE building_id =3;

/*this query checks the resuls and we see that the doormen where changed to the night shift
SELECT name, shift,  building_id
FROM doormen
where shift = 'Night' and building_id = 3; */

/*. this statement check the tenants who are assigned apartment_id 3
SELECT *
FROM tenants
where apartment_id=3;
*/

INSERT INTO tenants (id,name, age, gender, apartment_id)
VALUES (6,'Ron L. Stewart', 21, 'male', 3);



