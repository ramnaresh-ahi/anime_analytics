
WITH rating AS(
    SELECT
        *
    FROM
        {{ ref('int_users_rating')}}
)

SELECT 
    *
FROM
    rating