sql
/*
    # 181. Employees Earning More Than Their Managers
    # Difficulty: Easy
    # Link: https://leetcode.com/problems/employees-earning-more-than-their-managers/
    # Topics: Self JOIN

    # Problem:
    Write a solution to find the employees who earn more than their managers.

    # Schema:
    Employee (id int, name varchar, salary int, managerId int)

    # Note:
    managerId references the id of the employee's manager.
    If managerId is NULL, the employee has no manager.
*/

-- Solution: Using alias + self JOIN
SELECT 
    e1.name as Employee
FROM Employee as e1
INNER JOIN Employee as e2
    ON e1.managerId = e2.id
WHERE e1.salary > e2.salary;
