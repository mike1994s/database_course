#!/bin/sh
SELECT Conference.name FROM University JOIN Researcher ON University.university_id = Researcher.university_id JOIN Participant ON Researcher.researcher_id = Participant.researcher_id JOIN Conference ON Conference.conference_id <> Participant.conference_id WHERE University.name =? GROUP BY Conference.name  ORDER BY Conference.name  ASC
