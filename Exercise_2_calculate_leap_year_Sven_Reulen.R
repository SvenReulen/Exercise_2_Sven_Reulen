# Sven Reulen
# Code from wikipedia
#if year is divisible by 400 then
#is_leap_year
#else if year is divisible by 100 then
#not_leap_year
#else if year is divisible by 4 then
#is_leap_year
#else
#not_leap_year

# Function 
is.leap <- function(year){
  if(is.numeric(year) == FALSE){
    x = 'wrong input'
  }else if(year < 1582){
    x = 'Years below 1582 are not returned'
  }else if(year %% 400 ==0){
    x = TRUE
  }else if(year %% 100 == 0){
    x = FALSE
  }else if(year %% 4 ==0) {
    x = TRUE
  }else{
    x = FALSE
  }  
  return(x) 
}
# Testing
# Year 2000 is leap year
is.leap(2000)
# Year 1999 is not a leap 
is.leap(1999)
# year 1804 is leap year
is.leap(1804)
# year 1805 is not a leap year
is.leap(1805)
# year 1500 should return error message
is.leap(1500)
# characters should not work
is.leap('appletree')