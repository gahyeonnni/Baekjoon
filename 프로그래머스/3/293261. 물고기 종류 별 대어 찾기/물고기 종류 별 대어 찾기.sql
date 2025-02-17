-- 코드를 작성해주세요
SELECT I1.ID, N.FISH_NAME, I1.LENGTH
FROM FISH_INFO I1
JOIN (SELECT FISH_TYPE,FISH_NAME FROM FISH_NAME_INFO) N ON I1.FISH_TYPE = N.FISH_TYPE
WHERE LENGTH = (SELECT MAX(LENGTH) FROM FISH_INFO I2 WHERE I1.FISH_TYPE = I2.FISH_TYPE)
ORDER BY 1;