DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS prefecture;
DROP TABLE IF EXISTS gender;

-- prefectureテーブルの定義
CREATE TABLE prefecture (
	code TINYINT UNSIGNED NOT NULL,
	name VARCHAR(5)       NOT NULL,
	PRIMARY KEY (code)
);

-- genderテーブルの定義
CREATE TABLE gender (
	code TINYINT UNSIGNED NOT NULL,
	name VARCHAR(5)       NOT NULL,
	PRIMARY KEY (code)
);

-- employeeテーブルの定義
CREATE TABLE employee (
	id         INT UNSIGNED NOT NULL,
	name       VARCHAR(10)  NOT NULL,
	gender     TINYINT UNSIGNED,
	birthplace TINYINT UNSIGNED,
	PRIMARY KEY (id),
	FOREIGN KEY (gender) REFERENCES gender(code),
	FOREIGN KEY (birthplace) REFERENCES prefecture(code)
);

/**/
-- prefectureテーブルへのレコード登録
INSERT INTO prefecture (code, name) VALUES (1,'北海道');
INSERT INTO prefecture (code, name) VALUES (2,'青森県');
INSERT INTO prefecture (code, name) VALUES (3,'岩手県');
INSERT INTO prefecture (code, name) VALUES (4,'宮城県');
INSERT INTO prefecture (code, name) VALUES (5,'秋田県');
INSERT INTO prefecture (code, name) VALUES (6,'山形県');
INSERT INTO prefecture (code, name) VALUES (7,'福島県');
INSERT INTO prefecture (code, name) VALUES (8,'茨城県');
INSERT INTO prefecture (code, name) VALUES (9,'栃木県');
INSERT INTO prefecture (code, name) VALUES (10,'群馬県');
INSERT INTO prefecture (code, name) VALUES (11,'埼玉県');
INSERT INTO prefecture (code, name) VALUES (12,'千葉県');
INSERT INTO prefecture (code, name) VALUES (13,'東京都');
INSERT INTO prefecture (code, name) VALUES (14,'神奈川県');
INSERT INTO prefecture (code, name) VALUES (15,'新潟県');
INSERT INTO prefecture (code, name) VALUES (16,'富山県');
INSERT INTO prefecture (code, name) VALUES (17,'石川県');
INSERT INTO prefecture (code, name) VALUES (18,'福井県');
INSERT INTO prefecture (code, name) VALUES (19,'山梨県');
INSERT INTO prefecture (code, name) VALUES (20,'長野県');
INSERT INTO prefecture (code, name) VALUES (21,'岐阜県');
INSERT INTO prefecture (code, name) VALUES (22,'静岡県');
INSERT INTO prefecture (code, name) VALUES (23,'愛知県');
INSERT INTO prefecture (code, name) VALUES (24,'三重県');
INSERT INTO prefecture (code, name) VALUES (25,'滋賀県');
INSERT INTO prefecture (code, name) VALUES (26,'京都府');
INSERT INTO prefecture (code, name) VALUES (27,'大阪府');
INSERT INTO prefecture (code, name) VALUES (28,'兵庫県');
INSERT INTO prefecture (code, name) VALUES (29,'奈良県');
INSERT INTO prefecture (code, name) VALUES (30,'和歌山県');
INSERT INTO prefecture (code, name) VALUES (31,'鳥取県');
INSERT INTO prefecture (code, name) VALUES (32,'島根県');
INSERT INTO prefecture (code, name) VALUES (33,'岡山県');
INSERT INTO prefecture (code, name) VALUES (34,'広島県');
INSERT INTO prefecture (code, name) VALUES (35,'山口県');
INSERT INTO prefecture (code, name) VALUES (36,'徳島県');
INSERT INTO prefecture (code, name) VALUES (37,'香川県');
INSERT INTO prefecture (code, name) VALUES (38,'愛媛県');
INSERT INTO prefecture (code, name) VALUES (39,'高知県');
INSERT INTO prefecture (code, name) VALUES (40,'福岡県');
INSERT INTO prefecture (code, name) VALUES (41,'佐賀県');
INSERT INTO prefecture (code, name) VALUES (42,'長崎県');
INSERT INTO prefecture (code, name) VALUES (43,'熊本県');
INSERT INTO prefecture (code, name) VALUES (44,'大分県');
INSERT INTO prefecture (code, name) VALUES (45,'宮崎県');
INSERT INTO prefecture (code, name) VALUES (46,'鹿児島県');
INSERT INTO prefecture (code, name) VALUES (47,'沖縄県');

-- genderテーブルへのレコード登録
INSERT INTO gender (code, name) VALUES (1, '男性');
INSERT INTO gender (code, name) VALUES (2, '女性');
INSERT INTO gender (code, name) VALUES (99, 'その他');

-- employeeテーブルへのレコード登録
INSERT INTO employee (id, name, gender, birthplace) VALUES(1, '瀬戸 睦美', 2, 6);
INSERT INTO employee (id, name, gender, birthplace) VALUES(2, '篠原 優子', 2, 26);
INSERT INTO employee (id, name, gender, birthplace) VALUES(3, '田崎 達', 1, 19);
INSERT INTO employee (id, name, gender, birthplace) VALUES(4, '小柳 愛理', 2, 34);
INSERT INTO employee (id, name, gender, birthplace) VALUES(5, '相田 春江', 2, 36);
INSERT INTO employee (id, name, gender, birthplace) VALUES(6, '青木 光雄', 1, 16);
INSERT INTO employee (id, name, gender, birthplace) VALUES(7, '吉川 戸敷', 1, 22);
INSERT INTO employee (id, name, gender, birthplace) VALUES(8, '奥村 良佳', 1, 3);
INSERT INTO employee (id, name, gender, birthplace) VALUES(9, '志田 茉央', 2, 29);
INSERT INTO employee (id, name, gender, birthplace) VALUES(10, '波多野 浩次', 1, 16);
INSERT INTO employee (id, name, gender, birthplace) VALUES(11, '石崎 信治', 1, 40);
INSERT INTO employee (id, name, gender, birthplace) VALUES(12, '高村 公雄', 1, 34);
INSERT INTO employee (id, name, gender, birthplace) VALUES(13, '矢崎 朋之', 1, 45);
INSERT INTO employee (id, name, gender, birthplace) VALUES(14, '町田 奏', 2, 27);
INSERT INTO employee (id, name, gender, birthplace) VALUES(15, '棚橋 英光', 1, 11);
INSERT INTO employee (id, name, gender, birthplace) VALUES(16, '大竹 匡弘', 1, 2);
INSERT INTO employee (id, name, gender, birthplace) VALUES(17, '那須 守弘', 1, 32);
INSERT INTO employee (id, name, gender, birthplace) VALUES(18, '栗原 香帆', 2, 22);

