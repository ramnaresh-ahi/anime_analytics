
WITH animes AS(
    SELECT
       anime_id,
       name,
       english_name,
       other_name as regional_name,
       genres,
       synopsis,
       type,
       episodes,
       aired,
       premiered,
       status,
       producers,
       licensors,
       studios,
       source,
       duration,
       image_url
    FROM
        {{ source('raw', 'animes')}}

)

SELECT
    *
FROM
    animes