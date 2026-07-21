create database superstore;

# 1. Easy Level Queries: 

# • Q1: Find the most senior employee based on job title.
select *
from employee
order by levels desc
limit 1;

# Q2: Determine which countries have the most invoices.
select billing_country , count(billing_country) as Total_Countries
from invoice
group by billing_country;
 
# Q3: Identify the top 3 invoice totals. 
select * from invoice
order by total desc
limit 3;
 
# Q4: Find the city with the highest total invoice amount to determine the best location for a promotional event. 
select billing_city , sum(total) as invoice_amount
from invoice
group by billing_city
order by invoice_amount desc
limit 1;

# Q5: Identify the customer who has spent the most money. 
select * from invoice;
select * from customer;
select c.first_name,c.last_name, c.customer_id , sum(i.total) as Total_spend 
from customer c
join invoice i
on c.customer_id = i.customer_id
group by c.customer_id
order by total_spend desc
limit 1;

#or

select c.customer_id, c.first_name, c.last_name, sum(i.total) as total_spend 
from customer c
join invoice i on c.customer_id = i.customer_id
group by c.customer_id, c.first_name, c.last_name
order by total_spend desc
limit 1;

# 2. Moderate Level Queries: 
# Q1: Find the email, first name, and last name of customers who listen to Rock music.
select c.email , c.first_name , c.last_name , g.name
from customer c
join invoice i on c.customer_id = i.customer_id
join invoice_line il on i.invoice_id = il.invoice_id
join track t on il.track_id = t.track_id
join genre g on t.genre_id = g.genre_id
where g.name = "Rock";
 
# Q2: Identify the top 10 rock artists based on track count. 
select a.name , count(t.track_id) as tracks, g.name 
from artist a 
join album2 al on a.artist_id = al.artist_id
join track t on al.album_id = t.album_id
join genre g on t.genre_id = g.genre_id
where g.name = "Rock"
group by a.name
order by tracks desc
limit 10;

# Q3: Find all track names that are longer than the average track length. 
select name , length(name)
from track 
where length(name) > (select avg(length(name)) from track);
# or 
select name , milliseconds
from track
where milliseconds > (select avg(milliseconds) from track);

# 3. Advanced Level Queries: 

# Q1: Calculate how much each customer has spent on each artist. 
with artist_earnings as ( select 
        il.invoice_id,al.artist_id,a.name as artist_name,
        SUM(il.unit_price * il.quantity) as amount_spent
    from invoice_line il
    join track t on il.track_id = t.track_id
    join album2 al on t.album_id = al.album_id
    join artist a on al.artist_id = a.artist_id
    group by il.invoice_id, al.artist_id, a.name)
select c.customer_id, c.first_name, c.last_name, ae.artist_name,
SUM(ae.amount_spent) as total_spent
from customer c
join invoice i on c.customer_id = i.customer_id
join artist_earnings ae on i.invoice_id = ae.invoice_id
group by c.customer_id, c.first_name, c.last_name, ae.artist_name
order by c.customer_id, total_spent desc;

# Q2: Determine the most popular music genre for each country based on purchases. 
with genre_ranking as ( select i.billing_country as country, g.name as genre_name,
        sum(il.quantity) as total_purchases,
        row_number() over(partition by i.billing_country order by sum(il.quantity) desc) as rank_num
    from invoice_line il
    join invoice i on il.invoice_id = i.invoice_id
    join track t on il.track_id = t.track_id
    join genre g on t.genre_id = g.genre_id
    group by i.billing_country, g.name )
select country, genre_name, total_purchases
from genre_ranking
where rank_num = 1
order by country;

# Q3: Identify the top-spending customer for each country. 
with customer_spending_ranking as ( select c.country, c.customer_id, c.first_name, c.last_name,
        sum(i.total) as total_spent,
        row_number() over(partition by c.country order by sum(i.total) desc) as rank_num
    from customer c
    join invoice i on c.customer_id = i.customer_id
    group by c.country, c.customer_id, c.first_name, c.last_name)
select country, customer_id, first_name, last_name, total_spent
from customer_spending_ranking
where rank_num = 1
order by country;