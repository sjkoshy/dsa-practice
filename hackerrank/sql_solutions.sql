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
