
--ユーザーテーブル
CREATE TABLE IF NOT EXISTS user(
	user_id				VARCHAR(20) NOT NULL	PRIMARY KEY,
	user_name			VARCHAR(20),
	password			VARCHAR(255),
	pass_update_date	TIMESTAMP,
	gender				VARCHAR(50),
	birthday			VARCHAR(50),
	contact				VARCHAR(50),
	mail_address		VARCHAR(50),
	login_miss_times	INT,
	unlock				boolean,
	enabled				BOOLEAN,
	user_due_date		TIMESTAMP,
	insert_date			TIMESTAMP,
	update_date			TIMESTAMP
);


--ブックテーブル
CREATE TABLE IF NOT EXISTS book(
	book_id				INT	NOT	NULL	PRIMARY KEY,
	book_name			VARCHAR(50),
	author_id			INT,
	publisher_id		INT,
	category_id			INT,
	insert_date			TIMESTAMP,
	insert_user_id		VARCHAR(20),
	update_date			TIMESTAMP,
	update_user_id		VARCHAR(20),
	delete_date			TIMESTAMP,
	delete_user_id		VARCHAR(20),
	delete_flag			boolean
);

--著者テーブル
CREATE TABLE IF NOT EXISTS author(
	author_id			INT NOT NULL	PRIMARY KEY,
	author_name			VARCHAR(50),
	insert_date			TIMESTAMP,
	insert_user_id		VARCHAR(20),
	update_date			TIMESTAMP,
	update_user_id		VARCHAR(20),
	delete_date			TIMESTAMP,
	delete_user_id		VARCHAR(20),
	delete_flag			boolean
);

--出版社テーブル
CREATE TABLE IF NOT EXISTS publisher(
	publisher_id		INT NOT NULL	PRIMARY KEY,
	publisher_name		VARCHAR(50),
	insert_date			TIMESTAMP,
	insert_user_id		VARCHAR(20),
	update_date			TIMESTAMP,
	update_user_id		VARCHAR(20),
	delete_date			TIMESTAMP,
	delete_user_id		VARCHAR(20),
	delete_flag			boolean
);

--棚テーブル
CREATE TABLE IF NOT EXISTS shelf(
	shelf_id			INT NOT NULL	PRIMARY KEY,
	shelf_name			VARCHAR(50),
	insert_date			TIMESTAMP,
	insert_user_id		VARCHAR(20),
	update_date			TIMESTAMP,
	update_user_id		VARCHAR(20),
	delete_date			TIMESTAMP,
	delete_user_id		VARCHAR(20),
	delete_flag			boolean
);

--収納情報テーブル
CREATE TABLE IF NOT EXISTS storage(
	storage_id			INT NOT NULL	PRIMARY	KEY,
	shelf_id			INT,
	row					INT,
	column				INT,
	insert_date			TIMESTAMP,
	insert_user_id		VARCHAR(20),
	update_date			TIMESTAMP,
	update_user_id		VARCHAR(20),
	delete_date			TIMESTAMP,
	delete_user_id		VARCHAR(20),
	delete_flag			boolean
	
);

--貸出情報テーブル
CREATE TABLE IF NOT EXISTS lending(
	lending_id			INT NOT NULL	PRIMARY	KEY,
	book_id				INT,
	user_id				INT,
	checkout_date		TIMESTAMP,
	return_date			TIMESTAMP,
	insert_date			TIMESTAMP,
	insert_user_id		VARCHAR(20),
	update_date			TIMESTAMP,
	update_user_id		VARCHAR(20),
	update_count		INT,
	delete_date			TIMESTAMP,
	delete_user_id		VARCHAR(20),
	delete_flag			boolean
);