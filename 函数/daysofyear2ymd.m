function [month,day] = daysofyear2ymd(days,year)

myday=[31,28,31,30,31,30,31,31,30,31,30,31];

if(mod(year,4)==0 && mod(year,100) ~=0) || mod(year,400)==0
    myday(2)=myday(2)+1;
end

month=1;
day=days;
while(day>myday(month))
    day=day-myday(month);
    month=month+1;   
end
