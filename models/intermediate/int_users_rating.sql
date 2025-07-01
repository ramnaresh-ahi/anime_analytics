
WITH users_rating AS(
    SELECT
       CONCAT(user_id,'-',anime_id) as ur_id, --This is a surrogate key for this table
       u.user_id,
       r.anime_id,
       r.rating,
    FROM 
        {{ ref('stg_users_details')}} u
        JOIN
        {{ ref('stg_users_rating')}} r using(user_id)

)

SELECT 
    *
FROM
    users_rating