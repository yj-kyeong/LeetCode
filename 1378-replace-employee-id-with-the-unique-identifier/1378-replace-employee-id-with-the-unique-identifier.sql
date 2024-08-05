# Write your MySQL query statement below
SELECT IFNULL(U.unique_id, null) AS unique_id, E.name
FROM Employees E
LEFT JOIN EmployeeUNI U
ON E.id = U.id