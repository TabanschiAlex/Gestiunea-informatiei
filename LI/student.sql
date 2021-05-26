use student_individual;

/*CREATE TABLE students (
	st_id INT UNSIGNED,
	nume VARCHAR(25) NOT NULL,
	prenume VARCHAR(50) NOT NULL,
	bursa DECIMAL(5,2) DEFAULT 0,
	anul TINYINT UNSIGNED DEFAULT 1 NOT NULL,
	oras VARCHAR(30) NULL,
	data_n DATE NULL,
	univ_id INT NULL NOT NULL,
	CONSTRAINT students_pk
		PRIMARY KEY (st_id)
);

INSERT INTO students (st_id, nume, prenume, bursa, anul, oras, data_n, univ_id) VALUES (1, 'Popescu', 'Ion', 150.00, 1, 'Orhei', '1982-12-03', 10);
INSERT INTO students (st_id, nume, prenume, bursa, anul, oras, data_n, univ_id) VALUES (3,'Ionescu', 'Petru', 200.00, 3, 'Cahul', '1980-12-01', 10);
INSERT INTO students (st_id, nume, prenume, bursa, anul, oras, data_n, univ_id) VALUES (6, 'Sima', 'Vadim', 150.00, 4, 'Chisinau', '1979-06-07', 22);
INSERT INTO students (st_id, nume, prenume, bursa, anul, oras, data_n, univ_id) VALUES (10, 'Osman', 'Nicolai', 0.00, 2, 'Briceni', '1981-12-08', 10);
INSERT INTO students (st_id, nume, prenume, bursa, anul, oras, data_n, univ_id) VALUES (12, 'Casta', 'Olga', 250.00, 2, 'Lipcani', '1981-05-01', 10);
INSERT INTO students (st_id, nume, prenume, bursa, anul, oras, data_n, univ_id) VALUES (265, 'Mantes', 'Andrei', 0.00, 3, 'Balti', '1979-11-05', 10);
INSERT INTO students (st_id, nume, prenume, bursa, anul, oras, univ_id) VALUES (32, 'Colesnic', 'Petru', 150.00, 5, 'Drochia', 14);
INSERT INTO students (st_id, nume, prenume, bursa, anul, oras, data_n, univ_id) VALUES (654, 'Luca', 'Artur', 200.00, 3, 'Balti', '1981-12-01', 10);
INSERT INTO students (st_id, nume, prenume, bursa, anul, data_n, univ_id) VALUES (276, 'Petrescu', 'Elena', 200.00, 4, '1981-08-05', 22);
INSERT INTO students (st_id, nume, prenume, bursa, anul, oras, data_n, univ_id) VALUES (55, 'Banescu', 'Vlad', 250.00, 5, 'Balti', '1980-01-07', 10);

-- -----------------------------------------------------

CREATE TABLE professors (
	pr_id INT UNSIGNED,
	nume VARCHAR(25) NOT NULL,
	prenume VARCHAR(50) NOT NULL,
	oras VARCHAR(30) NULL,
	univ_id INT NULL NOT NULL,
	CONSTRAINT professors_pk
		PRIMARY KEY (pr_id)
);

INSERT INTO professors (pr_id, nume, prenume, oras, univ_id) VALUES (24, 'Iordachi', 'Boris', 'Balti', 10);
INSERT INTO professors (pr_id, nume, prenume, oras, univ_id) VALUES (46, 'Nuca', 'Ion', 'Balti', 10);
INSERT INTO professors (pr_id, nume, prenume, oras, univ_id) VALUES (74, 'Lasescu', 'Pavel', 'Chisinau', 22);
INSERT INTO professors (pr_id, nume, prenume, oras, univ_id) VALUES (108, 'Stanescu', 'Nicolai', 'Chisinau', 22);
INSERT INTO professors (pr_id, nume, prenume, oras, univ_id) VALUES (276, 'Negrescu', 'Victor', 'Balti', 10);
INSERT INTO professors (pr_id, nume, prenume, oras, univ_id) VALUES (328, 'Sorescu', 'Andrei', 'Оrhei', 10);

-- -----------------------------------------------------

CREATE TABLE curses (
	curs_id INT UNSIGNED,
	curs_den VARCHAR(50) NOT NULL,
	ore TINYINT UNSIGNED NOT NULL,
	semestru TINYINT UNSIGNED NOT NULL,
	CONSTRAINT curses_pk
		PRIMARY KEY (curs_id)
);

INSERT INTO curses (curs_id, curs_den, ore, semestru) VALUES (10, 'Informatica', 56, 1);
INSERT INTO curses (curs_id, curs_den, ore, semestru) VALUES (22, 'Fizica', 34, 1);
INSERT INTO curses (curs_id, curs_den, ore, semestru) VALUES (43, 'Matematica', 56, 2);
INSERT INTO curses (curs_id, curs_den, ore, semestru) VALUES (56, 'Istoria', 34, 4);
INSERT INTO curses (curs_id, curs_den, ore, semestru) VALUES (94, 'Limba Engleză', 56, 3);
INSERT INTO curses (curs_id, curs_den, ore, semestru) VALUES (73, 'Educaţia fizică', 34, 5);

-- -----------------------------------------------------

CREATE TABLE universities (
	univ_id INT UNSIGNED,
	univ_den VARCHAR(50) NOT NULL,
	rating INT UNSIGNED NOT NULL,
	oras VARCHAR(30) NULL,
	CONSTRAINT universities_pk
		PRIMARY KEY (univ_id)
);

INSERT INTO universities (univ_id, univ_den, rating, oras) VALUES (22, 'USM', 606, 'Chisinau');
INSERT INTO universities (univ_id, univ_den, rating, oras) VALUES (10, 'USB', 296, 'Balti');
INSERT INTO universities (univ_id, univ_den, rating, oras) VALUES (11, 'ULIM', 345, 'Chisinau');
INSERT INTO universities (univ_id, univ_den, rating, oras) VALUES (32, 'USC', 416, 'Cahul');
INSERT INTO universities (univ_id, univ_den, rating, oras) VALUES (14, 'USD', 326, 'Drochia');
INSERT INTO universities (univ_id, univ_den, rating, oras) VALUES (15, 'USC', 368, 'Chisinau');
INSERT INTO universities (univ_id, univ_den, rating, oras) VALUES (18, 'ВГМА', 327, 'Balti');

-- -----------------------------------------------------

CREATE TABLE exams (
	exam_id INT UNSIGNED,
	st_id INT UNSIGNED NOT NULL,
	curs_id INT UNSIGNED NOT NULL,
	nota TINYINT UNSIGNED NULL,
	data_exam DATE NULL,
	CONSTRAINT exams_pk
		PRIMARY KEY (exam_id)
);

INSERT INTO exams (exam_id, st_id, curs_id, nota, data_exam) VALUES (145, 12, 10, 10, '2000-01-12');
INSERT INTO exams (exam_id, st_id, curs_id, nota, data_exam) VALUES (34, 32, 10, 9, '2000-01-23');
INSERT INTO exams (exam_id, st_id, curs_id, nota, data_exam) VALUES (75, 55, 10, 9, '2000-01-05');
INSERT INTO exams (exam_id, st_id, curs_id, nota, data_exam) VALUES (238, 12, 22, 6, '1999-06-17');
INSERT INTO exams (exam_id, st_id, curs_id, data_exam) VALUES (639, 55, 22, '1999-06-22');
INSERT INTO exams (exam_id, st_id, curs_id, nota, data_exam) VALUES (43, 6, 22, 5, '2000-01-18');

-- -----------------------------------------------------

CREATE TABLE curs_prof (
	pr_id INT UNSIGNED NOT NULL,
	curs_id INT UNSIGNED NOT NULL,
        CONSTRAINT curs_prof_pk
            primary key (pr_id, curs_id)
);

INSERT INTO curs_prof (pr_id, curs_id) VALUES (24, 10);
INSERT INTO curs_prof (pr_id, curs_id) VALUES (46, 22);
INSERT INTO curs_prof (pr_id, curs_id) VALUES (74, 43);
INSERT INTO curs_prof (pr_id, curs_id) VALUES (108, 56);
INSERT INTO curs_prof (pr_id, curs_id) VALUES (276, 94);
INSERT INTO curs_prof (pr_id, curs_id) VALUES (328, 73);*/




