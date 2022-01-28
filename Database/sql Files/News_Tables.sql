Create table Time (
	url VARCHAR, 
	weekday_is_monday INT,
	weekday_is_tuesday INT,
	weekday_is_wednesday INT,
	weekday_is_thursday INT,
	weekday_is_friday INT,
	weekday_is_saturday INT,
	weekday_is_sunday INT,
	is_weekend INT
);

CREATE TABLE Category (
	url VARCHAR, 
	data_channel_is_lifestyle INT,
	data_channel_is_entertainment INT,
	data_channel_is_bus INT, 
	data_channel_is_socmed INT,
	data_channel_is_tech INT,
	data_channel_is_world INT
);

CREATE TABLE Keywords (
	url VARCHAR, 
	num_keywords INT, 
	kw_min_min INT, 
	kw_max_min INT, 
	kw_avg_min INT, 
	kw_min_max INT, 
	kw_max_max INT, 
	kw_avg_max INT, 
	kw_min_avg INT, 
	kw_max_avg INT, 
	kw_avg_avg INT
);

CREATE TABLE Links (
	url VARCHAR,
	num_hrefs INT, 
	num_self_hrefs INT, 
	self_reference_min_shares INT, 
	self_reference_max_shares INT, 
	self_reference_avg_sharess FLOAT(15)
);	

CREATE TABLE Media (
	url VARCHAR,
	num_imgs INT, 
	num_videos INT
);

CREATE TABLE Words (
	url VARCHAR,
	n_tokens_title INT,
	n_tokens_content INT,
	n_unique_tokens FLOAT(15),
	n_non_stop_words FLOAT(15), 
	n_non_stop_unique_tokens  FLOAT(15),
	average_token_length  FLOAT(15)
);

CREATE TABLE Shares (
	url VARCHAR,
	shares INT
);

CREATE TABLE Processing (
	url VARCHAR, 
	LDA_00 FLOAT(15),
	LDA_01 FLOAT(15),
	LDA_02 FLOAT(15),
	LDA_03 FLOAT(15),
	LDA_04 FLOAT(15)
);	

CREATE TABLE Polarity (
	url VARCHAR, 
	global_subjectivity FLOAT(15),
	global_sentiment_polarity FLOAT(15),
	global_rate_positive_words FLOAT(15),
	global_rate_negative_words FLOAT(15),
	rate_positive_words FLOAT(15),
	rate_negative_words FLOAT(15),
	avg_positive_polarity FLOAT(15),
	min_positive_polarity  FLOAT(15),
	max_positive_polarity FLOAT(15),
	avg_negative_polarity FLOAT(15),
	min_negative_polarity FLOAT(15),
	max_negative_polarity FLOAT(15),
	title_subjectivity FLOAT(15),
	title_sentiment_polarity FLOAT(15),
	abs_title_subjectivity FLOAT(15),
	abs_title_sentiment_polarity FLOAT(15)
);






























