.header on
.mode column

CREATE TABLE mountains (
  name TEXT,  -- name의 type는 text
  height_meters INTEGER,  --height_meter의 type은 INTEGER
  first_ascent DATE  -- first_ascent의 type은 DATE
);

INSERT INTO mountains VALUES    -- data 
  ('Mount Everest', 8848, '1953-05-29'),
  ('Kilimanjaro', 5895, '1889-10-06'),
  ('Denali', 6190, '1913-06-07'),
  ('Chimborazo', 6263, '1880-01-04'),
  ('K2', 8611, '1954-07-31'),
  ('Piz Palü', 3900, '1835-08-12'),
  ('Cho Oyu', 8188, '1954-10-19');

.print 'average mountain height'
SELECT avg(height_meters) AS avg_height -- mountains란 데이터에서 height_meter의 평균을낸뒤 avg_height로 보여주기
FROM mountains; 

.print       #한줄띄우기
.print 'number of ascents per century'
SELECT
  strftime(     
    '%Y',
    date(first_ascent) 
  )  100 + 1 AS century, -- data를 100으로 나누고 +1한걸 century(세기)로 표현
  count(*) AS ascents  -- century의 갯수를 카운트해서 해당 ROW에 몇개인지 세줌
FROM mountains
GROUP BY century; --century를 기준으로 데이터를 보여줌 (주의할점은 select해온 데이터를 모두 적어줘야함 (count는 함수라서 무시))