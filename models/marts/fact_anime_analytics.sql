
WITH analytics AS(
    SELECT
        CONCAT(r.ur_id,'/',u.user_id) as analytic_id, --This is a surrogate key for this table
        u.user_id,
        a.anime_id,
        r.ur_id
    FROM
        {{ ref('dim_animes')}} a 
        JOIN
        {{ ref('dim_rating')}} r USING(anime_id)
        JOIN
        {{ ref('dim_users')}} u USING(user_id)

)

SELECT 
    *
FROM
    analytics