-- 1
/*SELECT * FROM students;*/

-- 2
/*SELECT
    distinct oras
FROM students
WHERE oras IS NOT NULL;*/

-- 3
/*SELECT
    nume,
    prenume
FROM students
WHERE nume = 'Petrov';*/

-- 4
/*SELECT *
FROM students
WHERE bursa > 0 AND anul = 3;*/

-- 5
/*SELECT
    curs_id,
    curs_den,
    semestru,
    ore
FROM curses;*/

-- 6
/*SELECT *
FROM exams
WHERE curs_id = 12;*/

-- 7
/*SELECT *
from students
order by anul, prenume, nume, bursa;*/

-- 8
/*SELECT
    curs_den,
    ore
FROM curses
WHERE semestru = 4;*/

-- 9
/*SELECT
    DISTINCT nota
FROM exams;*/

-- 10
/*SELECT
    nume
from students
where anul >= 3;*/

-- 11
/*SELECT
    nume,
    prenume
from students
where bursa > 140;*/

-- 12
/*SELECT *
from curses
where ore > 30;*/

-- 13
/*SELECT *
FROM universities
where rating > 300;*/

-- 14
/*SELECT
    nume,
    prenume,
    anul
FROM students
where bursa > 100 and oras = 'Bălţi';*/

-- 15
/*SELECT nume
FROM students
JOIN exams USING (st_id)
WHERE exams.nota >= 9;*/

