
WITH animes AS(
    SELECT
        a.anime_id,
        a.name,
        a.english_name,
        a.regional_name,
        ar.avg_rating,
        ar.rated_by,
        a.genres,
        a.synopsis,
        a.type,
        a.episodes,
        a.aired,
        a.premiered,
        a.status,
        a.producers,
        a.licensors,
        a.studios,
        a.source,
        a.duration,
        a.image_url
        
    FROM
        {{ ref("stg_animes")}} a 
        JOIN
        {{ ref('int_anime_rating')}} ar USING(anime_id)
)

SELECT 
    *
FROM
    animes