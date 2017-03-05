#python courseParser that parse the class data of EECS department into LTRE fact format
# (rassert! (course catalog_num course_id (title) (topic)))
# (rassert! (meetingTime catalog_num course_id (meetingDays) startHr endHr startMin EndMin))
import requests
import json

params = {
  'key': '6SCzp7Xb8sgPELO1'
}
response = requests.get('http://api.asg.northwestern.edu/courses/?key=6SCzp7Xb8sgPELO1&term=4660&subject=EECS')
# calling response.json() returns the response as a Python dictionary or list
content= response.json()

print len(content)
#open the file
target = open('courses.lsp', 'w')

for i in range(0, len(content)):

	#parse the fact: time
        meetingDays = "("

	#if course meeting days do not exist, skip this course
	if content[i]['meeting_days'] is None :
		continue
	j = 0
        while (j <  len(content[i]['meeting_days'])):
                meetingDays =meetingDays + content[i]['meeting_days'][j:j+2]+ ' '
                j = j + 2;
        meetingDays = meetingDays + ")"

        #parse the meeting hr and min
        startHr = str(content[i]['start_time'])[:2]
        startMin = str(content[i]['start_time'])[3:]
        endHr = str(content[i]['end_time'])[:2]
        endMin = str(content[i]['end_time'])[3:]
        cid = str(content[i]['course_id'])
        cnbr = str(content[i]['catalog_num'])
        cnbr = cnbr[:3]
        if cnbr[0] > '3':
            continue
        target.write('(rassert! (meetingTime '+  cnbr+  ' '+ meetingDays + ' ' + startHr + ' ' + startMin + ' '+ endHr+ ' ' + endMin+'))')

	target.write('\n')
	#parse the fact for course
	target.write('(rassert! (course ' + cnbr+ ' (' + str(content[i]['title']) + ') (' + str(content[i]['topic']) + ')))')
	target.write('\n')

target.close()