-- 16
/*SELECT *
FROM curses
WHERE ore BETWEEN 30 AND 40;*/

-- 17
/*SELECT *
FROM students
WHERE nume LIKE 'P%';*/

-- 18
/*SELECT
    curs_id
FROM exams
WHERE data_exam BETWEEN '1999-01-10' AND '1999-01-20';*/

-- 19
/*SELECT curses.*
FROM curses
JOIN exams USING (curs_id)
WHERE st_id in (12, 32);*/

-- 20
/*SELECT *
FROM curses
WHERE curs_den LIKE 'I%';*/

-- 21
/*SELECT *
FROM students
WHERE nume LIKE 'I%' or nume LIKE 'C%';*/

-- 22
/*SELECT *
FROM exams
WHERE nota IS NULL;*/

-- 23
/*SELECT *
FROM exams
WHERE nota IS NOT NULL;*/

-- 24
/*SELECT CONCAT_WS(
    ';',
    st_id,
    CONCAT(UPPER(SUBSTRING(nume,1,1)),LOWER(SUBSTRING(nume,2))),
    CONCAT(UPPER(SUBSTRING(prenume,1,1)),LOWER(SUBSTRING(prenume,2))),
    bursa,
    anul,
    oras,
    data_n,
    univ_id
    ) AS value
FROM students;*/

-- 25
/*SELECT CONCAT(
    SUBSTR(prenume, 1, 1),
    '.',
    UPPER(nume),
    '; localitatea - ',
    IFNULL(UPPER(oras), '__'),
    '; nascut la ',
    IFNULL(DATE_FORMAT(data_n, '%d.%m.%Y'), '__')
    ) AS value
FROM students;*/

-- 26
/*SELECT CONCAT(
    LOWER(SUBSTR(prenume, 1, 1)),
    '.',
    LOWER(nume),
    '; localitatea - ',
    IFNULL(LOWER(oras), '__'),
    '; nascut la ',
    IFNULL(DATE_FORMAT(data_n, '%d.%m.%Y'), '__')
    ) AS value
FROM students;*/

-- 27
/*select CONCAT(
    prenume,
    ' ',
    nume,
    ' s-a nascut in anul ',
    IFNULL(DATE_FORMAT(data_n, '%d.%m.%Y'), '__')
    ) AS value
FROM students;*/

-- 28
/*select CONCAT(
    prenume,
    ' ',
    nume,
    ' s-a nascut in anul ',
    IFNULL(DATE_FORMAT(data_n, '%d.%m.%Y'), '__')
    ) AS value
FROM students
WHERE anul IN (1, 2, 4);*/

