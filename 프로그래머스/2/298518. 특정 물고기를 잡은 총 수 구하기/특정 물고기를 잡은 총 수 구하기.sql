-- 코드를 작성해주세요
SELECT COUNT(*) AS FISH_COUNT
FROM FISH_NAME_INFO N
JOIN FISH_INFO I ON I.FISH_TYPE = N.FISH_TYPE
WHERE FISH_NAME = 'BASS' OR FISH_NAME = 'SNAPPER';