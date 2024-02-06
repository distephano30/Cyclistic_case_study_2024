# Cyclistic_case_study_2024
Google data analytics course - Capstone project

Introduction
This is the capstone project fo the google data analytics course on coursera. In this project wrap-up, I will analyze a fictional cyclistic bike-share company
and come up with recommendations regarding their business task.

Scenario

As a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share company in Chicago. 
The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to
understand how casual riders and annual members use Cyclistic bikes diŦerently. From theseinsights, your team will design a new marketing strategy 
to convert casual riders into annual members. But ůrst, Cyclistic executives must approve your recommendations, so they must be
backed up with compelling data insights and professional data visualizations.

Company

Cyclistic is a company that launched in 2016 a bike-share offering. Customer can buy single-ride, full-day or annual membership 

Context and Business task

Cyclistic’s finance analyst have concluded that annual membership are much profitable than casual riders. The company now want to convert casual riders into members. 
In order to do that, however, the team needs to better understand how annual members and casual riders diŦer, why casual riders would buy a membership, and how digital media could aŦect their marketing tactics

Data sources used

We used the data source from the company’s data. The previous 12 months of cyclistic data are located at the amazon web service. 
https://divvy-tripdata.s3.amazonaws.com/index.html

Challenges

No price data
As we don’t have the casual ride nor annual membership prices, we couldn’t evaluate the outcome of having membership compare to casual for the whole year.

No distinct user info 
We have data for all ride in 2023 but we couldn’t figure out how many user exactly went for those rides


Cleaning process

In a spreadsheet, I looked for duplicate, there was none. I converted all the date field to the same format. In postgresql I removed any row that had an empty end_station or end gps coordiante field. 


Data presentation

Total Ride

We count, after cleaning 5,712,887 rides in 2023. 
2,053,307 rides were made by casuals.
3,659,580 rides were made by members. 
![Total ride by user category in 2023](https://github.com/distephano30/Cyclistic_case_study_2024/assets/9010976/fb6c9092-dec4-4ca9-9307-0ab54fb92ab0)


Total ride by month

Most of the rides, by either casuals or members are made during summer time, more precisely, june, july and august.
![Monthly Ride member](https://github.com/distephano30/Cyclistic_case_study_2024/assets/9010976/e38d6b73-7dac-4b78-b63f-fa405a12e958)
![Monthly Ride casual](https://github.com/distephano30/Cyclistic_case_study_2024/assets/9010976/210d4758-de44-4665-9edd-6d1ad72ef44c)

Total ride by day

We register the most ride by members on Wednesday, and Friday for casual
![Total ride by day casual](https://github.com/distephano30/Cyclistic_case_study_2024/assets/9010976/7f30574a-b895-4485-82cf-003d67977d7d)
![Total ride by day member](https://github.com/distephano30/Cyclistic_case_study_2024/assets/9010976/25a445ef-b36e-4ef1-8b0d-2bc281848468)


Ride time

Casuals ride last way more longer than members

Casuals ride for an average of 28:13
Members ride for an average of 12:31
![Average ride time ](https://github.com/distephano30/Cyclistic_case_study_2024/assets/9010976/72b2ba9f-3d7a-4e3f-8e8c-e352abfc2fef)



Bike used by customer

Members do not use docked bike while they use classic and electric bike almost evenly.
Casuals use all three different bikes, but docked bike are the one least used.

![Ride by rideable type](https://github.com/distephano30/Cyclistic_case_study_2024/assets/9010976/8b0b9071-ca9b-4144-973a-65261cd4cd0e)


Average ride time on each bike

Casual who use docked bike tend to spend the most time on those rides, more than 50 minutes

![Ride time by bike](https://github.com/distephano30/Cyclistic_case_study_2024/assets/9010976/c2c28d2b-a3ba-42ab-a0e3-1a451084a42b)


Key takeaways

More than 64% of the rides are made by members.
Casuals spend more than twice as much time as the members.
Although the average ride time is 28 minutes for casual, they spend more than 32 minutes in July and August.
There’s no big difference for member on the ride time regarding the month.

Friday and Saturday are the days of the week where the trip last longer for both, casual and members.
We register the most ride by members on Wednesday, and Friday for casuals.
We register the most ride by Both categories of user during the summer (June, July and August).

Members do not use docked bike and they use the others almost evenly.
Casuals use electric and classic evenly but the few who use docked bike spend the most time on those trips. Those trips have an average of twice the times spent on other bike. (more than 53 minutes).



Recommendations!

Get data from individual users to see how many trips a single user made within a month. We could see if a single member is doing way more trips than a casual.

Make a survey targeting the casual riders to get their insights on how they appreciate the membership plan and why they use bike share for. We can anticipate that way if a membership plan will fit the need of a casual.

Summer time is when we got the most rides, we need to have marketing strategy planned for summer. 










