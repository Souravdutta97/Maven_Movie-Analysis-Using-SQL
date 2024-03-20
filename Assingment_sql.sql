show databases;
use maven_movies;
show tables;
/*Identify the primary keys and foreign keys in the Maven Movies database. Discuss the differences.*/

/*  List all details of actors*/
select * from actor;
/* List all customer information from the database*/
select * from customer;
/* List different countries*/
select * from country;
/* Display all active customers.*/
select * from customer
where active ='True';
/* List all rental IDs for customers with ID 1.*/
select rental_id,customer_id from rental 
where customer_id =1;
/* Display all the films whose rental duration is greater than 5*/
select title,rental_duration from films
where rental_duration>5;
/* List the total number of films whose replacement cost is greater than $15 and less than $20*/
select title,replacement_cost from films
where replacement_cost>15 and replacement_cost<20;
/*  Display the count of unique first names of actors.*/
select count(distinct first_name) from actor;
/*Display the first 10 records from the customer table.*/
select * from customer
limit 10;
/* Display the first 3 records from the customer table whose first name starts with 'b'*/
select * from customer
where first_name='b%'
limit 3;
/* Display the names of the first 5 movies which are rated as 'G'.*/
select title,rating from films
where rating='G' limit 5;
/*  Find all customers whose first name starts with "a"*/
select * from customer
where first_name ='a%';
/*  Find all customers whose first name ends with "a"*/
select * from customer
where first_name ='%a';
/* Display the list of first 4 cities which start and end with 'a'*/
select city_name from city
where city_name ='a%' and '%a' limit 4;
/*  Find all customers whose first name contains "NI" in any position.*/
select * from customer
where first_name='NI%' and '%NI';
/* Find all customers whose first name has "r" in the second position*/
select * from customer
where first_name='_r%';
/* Find all customers whose first name starts with "a" and are at least 5 characters in length.*/
select * from customer
where first_name ='a%____';
/*  Find all customers whose first name starts with "a" and ends with "o".*/
select * from customer
where first_name ='a%' and '%o';
/* Get the films with PG and PG-13 ratings using the IN operator*/
select title,rating from films
where rating in ('PG', 'PG-13');
/* Get the films with lengths between 50 to 100 using the BETWEEN operator.*/
select title, length from films
where  length between 50 and 100;

/* Get the top 50 actors using the LIMIT operator.*/
select * from actor
limit 50;
/* Get the distinct film IDs from the inventory table*/
select distinct film_id from inventory;






