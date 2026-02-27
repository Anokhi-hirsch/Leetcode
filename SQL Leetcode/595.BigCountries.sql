-- leetcode 595.Big countries

--Using OR
SELECT name,population,area FROM World WHERE area>= 3000000 OR population>= 25000000;

--Using Union
SELECT name,population,area FROM World WHERE area>= 3000000
UNION
SELECT name,population,area FROM World WHERE population>= 25000000;

/* which one is better
 In this case OR is better.
Performance Comparison

OR Version Usually scans table once, Evaluates both conditions per row, Simple execution plan

UNION Version, Scans table twice, Then merges results, UNION also removes duplicates (extra work). 
UNION ALL duplicates would not be removed — but that would give incorrect results for this problem.

How to Remove Table Duplicates in OR Solution

SELECT DISTINCT name, population, area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;

If a country satisfies both conditions, UNION must deduplicate it.

Performance Summary
Situation	                                    Better Choice
Simple filter on one table	                  OR
Separate indexed columns, huge table	        Sometimes UNION
Combining different tables	                  UNION
Need duplicates kept	                        UNION ALL */
