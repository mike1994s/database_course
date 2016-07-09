#!/bin/sh
sqlite3 ./m3_hw_task2.db "SELECT Conference.name FROM Conference WHERE Conference.conference_id NOT IN (SELECT Participant.conference_id FROM Participant WHERE Participant.researcher_id IN (SELECT Researcher.researcher_id FROM Researcher JOIN University ON Researcher.university_id = University.university_id WHERE University.name='Uni100')) ORDER BY Conference.name ASC"
