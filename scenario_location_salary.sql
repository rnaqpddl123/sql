

-- 미션문제 (최한승님 문제)
-- 각 location_id 별 평균 salary 조회

--loacation_id기준
select loc.location_id, avg(salary)
from locations loc, employees e,departments dp
where loc.location_id =  dp.location_id and dp.department_id = e.department_id
group by loc.location_id
order by loc.location_id asc;

--city기준
select  loc.city, avg(salary)
from locations loc, employees e,departments dp
where loc.location_id =  dp.location_id and dp.department_id = e.department_id
group by loc.city
order by loc.city asc;

--select에 city와 location을 같이넣으면 에러가뜸
-- select  loc.city,loc.location, avg(salary)
-- from locations loc, employees e,departments dp
-- where loc.location_id =  dp.location_id and dp.department_id = e.department_id
-- group by loc.city
-- order by loc.city;


--최한승님 풀이
select l.LOCATION_ID, avg(e.SALARY) as 평균월급
from locations l inner join departments d on l.LOCATION_ID = d.LOCATION_ID
				 inner join employees e on d.DEPARTMENT_ID = e.DEPARTMENT_ID
group by l.LOCATION_ID;

select l.LOCATION_ID, avg(e.SALARY) as 평균월급, l.city
from locations l inner join departments d on l.LOCATION_ID = d.LOCATION_ID
				 inner join employees e on d.DEPARTMENT_ID = e.DEPARTMENT_ID
group by l.LOCATION_ID;