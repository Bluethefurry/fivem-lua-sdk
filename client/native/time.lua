-- SET_CLOCK_TIME(12, 34, 56);
-- @module native
-- @submodule time
-- @see SET_CLOCK_TIME
-- @usage void SET_CLOCK_TIME(int hour, int minute, int second);
-- @param hour int
-- @param int
-- @return void
function SetClockTime() end

-- @todo
-- @module native
-- @submodule time
-- @see PAUSE_CLOCK
-- @usage void PAUSE_CLOCK(BOOL toggle);
-- @param toggle BOOL
-- @return void
function PauseClock() end

-- @todo
-- @module native
-- @submodule time
-- @see ADVANCE_CLOCK_TIME_TO
-- @usage void ADVANCE_CLOCK_TIME_TO(int hour, int minute, int second);
-- @param hour int
-- @param int
-- @return void
function AdvanceClockTimeTo() end

-- @todo
-- @module native
-- @submodule time
-- @see ADD_TO_CLOCK_TIME
-- @usage void ADD_TO_CLOCK_TIME(int hours, int minutes, int seconds);
-- @param hours int
-- @param int
-- @return void
function AddToClockTime() end

-- Gets the current ingame hour, expressed without zeros. (09:34 will be represented as 9)
-- @module native
-- @submodule time
-- @see GET_CLOCK_HOURS
-- @usage int GET_CLOCK_HOURS();
-- @param undefined
-- @return int
function GetClockHours() end

-- Gets the current ingame clock minute.
-- @module native
-- @submodule time
-- @see GET_CLOCK_MINUTES
-- @usage int GET_CLOCK_MINUTES();
-- @param undefined
-- @return int
function GetClockMinutes() end

-- Gets the current ingame clock second. Note that ingame clock seconds change really fast since a day in GTA is only 48 minutes in real life.
-- @module native
-- @submodule time
-- @see GET_CLOCK_SECONDS
-- @usage int GET_CLOCK_SECONDS();
-- @param undefined
-- @return int
function GetClockSeconds() end

-- @todo
-- @module native
-- @submodule time
-- @see SET_CLOCK_DATE
-- @usage void SET_CLOCK_DATE(int day, int month, int year);
-- @param day int
-- @param int
-- @return void
function SetClockDate() end

-- Gets the current day of the week.  0: Sunday 1: Monday 2: Tuesday 3: Wednesday 4: Thursday 5: Friday 6: Saturday
-- @module native
-- @submodule time
-- @see GET_CLOCK_DAY_OF_WEEK
-- @usage int GET_CLOCK_DAY_OF_WEEK();
-- @param undefined
-- @return int
function GetClockDayOfWeek() end

-- @todo
-- @module native
-- @submodule time
-- @see GET_CLOCK_DAY_OF_MONTH
-- @usage int GET_CLOCK_DAY_OF_MONTH();
-- @param undefined
-- @return int
function GetClockDayOfMonth() end

-- @todo
-- @module native
-- @submodule time
-- @see GET_CLOCK_MONTH
-- @usage int GET_CLOCK_MONTH();
-- @param undefined
-- @return int
function GetClockMonth() end

-- @todo
-- @module native
-- @submodule time
-- @see GET_CLOCK_YEAR
-- @usage int GET_CLOCK_YEAR();
-- @param undefined
-- @return int
function GetClockYear() end

-- @todo
-- @module native
-- @submodule time
-- @see GET_MILLISECONDS_PER_GAME_MINUTE
-- @usage int GET_MILLISECONDS_PER_GAME_MINUTE();
-- @param undefined
-- @return int
function GetMillisecondsPerGameMinute() end

-- Gets system time as year, month, day, hour, minute and second.  Example usage:  	int year; 	int month; 	int day; 	int hour; 	int minute; 	int second;  	TIME::GET_POSIX_TIME(&year, &month, &day, &hour, &minute, &second);
-- @module native
-- @submodule time
-- @see GET_POSIX_TIME
-- @usage void GET_POSIX_TIME(int* year, int* month, int* day, int* hour, int* minute, int* second);
-- @param year int*
-- @param int*
-- @return void
function GetPosixTime() end

-- Gets local system time as year, month, day, hour, minute and second.  Example usage:  int year; int month; int day; int hour; int minute; int second; or use std::tm struct  TIME::GET_LOCAL_TIME(&year, &month, &day, &hour, &minute, &second);
-- @module native
-- @submodule time
-- @see GET_LOCAL_TIME
-- @usage void GET_LOCAL_TIME(int* year, int* month, int* day, int* hour, int* minute, int* second);
-- @param year int*
-- @param int*
-- @return void
function GetLocalTime() end