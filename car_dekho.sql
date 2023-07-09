use cars;
-- Read data--
select * from car_dekho;
-- Total Cars --
select count(*) from car_dekho;
-- how many cars be avaiable in 2023 --
select count(*) from car_dekho where year= 2023;
-- how many cars are avaiable in 2020,2021,2022 --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- Print total of all cars by year, I do not see all details --
select year, count(*) from car_dekho group by year;
-- how many diesel cars will there be un 2020 --
select count(*) from car_dekho where year = 2020 and fuel = 'diesel';
-- how many petrol cars will be there in 2020;
select count(*)  from car_dekho where year =2020 and fuel ='Petrol'; 
-- Give a print of all fuel cars and come by all year --
select year, count(*) from car_dekho where fuel = 'CNG' group by year;         
-- year has more than 100 cars --
select year, count(*) from car_dekho group by year having count(*)>100;    
select year, count(8) from car_dekho group by year having count(*)<100;   
-- all cars details between 2015 to 2013 --
select count(*) from car_dekho where year between 2015 and 2023;
-- all cars detail between 2015 to 2023 --
select * from car_dekho where year between 2015 and 2023;
-- details of automatic transmission cars --
select * from car_dekho where transmission='Automatic';
select count(*) from car_dekho where transmission='Automatic'; 
-- Details of manual transmission cars lists --  
select * from car_dekho where transmission='Manual';      
select count(*) from car_dekho where transmission='Manual';        
-- Details of the first and second car owners list --
select * from car_dekho where owner='first owner';
select count(*) from car_dekho where owner='first owner';
select * from car_dekho where owner='second owner';             
select count(*) from car_dekho where owner='second owner';   
-- No of cars having more than 900CC engine capacity --
select * from car_dekho where engine>'900cc';
select count(*) from car_dekho where engine>'900cc';     