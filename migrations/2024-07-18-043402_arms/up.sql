-- Your SQL goes here
-- Your SQL goes here
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR NOT NULL,
    password VARCHAR NOT NULL,

    UNIQUE(username)
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR NOT NULL,
    link VARCHAR,
    author INT NOT NULL,
    created_at TIMESTAMP NOT NULL,

    CONSTRAINT fk_author
        FOREIGN KEY(author)
            REFERENCES users(id)
);


