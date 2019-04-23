create table genres (
  genre_name varchar(30),
  constraint pk_genres primary key (genre_name)
) engine = innodb;
create table movies (
  movie_id numeric(6),
  constraint pk_movies primary key (movie_id),
  constraint check_mi check (movie_id > 0),
  movie_name varchar(50) not null,
  studio varchar(50) not null,
  release_year numeric(4) not null,
  constraint check_ry check (release_year > 1888),
  movie_country varchar(30),
  running_time numeric(4, 2) not null,
  constraint check_rt check (running_time > 0),
  genre varchar(30) not null,
  constraint fk_genres foreign key (genre) references genres (genre_name)
) engine = innodb;
create table persons (
  person_id numeric(6),
  constraint pk_persons primary key (person_id),
  constraint check_pi check (person_id > 0),
  full_name varchar(50) not null,
  person_country varchar(30) not null,
  born date not null,
  death date
) engine = innodb;
create table creators (
  movie numeric(6) not null,
  constraint fk_movies foreign key (movie) references movies (movie_id),
  constraint check_m check (movie > 0),
  person numeric(6) not null,
  constraint fk_persons foreign key (person) references persons (person_id),
  constraint check_p check (person > 0),
  work_type varchar(30) not null,
  role varchar(30)
) engine = innodb;