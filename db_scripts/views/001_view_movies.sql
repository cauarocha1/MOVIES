CREATE OR REPLACE VIEW vw_movie_details AS
SELECT 
    m.movie_id,
    m.title AS movie_title,
    m.release_year,
    m.director,
    m.runtime_minutes,
    m.rating,
    g.genre_name,
    p.image_url,
    p.tagline,
    p.poster_type,
    p.primary_color
FROM tbl_movies m
LEFT JOIN tbl_movie_genres mg ON m.movie_id = mg.movie_id
LEFT JOIN tbl_genres g ON mg.genre_id = g.genre_id
LEFT JOIN tbl_posters p ON m.movie_id = p.movie_id;