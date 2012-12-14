
// Store the date In avarlable
d = new Date()
dateText = ""
// Get the cuurent day and convert it to the name of the day
dayValue = d.getDay()
if(dayValue == 0)
dateText += "Chủ Nhật,  "
else if (dayValue == 1)
dateText += "Thứ Hai,  "
else if (dayValue == 2)
dateText += "Thứ Ba,  "
else if (dayValue == 3)
dateText += "Thứ Tư,  "
else if (dayValue == 4)
dateText += "Thứ Năm, "
else if (dayValue == 5)
dateText += "Thứ Sáu, "
else if (dayValue == 6)
dateText += "Thứ Bảy,  "
// Get the current date; if it's before 2000,add 1900
dateText += "ngày " + d.getDate()
// lấy tháng hiện tại và chuyển nó sang tháng theo tiếng Việt Nam
monthValue =d.getMonth()
dateText += ""
if (monthValue == 0)
dateText += " tháng 1"
if (monthValue == 1)
dateText += " tháng 2"
if (monthValue == 2)
dateText += " tháng 3"
if (monthValue == 3)
dateText += " tháng 4"
if (monthValue == 4)
dateText += " tháng 5"
if (monthValue == 5)
dateText += " tháng 6"
if (monthValue == 6)
dateText += " tháng 7"
if (monthValue == 7)
dateText += " tháng 8"
if (monthValue == 8)
dateText += " tháng 9"
if (monthValue == 9)
dateText += " tháng 10"
if (monthValue == 10)
dateText += " tháng 11"
if (monthValue == 11)
dateText += " tháng 12"
// Get the current year; if it's before 2000, add 1900
if (d.getYear() < 2000)
dateText += " năm " + (1900 + d.getYear())
else
dateText += " năm " + (d.getYear())
// Get the current minutes
minuteValue = d.getMinutes()
if (minuteValue < 10)
minuteValue = "0" + minuteValue
// Get the current hours
hourValue = d.getHours()
// Customize the greeting based on the current hours

timeText =  "Chào mừng các bạn đến với Cung Đàn Xưa. Let The Music Heal Your Soul !"
// Write the greeting, the date, and the time to the page
