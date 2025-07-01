
WITH users_details AS(
    SELECT
      mal_id as user_id,
      username,
      gender,
      CAST(birthday as date) as birthday,
      DATEDIFF(year,CAST(birthday as date), CURRENT_DATE) as age,
      location,
      CAST(joined as date) as joined,
      days_watched,
      CAST(watching as integer) as watching,
      CAST(completed as integer) as completed,
      CAST(on_hold as integer) as on_hold,
      CAST(dropped as integer) as dropped,
      CAST(plan_to_watch as integer) as plan_to_watch,
      CAST(total_entries as integer) as total_entries,
      CAST(rewatched as integer) as rewatched,
      CAST(episodes_watched as integer) as episodes_watched
    FROM
        {{ source('raw', 'users_details')}}

)

SELECT
    *
FROM
    users_details