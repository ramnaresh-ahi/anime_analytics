
WITH users AS(
    SELECT
        user_id,
        username,
        COALESCE(gender, 'Unknown') as gender,
        birthday,
        age,
        COALESCE(location, 'Unknown') as location,
        joined,
        days_watched,
        watching,
        completed,
        on_hold,
        dropped,
        plan_to_watch,
        total_entries,
        rewatched,
        episodes_watched
    FROM
        {{ ref('stg_users_details')}}

)

SELECT 
    *
FROM
    users