SELECT 
    FIRST_NAME,
    LAST_NAME,
    DEPARTMENT,
    'Highest' AS 'Variable_Rank'
FROM
    employees e
        JOIN
    variables v ON e.EMP_ID = v.EMP_REF_ID
WHERE
    v.VARIABLES_AMOUNT = (SELECT 
            MAX(VARIABLES_AMOUNT)
        FROM
            variables) 
UNION ALL SELECT 
    FIRST_NAME,
    LAST_NAME,
    DEPARTMENT,
    'Lowest' AS 'Variable_Rank'
FROM
    employees e
        JOIN
    variables v ON e.EMP_ID = v.EMP_REF_ID
WHERE
    v.VARIABLES_AMOUNT = (SELECT 
            MIN(VARIABLES_AMOUNT)
        FROM
            variables);