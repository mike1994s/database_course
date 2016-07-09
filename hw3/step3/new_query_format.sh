#!/bin/sh
SELECT Conference.name FROM Conference JOIN Participant ON Conference.conference_id <> Participant.conference_id JOIN Researcher ON Researcher.researcher_id = Participant.researcher_id JOIN University ON University.university_id = Researcher.university_id WHERE University.name =? GROUP BY Conference.name ORDER BY Conference.name ASC
