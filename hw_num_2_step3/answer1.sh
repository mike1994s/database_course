#!/bin/bash
#sqlite3 m3_hw2.db "SELECT * FROM Conference"

sqlite3 m3_hw2.db "SELECT conference FROM
(SELECT conference,location FROM Paper GROUP BY conference, location) AS InTable GROUP BY conference HAVING COUNT(conference) > 1 ORDER BY conference ASC"

#sqlite3 m3_hw2.db "SELECT title FROM Paper WHERE conference NOT IN (SELECT value FROM Conference) AS InTable;"

#sqlite3 m3_hw2.db "SELECT conference, location FROM Paper GROUP BY conference HAVING COUNT(conference) > 1 ORDER BY conference" 
#sqlite3 m3_hw2.db "SELECT * FROM Paper GROUP BY conference, location HAVING COUNT(*) > 0"
