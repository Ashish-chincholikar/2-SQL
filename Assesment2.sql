--ASSESMENT 2

SELECT * FROM cd.bookings;

SELECT * FROM cd.facilities;

SELECT name , membercost from cd.facilities
WHERE membercost>0 ;


--4th 
SELECT facid , name , membercost , monthlymaintenance 
from cd.facilities
WHERE membercost>0 AND 
membercost<(monthlymaintenance/50.0)

--5th
SELECT * FROM cd.facilities WHERE name LIKE '%tennis%';

--6th

SELECT * FROM cd.facilities WHERE facid=1 OR facid=5;
--OR
SELECT * FROM cd.facilities WHERE facid in (1,5);

SELECT * FROM cd.members;
--7th
SELECT memid , surname , firstname ,joindate 
FROM cd.members
WHERE joindate >= '2012-09-01';

--8th
SELECT DISTINCT(surname) FROM cd.members 
ORDER BY surname limit 10;

--9th
SELECT joindate FROM cd.members
ORDER BY joindate desc limit 1 ;
--OR
SELECT MIN(joindate) FROM cd.members;

--10th
SELECT * FROM cd.facilities;

SELECT count(facid) FROM cd.facilities 
WHERE guestcost >=10;

--or
SELECT count(*) FROM cd.facilities 
WHERE guestcost >=10;


--11th
SELECT * FROM cd.bookings;

SELECT facid,SUM(slots) AS total_slots
From cd.bookings
WHERE starttime >='2012-09-01' AND
starttime <='2012-10-01'
GROUP BY facid ORDER BY SUM(Slots);

--12th

SELECT facid,SUM(slots) AS total_slots
FROM cd.bookings
GROUP BY facid 
HAVING SUM(slots) > 1000
ORDER BY SUM(Slots);

--13th

SELECT cd.bookings.starttime ,  cd.facilities.name 
FROM cd.facilities 
INNER JOIN cd.bookings 
ON cd.facilities.facid = cd.bookings.facid
WHERE cd.facilities.name IN ('Tennis Court1' , 'Tennis Court 2');


SELECT cd.bookings.starttime
FROM cd.facilities 
INNER JOIN cd.bookings 
ON cd.facilities.facid = cd.bookings.facid
WHERE facilities.faceid IN (0,1)
AND cd.bookings.starttime >= '2012-09-21'
AND cd.bookings.starttime < '2012-09-22'
ORDER BY cd.bookings.starttime ;


SELECT * FROM cd.bookings
INNER JOIN cd.members ON
cd.members.memid =  cd.bookings.memid
WHERE cd.members.firstname = 'David'
AND cd.members.surname = 'Farrell';





















