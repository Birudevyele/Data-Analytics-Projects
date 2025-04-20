create database ola;
use ola;
select * from bookings;

# Retrieve all successful bookings
select * from bookings where Booking_Status='Success';

# Find the avg ride distance for each vehicle type
select Vehicle_Type, avg(Ride_Distance) as avg_distance from bookings group by Vehicle_Type;

# Get the total number of canceled rides by customer
select count(*) from bookings where booking_Status = 'Canceled by Customer';

# Top 5 customers who booked the highest number of rides 
select Customer_ID, count(Booking_ID) as total_rides from bookings group by Customer_ID order by total_rides desc limit 5;

# Numbers of rides canceled by drivers due to personal & car-related issues
select count(*) from bookings where Canceled_Rides_by_Driver = 'personal & Car related issue';

# Maximum & Minimum driver ratings for prime Sedan bookings
select max(Driver_Ratings) as max_rating, min(Driver_Ratings) as min_rating from bookings where Vehicle_Type ='Prime Sedan';

# All rides where payment was made using UPI
select * from bookings where Payment_Method = 'UPI';

# Avg customer rating per vehicle type
select Vehicle_Type, avg(Customer_Rating) as avg_cutomer_rating from bookings group by Vehicle_Type;

# Total Booking value of rides completed successfully
select sum(Booking_Value) as Total_Successful_Value from  bookings where Booking_Status='Success';

# All incomplete rides along with the reason
select Booking_ID, Incomplete_Rides_Reason from bookings where Incomplete_Rides ='Yes';