SELECT 
    e.*
FROM
    employees e
        LEFT JOIN
    variables v ON e.EMP_ID = v.EMP_REF_ID
        JOIN
    designation d ON e.EMP_ID = d.EMP_REF_ID
WHERE
    EXTRACT(MONTH FROM d.AFFECTED_FROM) BETWEEN 6 AND 13
        AND e.DEPARTMENT LIKE '%a%'
ORDER BY v.VARIABLES_AMOUNT DESC;