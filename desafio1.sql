DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.users(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(150),
    age INT NOT NULL,
    plan_id INT NOT NULL,
    subscription_start DATE NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id) 
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.plans(
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(150) NOT NULL,
    price DECIMAL(3,2) NOT NULL 
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.history(
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    play_history DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id,),
    FOREIGN KEY (song_id) REFERENCES songs(song_id),
    CONSTRAINT PRIMARY KEY(user_id, music_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.follows(
      user_id INT NOT NULL,
      follow_id INT NOT NULL,
      FOREIGN KEY (user_id) REFERENCES users(user_id,),
      FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
      CONSTRAINT PRIMARY KEY(user_id, artist_id)
  ) engine = InnoDB;
  CREATE TABLE SpotifyClone.tabela2(
      coluna1 tipo restricoes,
      coluna2 tipo restricoes,
      colunaN tipo restricoes,
  ) engine = InnoDB;
  CREATE TABLE SpotifyClone.tabela2(
      coluna1 tipo restricoes,
      coluna2 tipo restricoes,
      colunaN tipo restricoes,
  ) engine = InnoDB;
  CREATE TABLE SpotifyClone.tabela2(
      coluna1 tipo restricoes,
      coluna2 tipo restricoes,
      colunaN tipo restricoes,
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');