-- 29
/*SELECT
    nume,
    bursa * 100 as noua_bursa
FROM students
WHERE bursa > 0;*/

-- 30
/*SELECT
    CONCAT('Cod-', univ_id, '; ', univ_den, '-or.', oras, '; Rating-', rating)
FROM universities;*/

-- 31
/*SELECT
    CONCAT('Cod-', univ_id, '; ', univ_den, '-or.', oras, '; Rating-', ROUND(rating, -2)) AS value
FROM universities;*/

-- 32
/*SELECT
    AVG(nota) AS media
FROM exams;*/

-- 33
/*SELECT
    COUNT(*) AS nr_elevi
FROM students;*/

-- 34
/*SELECT students.nume, MAX(exams.nota) AS nota_maxima
FROM exams
JOIN students USING(st_id)
GROUP BY nume;*/

-- 35
/*SELECT
    COUNT(DISTINCT st_id) AS nr_studenti
FROM exams WHERE curs_id = 20 AND nota >= 5;*/

-- 36
/*SELECT
    COUNT(DISTINCT curs_id) AS 'Curse'
FROM exams;*/

-- 37
/*SELECT
    st_id,
    MIN(nota) AS min_nota
FROM exams
GROUP BY st_id;*/

-- 38
/*SELECT *
FROM students
WHERE nume LIKE 'I%'
ORDER BY nume
limit 1;*/

-- 39
/*SELECT
    curs_den,
    MAX(semestru)
FROM curses
GROUP BY semestru, curs_den;*/

-- 40
/*SELECT
    data_exam,
    COUNT(st_id)
FROM exams
GROUP BY data_exam, st_id;*/

-- 41
/*SELECT
    DATE_FORMAT(data_exam, '%Y') AS an,
       curses.curs_den, AVG(exams.nota) AS media_notelor
FROM exams
	JOIN curses USING (curs_id)
GROUP BY an, curs_den
ORDER BY an;*/

-- 42
/*SELECT
    students.nume,
    students.prenume,
    AVG(exams.nota)
FROM exams
	 JOIN students USING (st_id)
GROUP BY students.nume, students.prenume;*/

-- 43
/*SELECT
    exam_id,
    AVG(nota)
FROM exams
GROUP BY exam_id;*/

-- 44
/*SELECT
    exam_id,
    COUNT(st_id)
FROM exams
WHERE nota > 5
GROUP BY exam_id;*/

-- 45
/*SELECT
    DATE_FORMAT(data_exam, '%Y') AS an,
    COUNT(DISTINCT st_id)
FROM exams
GROUP BY an;*/

-- 46
/*SELECT
    st_id,
    nume,
    bursa * 20 / 100 AS 'bursa marita'
FROM students
ORDER BY bursa * 20 / 100 DESC, nume;*/

-- 47
/*SELECT
    st_id,
    MIN(nota) AS min,
    MAX(nota) AS max
FROM exams
GROUP BY st_id;*/

-- 48
/*SELECT
    semestru,
    curs_den,
    curs_id
FROM curses
ORDER BY semestru DESC, ore;*/

-- 49
/*SELECT
    data_exam,
    SUM(nota)
FROM exams
GROUP BY data_exam;*/

-- 50
/*SELECT
    data_exam,
    MIN(nota) as min,
    AVG(nota) as media,
    MAX(nota) as max
FROM exams
GROUP BY data_exam
ORDER BY min DESC,
         media DESC,
         max DESC;*/

-- 51
/*SELECT nota
FROM exams
WHERE st_id = (SELECT st_id
               FROM students
               WHERE nume = 'Popescu'
               LIMIT 1);*/

-- 52
/*SELECT nume
FROM exams
    JOIN students USING (st_id)
WHERE curs_id = 101
AND nota > (SELECT avg(nota) FROM exams);*/

-- 53
/*SELECT students.nume
FROM exams
    JOIN students USING (st_id)
WHERE curs_id = 102
AND nota < (SELECT AVG(nota)
            FROM exams);*/

-- 54
/*SELECT
    COUNT(DISTINCT curs_id)
FROM exams
WHERE nota > 5
GROUP BY st_id
HAVING COUNT(exam_id) > 20;*/

