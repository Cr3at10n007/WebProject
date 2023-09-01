select * from usersTbl
select * from usersTbl order by YearBorn
select uName, fName, lName from usersTbl order by  YearBorn desc
select uName, series, Calculus, [Movement Problems] from usersTbl order by uName, YearBorn
select * from usersTbl where series='1'
select * from usersTbl WHERE YearBorn LIKE '2%'
select * from usersTbl where gender = 'Male'
select * from usersTbl where gender = 'Female'
select uName from usersTbl where pw LIKE '%<3%'
select fName, lName from usersTbl where city NOT IN ('Ashdod','Petah Tikva','Tel Aviv')