-- 코드를 작성해주세요
SELECT DISTINCT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPERS D 
JOIN SKILLCODES S
WHERE S.CATEGORY LIKE 'Front End' and S.CODE = D.SKILL_CODE & S.CODE
ORDER BY 1;
