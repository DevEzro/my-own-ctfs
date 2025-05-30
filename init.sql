CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT,
    password TEXT,
    ag TEXT
);

CREATE TABLE characters (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    name TEXT,
    fl TEXT
);

INSERT INTO users (username, password, ag) VALUES 
('admin', 'h4sta3l1nf1n1t0ym454ll4', '3nm1b0t4}'),
('user1', 'password123', 'Usuario'),
('carlos', '9172qiuioasdjlkha', 'Carlos'),
('gimena', '98asdas98dvasd9', 'Gimena');

INSERT INTO songs (name, fl) VALUES 
('Strange Things', 'Unknwon Artist'),
('I Will Go Sailing No More', '{h4yun453rp13nt3');

INSERT INTO characters (name) VALUES 
('Woody'),
('Jessie'),
('Buzz Lightyear'),
('Slinky'),
('Sr. Potato'),
('Sra. Potato'),
('Rex'),
('Alien 1'),
('Alien 2'),
('Alien 3'),
('Ham'),
('Bo Peep'),
('Bonnie'),
('Andy'),
('Lotso');