sql
/*
    # 175. Combine Two Tables
    # Difficulty: Easy
    # Link: https://leetcode.com/problems/combine-two-tables/
    # Topics: JOIN, NULL handling

    # Problem:
    Write a solution to report the first name, last name, city, and state 
    of each person in the Person table. If the address of a person is not 
    present in the Address table, report null instead.

    # Schema:
    Person (personId int, firstName varchar, lastName varchar)
    Address (addressId int, personId int, city varchar, state varchar)
*/

-- Solution: LEFT JOIN
SELECT 
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM Person as p
LEFT JOIN Address as a
    ON p.personId = a.personId;
