-- Код создания
CREATE TABLE games_genres (
    gg_genre   VARCHAR(100) PRIMARY KEY
);

-- Пример ввода данных
INSERT INTO games_genres ( gg_genre ) VALUES ( 'тестовый жанр' );

-- Код создания
CREATE TABLE games (
    game_contract   NUMBER(10) PRIMARY KEY
        REFERENCES products ( prod_contract ),
    game_genre      VARCHAR(100) NOT NULL
        REFERENCES games_genres ( gg_genre ),
    game_pad        NUMBER(1) NOT NULL CHECK ( REGEXP_LIKE ( game_pad,
    '0|1' ) ),
    game_mult       NUMBER(1) NOT NULL CHECK ( REGEXP_LIKE ( game_mult,
    '0|1' ) )
);

-- Пример ввода данных
INSERT INTO games (
    game_contract,
    game_genre,
    game_pad,
    game_mult
) VALUES (
    1,
    'тестовый жанр',
    1,
    1
);