-- 코드를 입력하세요
SELECT I.INGREDIENT_TYPE, SUM(TOTAL_ORDER) AS TOTAL_ORDER
FROM FIRST_HALF F
JOIN (SELECT FLAVOR, INGREDIENT_TYPE FROM ICECREAM_INFO) I ON I.FLAVOR = F.FLAVOR
GROUP BY I.INGREDIENT_TYPE;