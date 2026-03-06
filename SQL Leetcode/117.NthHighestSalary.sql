--117 nth highest salary
--using window function dense_rank and CTE 
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
  --creating temporary table CTE to rank salaries , using dense_rank window function
  with cte as (
  select *, Dense_rank() over (order by salary desc) as rnk from Employee
  )
  select distinct ifnull(salary,null) from cte where rnk=N --selecting distinct salary and if null then give back null
);
END
