
WITH anime_rating AS(
    SELECT
        CONCAT(a.anime_id,'-','pk') as ar_id, --This is surrogate key for this table
        a.anime_id,
        ROUND(AVG(u.rating), 2) as avg_rating,
        COUNT(u.rating) as rated_by
    FROM
        {{ ref('stg_animes')}} a 
        JOIN
        {{ ref('int_users_rating')}} u using(anime_id)        
    GROUP BY
        a.anime_id
)

SELECT
   *
FROM
    anime_rating
