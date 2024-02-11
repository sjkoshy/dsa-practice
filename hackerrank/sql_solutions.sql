-- Average Population of Each Continent: Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

select country.continent, floor(avg(city.population)) from country join city on country.code = city.countrycode group by continent;

-- Population Census: Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

select SUM(city.population) 
from city join country 
on city.countrycode = country.code 
where continent = 'Asia';

-- Weather Observation Station 5: Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

select city, (length(city)) from station order by length(city) asc, city limit 1;
select city, (length(city)) from station order by length(city) desc, city limit 1;

-- Weather Observation Station 3: Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

select distinct city from station where id % 2 = 0;

-- Weather Observation Station 6: Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

select distinct city from station where city like 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like 'u%'

-- Higher Than 75 Marks: Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

select name from students where marks > 75
order by right(name, 3), ID asc

-- Weather Observation Station 16: Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.

select round(lat_n, 4) from station 
where lat_n > 38.7780 
order by lat_n asc,
lat_n limit 1;

-- Weather Observation Station 2: Query the following two values from the STATION table:
---- The sum of all values in LAT_N rounded to a scale of  decimal places.
---- The sum of all values in LONG_W rounded to a scale of  decimal places.

select round(sum(lat_n),2), round(sum(long_w),2) from station

-- Weather Observation Station 15: Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than . Round your answer to  decimal places.

 select round(long_w,4) from station where lat_n < 137.2345
 order by lat_n desc,
 lat_n limit 1;
