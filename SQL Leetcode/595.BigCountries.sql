-- leetcode 595.Big countries

--Using OR
SELECT name,population,area FROM World WHERE area>= 3000000 OR population>= 25000000;

--Using Union
SELECT name,population,area FROM World WHERE area>= 3000000
UNION
SELECT name,population,area FROM World WHERE population>= 25000000;

-- which one is better
-- 
