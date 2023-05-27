# Data_Engineer_Assessment_Questions
*1. Problem Set 1 - Working with Regex
2. Problem Set 2 - SQL
3. Problem Set 3 - Working with BigQuery
4. Problem Set 4 - Building a Singer Tap

# **Problem Set I - Regex**

1. Write a query to extract the keywords from the **url** column. This query should be run on a Google Sheet. (**This should be done via SQL and not via by any formulas.)** Also, please note that it keywords - with multiple words - should be separated by space.
2. URLs	count_of_search_results	
https://play.google.com/store/search?q=messenger%20app&c=apps	50	
https://play.google.com/store/search?q=torch&c=apps	20	
https://play.google.com/store/search?q=personal%20loan%20app&c=apps	10	
https://play.google.com/store/search?q=pnr%20status%20in%20india&c=apps	10	

# **Problem Set 2 -  SQL**

Suppose there’s a log of security related incidences for about 60 days along with instance_id. Now, there are cases when the incident is reported but the incident_id is not. 

- Your goal is to find out - how many incidents have **incident_id** on a given day. How many percentage of incidents have a non-null id?
- The time is in UTC, so convert that into IST.
- What time of the day does the incident_id percentage is lower?

## **Problem Set 3 - Working with BigQuery**

Suppose you get a raw data of your website visitors and you are asked: 

1. Identify how many users came via a certain referrer url. 
2. Also, convert the ***visitStartTime*** property to IST.

💡 **Hint:** Group the number of rows grouped by hit→ referral property. (If the hit →referral is not present, please consider that as a null and group this too).


## **Problem Set 4 Building a Singer Tap**

Using [Singer.io](http://Singer.io) - build a simple tap which does the following:

1. Signup on https://appvector.io/users/get_token and get your token. 
2. Using this doc - fetch the review url of WhatsApp app.
