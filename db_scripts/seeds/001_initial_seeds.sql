-- 2. SEED GENRES
INSERT INTO tbl_genres (genre_name) VALUES 
('Sci-Fi'), ('Action'), ('Drama'), ('Crime'), ('Thriller'),
('Comedy'), ('Horror'), ('Romance'), ('Fantasy'), ('Animation'), 
('Adventure'), ('Mystery'), ('Documentary'), ('Biography'), ('History'), 
('War'), ('Western'), ('Musical'), ('Family');

-- 3. SEED MOVIES
INSERT INTO tbl_movies (title, release_year, director, runtime_minutes, rating) VALUES 
('Inception', 2010, 'Christopher Nolan', 148, 'PG-13'),
('The Godfather', 1972, 'Francis Ford Coppola', 175, 'R'),
('The Dark Knight', 2008, 'Christopher Nolan', 152, 'PG-13'),
('Pulp Fiction', 1994, 'Quentin Tarantino', 154, 'R'),
('Spirited Away', 2001, 'Hayao Miyazaki', 125, 'PG'),
('Interstellar', 2014, 'Christopher Nolan', 169, 'PG-13'),
('Parasite', 2019, 'Bong Joon-ho', 132, 'R'),
('The Shining', 1980, 'Stanley Kubrick', 146, 'R'),
('Mad Max: Fury Road', 2015, 'George Miller', 120, 'R'),
('Forrest Gump', 1994, 'Robert Zemeckis', 142, 'PG-13'),
('Gladiator', 2000, 'Ridley Scott', 155, 'R'),
('Coco', 2017, 'Lee Unkrich', 105, 'PG'),
('Blade Runner 2049', 2017, 'Denis Villeneuve', 164, 'R');

-- 4. SEED JUNCTION TABLE (MOVIE-GENRE LINKS)
INSERT INTO tbl_movie_genres (movie_id, genre_id) VALUES 
(1, 1), (1, 2), (1, 5),
(2, 3), (2, 4),
(3, 2), (3, 4), (3, 5),
(4, 4), (4, 3),
(5, 10), (5, 11),
(6, 1), (6, 3),
(7, 5), (7, 6), (7, 3),
(8, 7),
(9, 2), (9, 11),
(10, 3), (10, 8),
(11, 2), (11, 11),
(12, 10), (12, 19),
(13, 1), (13, 12);

-- 5. SEED POSTERS
INSERT INTO tbl_posters (movie_id, image_url, tagline, poster_type, primary_color) VALUES 
(1, 'https://example.com/inception_main.jpg', 'Your mind is the scene of the crime.', 'Main', '#050A30'),
(1, 'https://example.com/inception_teaser.jpg', 'Dream within a dream.', 'Teaser', '#000000'),
(2, 'https://example.com/godfather_classic.jpg', 'An offer you can''t refuse.', 'Main', '#1A1A1A'),
(3, 'https://example.com/tdk_joker.jpg', 'Why so serious?', 'Character', '#3B0B0B'),
(3, 'https://example.com/tdk_batman.jpg', 'Welcome to a world without rules.', 'Main', '#0D1117'),
(4, 'https://img.com/pulp1.jpg', 'Girls like me don''t make invitations like this.', 'Main', '#E1AD01'),
(5, 'https://img.com/spirited.jpg', 'Nothing that happens is ever forgotten.', 'International', '#7BC4C4'),
(6, 'https://img.com/interstellar.jpg', 'Mankind was born on Earth. It was never meant to die here.', 'Main', '#010811'),
(7, 'https://img.com/parasite.jpg', 'Act like you own the place.', 'Teaser', '#2C2C2C'),
(8, 'https://img.com/shining.jpg', 'A masterpiece of modern horror.', 'Vintage', '#F9D71C'),
(9, 'https://img.com/madmax.jpg', 'What a lovely day.', 'Main', '#D2691E'),
(10, 'https://img.com/gump.jpg', 'The world will never be the same.', 'Main', '#FFFFFF'),
(11, 'https://img.com/gladiator.jpg', 'A Hero Will Rise.', 'Character', '#8B4513'),
(12, 'https://img.com/coco.jpg', 'The celebration of a lifetime.', 'Main', '#FF4500'),
(13, 'https://img.com/br2049.jpg', 'There are still pages left to be written.', 'Limited', '#FF00FF');