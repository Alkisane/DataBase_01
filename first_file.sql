CREATE TABLE Кабинет (
id INT PRIMARY KEY AUTO_INCREMENT,
номер_кабинета INT NOT NULL,
название_кабинета VARCHAR(50) NOT NULL
);

CREATE TABLE Ученик (
id INT PRIMARY KEY AUTO_INCREMENT,
имя_фамилия VARCHAR(50) NOT NULL,
класс VARCHAR(10) NOT NULL
);

CREATE TABLE Место_за_партой (
id INT PRIMARY KEY AUTO_INCREMENT,
id_ученика INT,
id_кабинета INT,
ряд INT NOT NULL,
парта INT NOT NULL,
вариант INT NOT NULL,
начало_урока TIMESTAMP NOT NULL,
конец_урока TIMESTAMP NOT NULL,
FOREIGN KEY (id_ученика) REFERENCES Ученик(id),
FOREIGN KEY (id_кабинета) REFERENCES Кабинет(id)
);
