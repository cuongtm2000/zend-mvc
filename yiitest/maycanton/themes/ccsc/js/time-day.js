<!--
// Store the date In avarlable
d = new Date()
dateText = ""
// Get the cuurent day and convert it to the name of the day
dayValue = d.getDay()
if(dayValue == 0)
dateText += "Cn,  "
else if (dayValue == 1)
dateText += "T2,  "
else if (dayValue == 2)
dateText += "T3,  "
else if (dayValue == 3)
dateText += "T4,  "
else if (dayValue == 4)
dateText += "T5, "
else if (dayValue == 5)
dateText += "T6, "
else if (dayValue == 6)
dateText += "T7,  "
// Get the current date; if it's before 2000,add 1900
dateText +=d.getDate()
// lấy tháng hiện tại và chuyển nó sang tháng theo tiếng Việt Nam
monthValue =d.getMonth()
dateText += ""
if (monthValue == 0)
dateText += " / 1"
if (monthValue == 1)
dateText += " / 2"
if (monthValue == 2)
dateText += " / 3"
if (monthValue == 3)
dateText += " / 4"
if (monthValue == 4)
dateText += " / 5"
if (monthValue == 5)
dateText += " / 6"
if (monthValue == 6)
dateText += " / 7"
if (monthValue == 7)
dateText += " / 8"
if (monthValue == 8)
dateText += " / 9"
if (monthValue == 9)
dateText += " / 10"
if (monthValue == 10)
dateText += " / 11"
if (monthValue == 11)
dateText += " / 12"
// Get the current year; if it's before 2000, add 1900
if (d.getYear() < 2000)
dateText += " / " + (1900 + d.getYear())
else
dateText += " / " + (d.getYear())
// Get the current minutes
minuteValue = d.getMinutes()
if (minuteValue < 10)
minuteValue = "0" + minuteValue
// Get the current hours
hourValue = d.getHours()
// Customize the greeting based on the current hours

timeText =  "Chào mừng các bạn đến với Công ty TNHH Cơ khí công nghiệp Sài Gòn!"
// Write the greeting, the date, and the time to the page
-->