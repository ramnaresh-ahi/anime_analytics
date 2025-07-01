
WITH animes AS(
    SELECT
        *
    FROM
        {{ ref('int_animes')}}
)

SELECT 
    *
FROM
    animes