-- 코드를 입력하세요
SELECT O.ANIMAL_ID, O.NAME
FROM ANIMAL_OUTS O
WHERE NOT EXISTS (
    SELECT 1 FROM ANIMAL_INS I
    WHERE O.ANIMAL_ID = I.ANIMAL_ID
)
ORDER BY O.ANIMAL_ID, O.NAME;