-- 55
/*SELECT
    nume,
    st_id
FROM students
WHERE bursa = (SELECT MAX(bursa)
               FROM students s
               WHERE s.oras = students.oras);*/

-- 56
/*SELECT
    nume,
    st_id,
    oras
FROM students
WHERE oras NOT IN (SELECT DISTINCT oras
                   FROM universities);*/

-- 57
/*SELECT
    nume,
    st_id
FROM students
WHERE oras <> (SELECT DISTINCT oras
               FROM universities
               WHERE students.univ_id = universities.univ_id);*/

-- 58
/*SELECT nume
FROM students
    JOIN exams USING (st_id)
WHERE nota < 5;*/

-- 59
/*SELECT
    curs_id
FROM exams
WHERE nota > 5
GROUP BY curs_id
HAVING COUNT(st_id) > 1;*/

-- 60
/*SELECT
    st_id
FROM exams
WHERE nota > 5
GROUP BY st_id
HAVING COUNT(curs_id) > 1;*/

-- 61
/*SELECT *
FROM students
    JOIN universities USING (univ_id)
WHERE rating > 300;*/

-- 62
/*SELECT *
FROM students
WHERE oras in (SELECT DISTINCT oras
               FROM universities
               WHERE oras <> (SELECT oras
                              FROM universities
                              WHERE universities.univ_id = students.univ_id ));*/

-- 63
/*SELECT *
FROM curses
    JOIN exams USING(curs_id)
GROUP BY curs_id
HAVING COUNT(st_id) > 1;*/

-- 64
/*SELECT *
FROM students
    INNER JOIN universities USING (univ_id)
WHERE students.oras = universities.oras;*/

-- 65
/*SELECT *
FROM students LEFT JOIN exams USING (st_id)
HAVING MAX(exams.nota) > MIN(exams.nota) AND data_exam = '1999-12-06';*/

-- 66
/*SELECT *
FROM universities
WHERE rating > (SELECT MAX(rating)
                FROM universities
                WHERE oras = 'Balti');*/

-- 67
/*SELECT *
FROM universities
WHERE univ_den <> 'USB' AND rating >= ( SELECT rating
                                        FROM universities
                                        WHERE univ_den = 'USB');*/

-- 68
/*SELECT *
FROM students
WHERE oras NOT IN ( SELECT DISTINCT oras
                    FROM universities);*/

-- 69
/*SELECT curs_den
FROM exams
    JOIN curses USING (curs_id)
WHERE nota > (  SELECT MAX(nota)
                FROM exams where curs_id = 105);*/

-- 70
/*SELECT
    curs_id,
    nume
FROM exams
    JOIN students USING (st_id)
WHERE nota >= 5;*/

-- 71
/*SELECT *,
    CASE WHEN exams.nota >= 5 THEN exams.curs_id END AS curs
FROM students JOIN exams USING (st_id);*/

-- 72
/*SELECT
    curs_den,
    nume
FROM exams
    JOIN students USING (st_id)
    JOIN curses USING (curs_id);*/

-- 73
/*SELECT
    curs_den,
    nume
FROM exams
    JOIN students USING (st_id)
    JOIN curses USING (curs_id)
WHERE nota IN (9, 10);*/

-- 74
/*SELECT
    curs_den,
    nume,
    nota
FROM exams
    JOIN students USING (st_id)
    JOIN curses USING (curs_id)
WHERE nota IN (8, 9, 10);*/

-- 75
/*SELECT
    univ_den,
    MAX(bursa)
FROM universities
    LEFT JOIN students USING (univ_id)
WHERE rating > 300
GROUP BY univ_den;*/

-- 76
/*SELECT
    nume,
    rating
FROM students
    LEFT JOIN universities USING (univ_id)
ORDER BY nume;*/

-- 77
/*SELECT students.nume
FROM students
    JOIN students AS stud USING (prenume)
GROUP BY students.nume
HAVING COUNT(prenume) > 1;*/

-- 78
/*SELECT
    students.nume,
    stud.nume
FROM students
    JOIN students AS stud
WHERE stud.oras = students.oras AND stud.st_id <> students.st_id;*/

