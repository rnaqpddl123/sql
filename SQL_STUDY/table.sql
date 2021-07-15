.header on
.mode column

CREATE TABLE mountains (
  name TEXT,
  height_meters INTEGER,
  first_ascent DATE,
  first_human TEXT
);

INSERT INTO mountains VALUES
  ('Mount Everest', 8848, '1953-05-29','KimAmugae'),
  ('Kilimanjaro', 5895, '1889-10-06','Sunyoung'),
  ('Denali', 6190, '1913-06-07', 'Moon'),
  ('Chimborazo', 6263, '1880-01-04','Sunyoung'),
  ('K2', 8611, '1954-07-31', NULL),
  ('Piz Palü', 3900, '1835-08-12', null),
  ('Cho Oyu', 8848, '1954-10-19', 'juyoung');

.print 'average mountain height'
SELECT avg(height_meters) AS avg_height
FROM mountains;

.print
.print 'number of ascents per century'
SELECT
  strftime(
    '%Y',
    date(first_ascent)
  ) / 100 + 1 AS century,
  count(*) AS ascents
FROM mountains
GROUP BY century;