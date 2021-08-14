/*1)	show all arijit songs which are in suraj’s playlist and are released in or after 2007
*/
SELECT sname from song where sid in (SELECT DISTINCT sid from contains where
                                     pid IN (SELECT pid from lists WHERE id = '19104040') 
                                     AND sid IN (SELECT sid from (SELECT sid,sname,release_date from song 
                                                                  where artist_id = 'arijit' and release_date > '01/01/2007')d));

/*2)	All artist with song and its release date who have more than 3 likes in last 2 years.
 */
SELECT A.Artist_Name,S.Sname,s.Release_Date,d.no_of_likes FROM artist A, Song S,
(SELECT Sid,COUNT() as no_of_likes FROM likes GROUP BY Sid having COUNT() > 3)d where A.Artist_Id = S.Artist_id AND s.sid = d.sid 
    	AND DATEDIFF(NOW(),S.Release_Date) < 731
    	AND S.Sid IN (SELECT Sid FROM likes GROUP BY Sid having COUNT(*) > 3);.
/*
3)	No of Arijit songs liked by 19104028.
*/
SELECT L.Sid,d.song_name from likes L,(select s.sid as s_id,s.sname as song_name from artist A,song S
										where A.artist_id = S.artist_id
										and a.artist_id = 'arijit') as d 
where L.Sid = d.s_id and L.id = '19104028';
/*
4)	Show all the artists who have released songs after 2013, but not released any albums during that time period.
*/
SELECT *
FROM 
(
    SELECT artist_id
	FROM song
	WHERE RELEASE_Date>'2013-01-01'
) s
LEFT JOIN playlist p ON p.Created_By LIKE s.Artist_Id
GROUP BY p.Created_By
HAVING MAX(p.Creation_date)<'2013-01-01'

/*
5)	Show all those artists who have more than 3 cumulative likes on their songs, but are still young in the industry. (Debut within 5 years)
*/
SELECT a.*,COUNT(*) as Net_Likes, YEAR(CURRENT_TIMESTAMP)-YEAR(a.DebutDate) AS Time_In_Industry
FROM likes l
LEFT JOIN song s ON s.sid=l.sid
LEFT JOIN artist a ON s.Artist_id=a.Artist_Id
GROUP BY s.Artist_id
HAVING YEAR(a.DebutDate) > YEAR(CURRENT_TIMESTAMP)-6 AND Net_Likes>3
ORDER BY a.DebutDate DESC

/*
6)	Show all users who have added BTS songs only released after 2020 in their playlists.
*/
SELECT u.ID,
	CASE WHEN u.mname <> 'NULL'
    THEN CONCAT(u.Fname,' ',u.Mname,' ',u.Lname)
    ELSE CONCAT(u.Fname,' ',u.Lname)
    END AS Name,
    p.Pid,
    p.PName
FROM user u
	
        
	JOIN playlist p ON p.Created_By=u.ID
    JOIN 
    ( 
        SELECT c.pid
        FROM contains c
        WHERE c.sid IN 
        (
            SELECT s.sid
            FROM song s
            WHERE YEAR(s.Release_Date) >='2020' AND s.Artist_ID LIKE 'BTS'
        )
        AND c.sid NOT IN 
        (
            SELECT s.sid
            FROM song s
            WHERE YEAR(s.Release_Date) <'2020' AND s.Artist_ID LIKE 'BTS'
        )
    ) x on x.pid=p.pid

/*
7)	Most liked songs from each year
*/
SELECT YEAR(s.Release_Date),s.Sname,s.Artist_id,s.Lyrics,MAX(Total_Likes) Total_Likes
FROM song s
JOIN
(
    SELECT l.Sid,COUNT(l.Id) AS Total_Likes
    FROM likes l
    GROUP BY l.Sid
) x ON s.Sid=x.Sid
GROUP BY YEAR(s.Release_Date)

