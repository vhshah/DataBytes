SELECT 
    d.EMP_TITLE, e.SALARY + v.VARIABLES_AMOUNT AS 'TOT'
FROM
    employees e
        LEFT JOIN
    variables v ON e.EMP_ID = v.EMP_REF_ID
        JOIN
    designation d ON e.EMP_ID = d.EMP_REF_ID
WHERE
    e.SALARY + v.VARIABLES_AMOUNT = (SELECT 
            MAX(e.SALARY + v.VARIABLES_AMOUNT)
        FROM
            employees e
                LEFT JOIN
            variables v ON e.EMP_ID = v.EMP_REF_ID) 
UNION ALL SELECT 
    d.EMP_TITLE,
    e.SALARY + IFNULL(v.VARIABLES_AMOUNT, 0) AS 'TOT'
FROM
    employees e
        LEFT JOIN
    variables v ON e.EMP_ID = v.EMP_REF_ID
        JOIN
    designation d ON e.EMP_ID = d.EMP_REF_ID
WHERE
    e.SALARY + IFNULL(v.VARIABLES_AMOUNT, 0) = (SELECT 
            MAX(t1.sal)
        FROM
            (SELECT 
                (e.SALARY + IFNULL(v.VARIABLES_AMOUNT, 0)) AS sal
            FROM
                employees e
            LEFT JOIN variables v ON e.EMP_ID = v.EMP_REF_ID
            ORDER BY sal ASC
            LIMIT 2) AS t1);