-- 79
/*SELECT
    univ.univ_den,
    universities.univ_den
FROM universities
    JOIN universities AS univ
WHERE univ.oras = universities.oras AND univ.univ_id <> universities.univ_id;*/

-- 80
/*SELECT
    univ_den,
    oras
FROM universities
WHERE rating >= (SELECT MAX(rating)
                 FROM universities
                 WHERE oras = 'Balti');*/

-- 81
/*INSERT INTO curses(curs_id, curs_den, ore, semestru) VALUES (201, 'Algebra', 72, 4);*/

-- 82
/*INSERT INTO students(st_id, nume, prenume, anul, univ_id, oras) VALUES (201, 'Osman', 'Nicolae', 1, 10, 'Balti');*/

-- 83
/*DELETE FROM exams
WHERE st_id = 100;*/

-- 84
/*UPDATE universities
SET rating = rating + 5
WHERE oras = 'Cahul';*/

-- 85
/*UPDATE students
SET oras = 'Balti'
WHERE nume = 'Popescu';*/

-- 86
/*SELECT *
INTO student
from students
where oras = 'Chisinau';*/

-- 87
/*INSERT INTO studenti
SELECT *
FROM students
WHERE st_id IN (SELECT st_id
		        FROM exams
	            WHERE nota >= 5
                GROUP BY st_id
                HAVING COUNT(st_id) > 5);*/

-- 88
/*DELETE
FROM students
WHERE st_id IN (SELECT DISTINCT curs_id
	            FROM exams
	            WHERE nota IS NULL);*/

-- 89
/*UPDATE students
SET bursa = bursa * 20 / 100
WHERE st_id IN (SELECT st_id
	            FROM exams
	            GROUP BY st_id
	            HAVING SUM(nota) > 50);*/

-- 90
/*CREATE TABLE professors
(
    pr_id INT UNSIGNED NOT NULL PRIMARY KEY,
    nume VARCHAR(25) NOT NULL,
    prenume VARCHAR(50) NOT NULL,
    oras VARCHAR(30) NULL,
    univ_id INT UNSIGNED NOT NULL,
    CONSTRAINT professors_universities_univ_id_fk
        FOREIGN KEY (univ_id) REFERENCES universities (univ_id)
);*/

-- 91
/*CREATE TABLE curses
(
    curs_id INT UNSIGNED NOT NULL PRIMARY KEY,
    curs_den VARCHAR(50) NOT NULL,
    ore TINYINT UNSIGNED NOT NULL,
    semestru TINYINT UNSIGNED NOT NULL
);*/

-- 92
/*CREATE TABLE universities
(
    univ_id INT UNSIGNED NOT NULL PRIMARY KEY,
    univ_den VARCHAR(50) NOT NULL,
    rating INT UNSIGNED NOT NULL,
    oras VARCHAR(30) NULL
);*/

-- 93
/*CREATE TABLE exams
(
    exam_id INT UNSIGNED NOT NULL PRIMARY KEY,
    st_id INT UNSIGNED NOT NULL,
    curs_id INT unsigned NOT NULL,
    nota TINYINT unsigned NULL,
    data_exam DATE NULL,
    CONSTRAINT exams_curses_curs_id_fk
        FOREIGN KEY (curs_id) REFERENCES curses (curs_id),
    CONSTRAINT exams_students_st_id_fk
        FOREIGN KEY (st_id) REFERENCES students (st_id)
);*/

-- 94
/*CREATE TABLE curs_prof
(
    pr_id INT UNSIGNED NOT NULL,
    curs_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (pr_id, curs_id),
    CONSTRAINT curs_prof_curses_curs_id_fk
        FOREIGN KEY (curs_id) REFERENCES curses (curs_id),
    CONSTRAINT curs_prof_professors_pr_id_fk
        FOREIGN KEY (pr_id) REFERENCES professors (pr_id)
);*/

-- 95
/*CREATE INDEX studenti ON students(anul);
SELECT *
FROM students
ORDER BY anul;*/

-- 96
/*CREATE INDEX data_exams ON exams(data_exam, nota, st_id);
SELECT st_id, nota, data_exam
FROM exams
GROUP BY data_exam, nota, st_id;*/