/*
8)	Artists with following more than 5 and sort them by no of total likes.
*/
SELECT a.*,COUNT(*) AS Followers, k.Total_Likes
FROM artist a
JOIN follow f ON a.Artist_Id=f.Artist_ID
JOIN
    ( 
    	SELECT y.Artist_id,SUM(x.lik) AS Total_Likes
		FROM song y
		JOIN
        (
	    	SELECT s.*,COUNT(*) AS lik
    		FROM song s
			JOIN likes l ON l.Sid=s.Sid
    		GROUP BY s.Sid
		) x ON y.Artist_id = x.Artist_id
        GROUP BY y.Artist_id
    ) k ON a.Artist_Id=k.Artist_Id
GROUP BY a.Artist_Id
HAVING Followers>5
ORDER BY k.Total_Likes DESC

/*
9) Triggers to delete all data related to a playlist when a playlist is deleted
*/

CREATE TRIGGER `Delete_Playlist_lists` BEFORE DELETE ON `playlist`
 FOR EACH ROW DELETE FROM lists 
WHERE EXISTS 
( 
    SELECT l.Id
    FROM lists l
    WHERE l.Id=old.Pid );

CREATE TRIGGER `Delete_Playlist_Song` BEFORE DELETE ON `playlist`
 FOR EACH ROW DELETE FROM contains
WHERE EXISTS ( SELECT c.Pid FROM contains c WHERE c.Pid = old.Pid );
/*
10) Triggers to delete all data related to a user when a user is deleted
*/
CREATE TRIGGER `Delete_User_Credentials` BEFORE DELETE ON `user`
 FOR EACH ROW DELETE FROM credential 
WHERE EXISTS ( SELECT c.ID FROM credential c WHERE c.ID = Old.id );

CREATE TRIGGER `Delete_User_Likes` BEFORE DELETE ON `user`
 FOR EACH ROW DELETE FROM likes 
WHERE EXISTS ( SELECT likes.Id FROM likes WHERE likes.ID = old.id );

CREATE TRIGGER `Delete_User_follow` BEFORE DELETE ON `user`
 FOR EACH ROW DELETE FROM follow 
WHERE EXISTS ( SELECT f.Artist_ID FROM follow f WHERE f.User_ID = old.id );

CREATE TRIGGER `Delete_User_lists` BEFORE DELETE ON `user`
 FOR EACH ROW DELETE FROM lists 
WHERE EXISTS 
( 
    SELECT l.Id
    FROM lists l
    WHERE l.Id=old.id );

CREATE TRIGGER `Delete_User_playlists` BEFORE DELETE ON `user`
 FOR EACH ROW DELETE FROM playlist 
WHERE EXISTS ( SELECT p.Pid FROM playlist p WHERE p.Created_By = old.id );

/*
11)  All artists and respective  songs released after 01/01/2010.
*/
 SELECT A.Artist_Name,S.Sname,S.Release_Date from artist A , song S where 
		A.Artist_Id = S.Artist_id AND
        s.Release_Date > '01/01/2010';

/*
12)  Function which will give number of songs of a singer.
*/
DELIMITER $$
CREATE FUNCTION no_of_songs(
ID varchar(50) )
RETURNS int
DETERMINISTIC
BEGIN
DECLARE temp int;
SELECT COUNT(*) INTO temp FROM song where Artist_id = ID;
RETURN (temp);
END$$
DELIMITER ;


/*
13)  Function to check if credentials are right or not.
*/
DELIMITER $$
CREATE FUNCTION check_credential(
userID varchar(50),
pass varchar(50) )
RETURNS varchar(50)
DETERMINISTIC
BEGIN
DECLARE temp int;
DECLARE ret varchar(20);
SELECT COUNT(*) INTO temp FROM credential where ID = userID AND pass = Password;
	IF temp = 1 THEN
		SET ret = 'YES';
    ELSEIF (temp>1 OR temp<=0) THEN
    SET ret = 'NO';
    END IF;
RETURN (ret);
END$$
DELIMITER ;
