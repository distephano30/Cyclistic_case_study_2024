
-- cleaning process
-- delete rows where the end station value is null.
delete from trip_data
where end_lat is null or end_lng is null


-- ride count by user
select count(ride_id), member_casual
from trip_data
group by member_casual

-- ride count by rideable_type by user
select rideable_type, member_casual, count(ride_id) as Total_ride
from trip_data
group by rideable_type, member_casual

select extract (month from started_at) as Month, member_casual, count(ride_id) as Number_of_ride
from trip_data
group by month, member_casual
order by Number_of_ride desc

-- Number of ride by day of the week and by user type
select extract(isodow from started_at) as day_of_week, member_casual, count(ride_id)
from trip_data
group by day_of_week, member_casual

-- Top start_station by user type
select start_station_name, member_casual, count(ride_id) as Total_ride
from trip_data
group by start_station_name, member_casual
order by Total_ride desc
limit 15

-- Ride count by month and user type
select extract (month from started_at) as month,
	case when extract (month from started_at) = 1 then 'January'
	when extract (month from started_at) = 2 then 'February'
	when extract (month from started_at) = 3 then 'March'
	when extract (month from started_at) = 4 then 'April'
	when extract (month from started_at) = 5 then 'May'
	when extract (month from started_at) = 6 then 'June'
	when extract (month from started_at) = 7 then 'July'
	when extract (month from started_at) = 8 then 'August'
	when extract (month from started_at) = 9 then 'September'
	when extract (month from started_at) = 10 then 'October'
	when extract (month from started_at) = 11 then 'November'
	when extract (month from started_at) = 12 then 'December'
	end the_month,
member_casual,
count(ride_id) as Total_ride
from trip_data
group by month, member_casual
order by month

-- average ride duration by month and user type
select extract (month from started_at) as month,
	case when extract (month from started_at) = 1 then 'January'
	when extract (month from started_at) = 2 then 'February'
	when extract (month from started_at) = 3 then 'March'
	when extract (month from started_at) = 4 then 'April'
	when extract (month from started_at) = 5 then 'May'
	when extract (month from started_at) = 6 then 'June'
	when extract (month from started_at) = 7 then 'July'
	when extract (month from started_at) = 8 then 'August'
	when extract (month from started_at) = 9 then 'September'
	when extract (month from started_at) = 10 then 'October'
	when extract (month from started_at) = 11 then 'November'
	when extract (month from started_at) = 12 then 'December'
	end the_month,
member_casual,
avg(ended_at - started_at) as Average_ride_duration
from trip_data
group by month, member_casual
order by Average_ride_duration desc

-- average ride duration by month and user type and bike
select extract (month from started_at) as month,
	case when extract (month from started_at) = 1 then 'January'
	when extract (month from started_at) = 2 then 'February'
	when extract (month from started_at) = 3 then 'March'
	when extract (month from started_at) = 4 then 'April'
	when extract (month from started_at) = 5 then 'May'
	when extract (month from started_at) = 6 then 'June'
	when extract (month from started_at) = 7 then 'July'
	when extract (month from started_at) = 8 then 'August'
	when extract (month from started_at) = 9 then 'September'
	when extract (month from started_at) = 10 then 'October'
	when extract (month from started_at) = 11 then 'November'
	when extract (month from started_at) = 12 then 'December'
	end the_month,
rideable_type,
member_casual,
avg(ended_at - started_at) as Average_ride_duration
from trip_data
group by month, rideable_type, member_casual
order by Average_ride_duration desc

-- average ride duration by user type
select member_casual,
avg(ended_at - started_at) as Average_ride_duration
from trip_data
group by member_casual
order by Average_ride_duration desc

-- average ride duration by user type and bike
select rideable_type, member_casual,
avg(ended_at - started_at) as Average_ride_duration
from trip_data
group by rideable_type, member_casual
order by Average_ride_duration desc

-- average ride duration by user type by day
select extract(isodow from started_at) as day_of_week, member_casual,
avg(ended_at - started_at) as Average_ride_duration
from trip_data
group by member_casual, day_of_week
order by Average_ride_duration desc
