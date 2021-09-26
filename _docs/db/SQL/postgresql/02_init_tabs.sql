-- テーブルの一括削除
DROP TABLE IF EXISTS employee CASCADE;
DROP TABLE IF EXISTS prefecture;
DROP TABLE IF EXISTS gender;

-- prefectureテーブルの定義
CREATE TABLE prefecture (
	code SERIAL,
	name VARCHAR(5) NOT NULL
);
ALTER TABLE prefecture ADD CONSTRAINT prefecture_pk PRIMARY KEY (code);

-- genderテーブルの定義
CREATE TABLE gender (
	code SMALLINT,
	name VARCHAR(5) NOT NULL
);
ALTER TABLE gender ADD CONSTRAINT gender_pk PRIMARY KEY (code);

-- employeeテーブルの定義
CREATE TABLE employee (
	id     SERIAL,
	name   VARCHAR(10) NOT NULL,
	gender SMALLINT,
	birthplace INT
);
ALTER table employee ADD CONSTRAINT employee_pk PRIMARY KEY (id);
ALTER TABLE employee ADD CONSTRAINT employee_fk_gender FOREIGN KEY (gender) REFERENCES gender(code);
ALTER TABLE employee ADD CONSTRAINT employee_fk_birthplace FOREIGN KEY (birthplace) REFERENCES prefecture(code);

-- prefectureテーブルへのレコード登録
INSERT INTO prefecture (name) VALUES ('北海道');
INSERT INTO prefecture (name) VALUES ('青森県');
INSERT INTO prefecture (name) VALUES ('岩手県');
INSERT INTO prefecture (name) VALUES ('宮城県');
INSERT INTO prefecture (name) VALUES ('秋田県');
INSERT INTO prefecture (name) VALUES ('山形県');
INSERT INTO prefecture (name) VALUES ('福島県');
INSERT INTO prefecture (name) VALUES ('茨城県');
INSERT INTO prefecture (name) VALUES ('栃木県');
INSERT INTO prefecture (name) VALUES ('群馬県');
INSERT INTO prefecture (name) VALUES ('埼玉県');
INSERT INTO prefecture (name) VALUES ('千葉県');
INSERT INTO prefecture (name) VALUES ('東京都');
INSERT INTO prefecture (name) VALUES ('神奈川県');
INSERT INTO prefecture (name) VALUES ('新潟県');
INSERT INTO prefecture (name) VALUES ('富山県');
INSERT INTO prefecture (name) VALUES ('石川県');
INSERT INTO prefecture (name) VALUES ('福井県');
INSERT INTO prefecture (name) VALUES ('山梨県');
INSERT INTO prefecture (name) VALUES ('長野県');
INSERT INTO prefecture (name) VALUES ('岐阜県');
INSERT INTO prefecture (name) VALUES ('静岡県');
INSERT INTO prefecture (name) VALUES ('愛知県');
INSERT INTO prefecture (name) VALUES ('三重県');
INSERT INTO prefecture (name) VALUES ('滋賀県');
INSERT INTO prefecture (name) VALUES ('京都府');
INSERT INTO prefecture (name) VALUES ('大阪府');
INSERT INTO prefecture (name) VALUES ('兵庫県');
INSERT INTO prefecture (name) VALUES ('奈良県');
INSERT INTO prefecture (name) VALUES ('和歌山県');
INSERT INTO prefecture (name) VALUES ('鳥取県');
INSERT INTO prefecture (name) VALUES ('島根県');
INSERT INTO prefecture (name) VALUES ('岡山県');
INSERT INTO prefecture (name) VALUES ('広島県');
INSERT INTO prefecture (name) VALUES ('山口県');
INSERT INTO prefecture (name) VALUES ('徳島県');
INSERT INTO prefecture (name) VALUES ('香川県');
INSERT INTO prefecture (name) VALUES ('愛媛県');
INSERT INTO prefecture (name) VALUES ('高知県');
INSERT INTO prefecture (name) VALUES ('福岡県');
INSERT INTO prefecture (name) VALUES ('佐賀県');
INSERT INTO prefecture (name) VALUES ('長崎県');
INSERT INTO prefecture (name) VALUES ('熊本県');
INSERT INTO prefecture (name) VALUES ('大分県');
INSERT INTO prefecture (name) VALUES ('宮崎県');
INSERT INTO prefecture (name) VALUES ('鹿児島県');
INSERT INTO prefecture (name) VALUES ('沖縄県');

-- genderテーブルへのレコード登録
INSERT INTO gender (code, name) VALUES (1, '男性');
INSERT INTO gender (code, name) VALUES (2, '女性');
INSERT INTO gender (code, name) VALUES (99, 'その他');

-- employeeテーブルへのレコード登録
INSERT INTO employee (name, gender, birthplace) VALUES('瀬戸 睦美', 2, 6);
INSERT INTO employee (name, gender, birthplace) VALUES('篠原 優子', 2, 26);
INSERT INTO employee (name, gender, birthplace) VALUES('田崎 達', 1, 19);
INSERT INTO employee (name, gender, birthplace) VALUES('小柳 愛理', 2, 34);
INSERT INTO employee (name, gender, birthplace) VALUES('相田 春江', 2, 36);
INSERT INTO employee (name, gender, birthplace) VALUES('青木 光雄', 1, 16);
INSERT INTO employee (name, gender, birthplace) VALUES('吉川 戸敷', 1, 22);
INSERT INTO employee (name, gender, birthplace) VALUES('奥村 良佳', 1, 3);
INSERT INTO employee (name, gender, birthplace) VALUES('志田 茉央', 2, 29);
INSERT INTO employee (name, gender, birthplace) VALUES('波多野 浩次', 1, 16);
INSERT INTO employee (name, gender, birthplace) VALUES('石崎 信治', 1, 40);
INSERT INTO employee (name, gender, birthplace) VALUES('高村 公雄', 1, 34);
INSERT INTO employee (name, gender, birthplace) VALUES('矢崎 朋之', 1, 45);
INSERT INTO employee (name, gender, birthplace) VALUES('町田 奏', 2, 27);
INSERT INTO employee (name, gender, birthplace) VALUES('棚橋 英光', 1, 11);
INSERT INTO employee (name, gender, birthplace) VALUES('大竹 匡弘', 1, 2);
INSERT INTO employee (name, gender, birthplace) VALUES('那須 守弘', 1, 32);
INSERT INTO employee (name, gender, birthplace) VALUES('栗原 香帆', 2, 22);

