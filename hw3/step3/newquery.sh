#!/bin/sh
SELECT Conference.name FROM Conference 
	JOIN Participant 
		ON Conference.conference_id <> Participant.conference_id
	JOIN Researcher 
		ON Researcher.researcher_id = Participant.researcher_id 
	JOIN University 
		ON University.university_id = Researcher.university_id
 	WHERE University.name =? GROUP BY Conference.name ORDER BY Conference.name  ASC



db = sqlite3.connect('m3_hw_task2.db')
cur = db.cursor()

cur.execute("SELECT university_id FROM University WHERE name=?", (sys.argv[1],))
university_id = cur.fetchone()[0]

researchers = {}
cur.execute("SELECT researcher_id FROM Researcher WHERE university_id=?", (university_id,))
for row in cur.fetchall():
    researchers[row[0]] = True

conferences = {}
cur.execute("SELECT conference_id, researcher_id FROM Participant")
for row in cur.fetchall():
    if row[1] in researchers:
        conferences[row[0]] = True

result = []
cur.execute("SELECT conference_id, name FROM Conference")
for row in cur.fetchall():
    if row[0] not in conferences:
        result.append(row[1])

for c in sorted(result):
    print c

SELECT Conference.name FROM University LEFT OUTER JOIN Researcher ON University.university_id=Researcher.university_id LEFT OUTER JOIN Participant ON Researcher.researcher_id = Participant.researcher_id JOIN ON Participant.conference_id=Conference.conference_id WHERE University.name='Uni100' GROUP BY Conference.name 

