
WITH users_rating AS(
    SELECT 
        CONCAT(user_id, '-',anime_id) as rating_id, --This is surrogate key 
        user_id,
        username, 
        anime_id,
        anime_title,
        rating
    FROM
        {{ source('raw', 'users_score')}}

)

SELECT 
    *
FROM
    users_rating