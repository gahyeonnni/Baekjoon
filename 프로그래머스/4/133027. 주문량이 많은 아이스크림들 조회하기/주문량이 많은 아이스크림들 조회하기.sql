-- 코드를 입력하세요 

SELECT F.FLAVOR
FROM FIRST_HALF F
JOIN (SELECT SHIPMENT_ID, FLAVOR, SUM(TOTAL_ORDER) AS STO FROM JULY GROUP BY FLAVOR) J ON F.FLAVOR = J.FLAVOR
GROUP BY F.FLAVOR
ORDER BY (F.TOTAL_ORDER + J.STO) DESC
LIMIT 3; 