create database ola;
use ola;
select * from bookings;
#1. 1. Retrieve all successful bookings:
create view successful_bookings as
select * from bookings
where Booking_Status = 'Success';
select * from successful_bookings;

#2. Find the average ride distance for each vehicle type:
create view avg_ride_distance_each_vehicle as
select Vehicle_Type, avg(Ride_Distance)
as avg_distance from Bookings
group by Vehicle_Type;
select * from avg_ride_distance_each_vehicle;

#3. Get the total number of cancelled rides by customers:
create view canceled_rides_by_customers as
select count(*) from bookings
where Booking_Status = 'Canceled by Customer';
select * from canceled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
select * from bookings;
create view top_five_customer as
select Customer_ID, count(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides desc limit 5;
select * from top_five_customer;

#5.  Get the number of rides cancelled by drivers due to personal and car-related issues:
create view canceled_by_driver_due_personal_issue as
select count(*) from bookings
where Canceled_Rides_by_Driver = 'Personal and Car related issue';
select * from canceled_by_driver_due_personal_issue;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from bookings;
create view max_min_ratings as
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_ratings
from bookings
where Vehicle_Type = 'Prime Sedan';
select * from max_min_ratings;

#7. Retrieve all rides where payment was made using UPI:

create view upi_payments as
select * from bookings
where Payment_Method = 'UPI';
select * from upi_payments;

#8. Find the average customer rating per vehicle type:
create view avg_Cust_ratings as
select Vehicle_Type, avg(Customer_Rating) as avg_cust_ratings
from bookings
group by Vehicle_Type;
select * from avg_Cust_ratings;

#9. Calculate the total booking value of rides completed successfully:
select * from bookings;
create view successful_booking as
select sum(Booking_Value) as total_successful_value
from bookings
where Booking_Status = ' Success';
select * from successful_booking;

#10. List all incomplete rides along with the reason:
select * from bookings;
create view incomplete_Ride_reason as
select Booking_ID, Incomplete_Rides_Reason
from bookings
where Incomplete_Rides = 'Yes';
select * from incomplete_Ride_reason;

#               \\//                   THE END                   \\//

#1. Retrieve all successful bookings:
select * from successful_bookings;

#2. Find the average ride distance for each vehicle type:
select * from avg_ride_distance_each_vehicle;

#3. Get the total number of cancelled rides by customers:
select * from canceled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
select * from top_five_customer;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select * from canceled_by_driver_due_personal_issue;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from max_min_ratings;

#7. Retrieve all rides where payment was made using UPI:
select * from upi_payments;

#8. Find the average customer rating per vehicle type:
select * from avg_Cust_ratings;

#9. Calculate the total booking value of rides completed successfully:
select * from successful_booking;

#10. List all incomplete rides along with the reason: 
select * from incomplete_Ride_reason;






























