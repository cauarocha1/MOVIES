CREATE TABLE tbl_movies (
    movie_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year SMALLINT,
    director VARCHAR(150),
    runtime_minutes SMALLINT,
    rating VARCHAR(10)
);

CREATE TABLE tbl_genres (
    genre_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tbl_movie_genres (
    movie_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (movie_id, genre_id),
    CONSTRAINT fk_movie FOREIGN KEY(movie_id) REFERENCES tbl_movies(movie_id) ON DELETE CASCADE,
    CONSTRAINT fk_genre FOREIGN KEY(genre_id) REFERENCES tbl_genres(genre_id) ON DELETE CASCADE
);

CREATE TABLE tbl_posters (
    poster_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    movie_id INT NOT NULL,
    image_url TEXT NOT NULL,
    tagline VARCHAR(500),
    poster_type VARCHAR(30),
    primary_color CHAR(7),
    CONSTRAINT fk_movie_poster FOREIGN KEY(movie_id) REFERENCES tbl_movies(movie_id) ON DELETE CASCADE
);