CREATE TABLE users(
   user_id INT AUTO_INCREMENT PRIMARY KEY,
   username VARCHAR(40),
   password VARCHAR(255),
   email VARCHAR(255)
);

CREATE TABLE commentaries (
    commentary_id INT AUTO_INCREMENT PRIMARY KEY,
    reponse_id INT,
    titre VARCHAR(100),
    body VARCHAR(2000),
    commentary_date DATE
);

CREATE TABLE pictures (
    picture_id INT AUTO_INCREMENT PRIMARY KEY,
    picture_link VARCHAR(500)
);

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100),
    category_resume VARCHAR(500)
);

CREATE TABLE articles (
    article_id INT AUTO_INCREMENT PRIMARY KEY,
    article_titre VARCHAR(100),
    article_resume VARCHAR(500),
    commentary_id INT,
    picture_id INT,
    category_id INT,
    user_id INT,
    FOREIGN KEY (commentary_id) REFERENCES commentaries(commentary_id),
    FOREIGN KEY (picture_id) REFERENCES pictures(picture_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO users VALUE (0, "hugo", "0000", "email@gmail.com");
INSERT INTO commentaries VALUE (0, 0, "Bienvenues", "Je n'ai rien à vous dire", DATE);
INSERT INTO pictures VALUE (0, "pasdelink.jpg");
INSERT INTO categories VALUE (0, "pasdidees", "j'avais pas d'idées...");

INSERT INTO articles (article_titre, article_resume, user_id, picture_id, category_id, commentary_id) VALUE ("pasdenom", "pasderesume", 0, 0, 0, 0);
