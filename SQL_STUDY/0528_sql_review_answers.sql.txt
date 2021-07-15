-- 문제 1. 정복자의 데이터를 갖고있는 산의 이름만 출력하라
select name from mountains where not first_human is null;
-- 문제 2. 첫 등반날짜가 1800년대인 산의 이름과 고도를 출력하라
select name, height_meters from mountains 
where first_ascent between '1800-01-01' and '1899-12-31';
-- 문제 3. 정복자 기준으로 오름차순으로 정렬하고, 이름이 같을 경우 산이름을 기준으로 오름차순 정렬하여 모든 데이터를 출력하라
select * from mountains order by first_human asc, name asc;
-- 문제 4. 정복자가 없는 산의 이름과 고도를 고도가 높은 순서대로 출력하라
select name, height_meters from mountains where first_human is null order by height_meters desc;
-- 문제5. 산이름 중간에 스페이스가 있는 산의 이름과 정복자를 출력하라
select * from mountains where name like '% %';