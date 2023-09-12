# SQL_-Social-Media-Analytics-and-User-Insights-Platform
<br><br>
![ER diagram]([path-to-your-image.png](https://github.com/jaisbhavana/SQL_-Social-Media-Analytics-and-User-Insights-Platform/blob/main/ER_diagram%5B1%5D.png))
 


<br><br>
**Task 1: Create ER Diagram or Schema** <br>
Description: In this task, you will design and create an Entity-Relationship (ER) diagram or a structured schema for the database. The diagram or schema should clearly define the database's tables, relationships between them, and the attributes each table contains. This visual representation is essential for understanding the database structure and its organization.<br>

**Task 2: Find the 5 Oldest Users**<br>
Description: To identify the five oldest users on the platform, you will query the database to retrieve user registration dates. Then, you'll sort these dates in ascending order and select the top five, indicating the users who have been registered on the platform for the longest duration.

**Task 3: Determine the Busiest Registration Day**
Description: To determine the day of the week when most users register on the platform, you will analyze the registration date data. By counting the number of registrations for each day of the week and finding the highest count, you can pinpoint the most popular registration day. This information is valuable for scheduling ad campaigns when user engagement is likely to be higher.<br>

**Task 4: Target Inactive Users for an Email Campaign**<br>
Description: This task involves identifying users who have never posted a photo on the platform. To accomplish this, you will query the database to retrieve user activity data and pinpoint users who haven't contributed any photos. This information can be used to target inactive users in an email ad campaign, encouraging them to engage more with the platform.

**Task 5: Find the User with the Most Likes on a Photo** <br>
Description: To determine the user who received the highest number of likes on a photo, you will query the database to gather data on photo likes. Then, you will identify the user whose photo garnered the most likes. This information is useful for contest-related purposes or recognizing popular users.<br>

**Task 6: Calculate the Average User Post Frequency** <br>
Description: In this task, you will calculate the average number of posts made by users on the platform. You will query the database to retrieve user post data and calculate the average number of posts per user. This metric provides insights into user engagement and posting behavior.

**Task 7: Determine the Top 5 Most Used Hashtags** <br>
Description: To find the top five most frequently used hashtags on the platform, you will query the database to analyze hashtag usage across posts. By counting the occurrences of each hashtag and selecting the top five, you can identify the most popular hashtags. This information helps a brand decide which hashtag to use for a post or campaign.

**Task 8: Identify Potential Bots** <br>
Description: This task involves identifying users who have liked every single photo on the platform. By querying the database for user activity, you can pinpoint users with this specific behavior. Identifying such users can help detect potential bot accounts or irregular user activity.

**Task 9: Find Celebrity Users** <br>
Description: To identify celebrity users on the platform, you will query the database to find users who have never commented on a photo. Celebrity users may not frequently engage with comments, so this task helps pinpoint them based on their distinct engagement patterns.

**Task 10: Identify Unique User Behavior** <br>
Description: In this task, you will find users who have exhibited unique engagement behavior. This includes users who have either never commented on any photo or have commented on every photo. Identifying such users can provide insights into diverse user behavior patterns on the platform.




**################# ASSIGNNMENT SOLUTION ####################################################** <br><br>

**# 1 Create an ER diagram or draw a schema for the given database.** <br><br>

# 2 We want to reward the user who has been around the longest, Find the 5 oldest users.
use ig_clone;<br><br>
 
select * from comments;<br>
select * from follows;<br>
select * from likes;<br>
select * from photo_tags;<br>
select * from photos;<br>
select * from tags;<br>
select * from users;<br>
 <br><br>
 select * from users<br>
 order by created_at<br>
 limit 5;<br>
 
**# 3 To understand when to  figure out the day of the week most users register on?** <br><br>
select * from users;<br>
select created_at, count(*) from users<br>
group by 1<br>
order by 2 desc;<br>


**# 4 To target inactive users in an email ad campaign, find the users who have never posted a photo.** <br><br>
select * from users;<br>
select * from photos;<br>

SELECT username<br>
FROM users<br>
LEFT JOIN photos ON users.id = photos.user_id<br>
WHERE photos.id IS NULL;<br>


**# 5 Suppose you are running a contest to find out who got the most likes on a photo. Find out who won?** <br><br>
select * from likes ;<br>
select * from photos;<br>
select * from users;<br>
<br>
SELECT users.id, photos.id, photos.image_url, count(*) as Likes_on_photo from users<br>
join photos on<br>
	users.id = photos.id<br>
join likes on<br>
	photos.user_id = likes.user_id <br>
group by photos.id<br>
order by Likes_on_photo<br>
limit 1;<br>

**# 6 The investors want to know how many times does the average user post.** <br><br>
select * from users;<br>
select * from photos;<br>

select users.username, count(photos.image_url) from users<br>
join photos on<br>
users.id = photos.id<br>
group by users.id <br>
order by 2 desc;<br>
<br><br>

**#7 A brand wants to know which hashtag to use on a post, and find the top 5 most used hashtags.** <br><br>

select * from photo_tags;<br>
select * from tags;<br>
<br>
select tags.tag_name, count(tag_name) as Total_hastag from tags<br><br>
join photo_tags on<br>
tags.id = photo_tags.tag_id<br>
group by tags.id<br>
order by Total_hastag;<br><br>
<br><br>

**# 8 To find out if there are bots, find users who have liked every single photo on the site.** <br>
select * from users;<br>
select * from likes;<br>

select users.id, username, count(users.id) as Liked_every_single_photo from users<br>
join likes on<br>
users.id = likes.user_id <br>
group by users.id<br>
having Liked_every_single_photo = (select count(*) from photos);<br>


**# 9 To know who the celebrities are, find users who have never commented on a photo.** <br><br>
select * from users;<br>
select * from comments;<br>
<br>
SELECT username,comment_text<br>
FROM users<br>
 LEFT JOIN comments ON users.id = comments.user_id<br>
GROUP BY users.id<br>
HAVING comment_text IS NULL;<br>

**# 10 Now it's time to find both of them together,find the users who have never commented on any photo or have commented on every photo.** <br><br>

 select * from users;<br>
 select * from comments;<br>



**These tasks require data querying and analysis skills, as well as the ability to draw insights from the database to inform various aspects of the platform, including user engagement, marketing campaigns, and content strategy.**
