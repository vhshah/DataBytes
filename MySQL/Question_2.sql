SELECT 
    *
FROM
    employees e
        INNER JOIN
    designation d ON e.EMP_ID = d.EMP_REF_ID;
SELECT 
    *
FROM
    employees e
        LEFT JOIN
    variables v ON e.EMP_ID = v.EMP_REF_ID;  
SELECT 
    *
FROM
    employees e
        RIGHT JOIN
    variables v ON e.EMP_ID = v.EMP_REF_ID;     
    