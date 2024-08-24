CREATE TABLE users (
  id INT PRIMARY KEY,
  fullname VARCHAR(100),
  email VARCHAR(100),
);

CREATE TABLE status (
  id INT PRIMARY KEY,
  name VARCHAR(50),
);

CREATE TABLE tasks (
  id INT PRIMARY KEY,
  title VARCHAR(100),
  description TEXT,
  status_id INT,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users (id)
  FOREIGN KEY (status_id) REFERENCES status  (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);