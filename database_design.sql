CREATE DATABASE database_design_db;

USE database_design_db;

CREATE TABLE user(
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     username VARCHAR(50) NOT NULL,
                     user_email VARCHAR(100) NOT NULL,
                     user_password VARCHAR(50) NOT NULL,
                     PRIMARY KEY (id)
);

CREATE TABLE ads(
                    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                    ad_title VARCHAR (50) NOT NULL,
                    ad_description VARCHAR(200) NOT NULL,
                    user_id INT UNSIGNED DEFAULT NULL,
                    PRIMARY KEY (id),
                    FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE categories(
                           id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                           PRIMARY KEY (id),
                           category_name VARCHAR(50)
);

CREATE TABLE ads_category(
                             ads_id INT UNSIGNED,
                             category_id INT UNSIGNED,
                             FOREIGN KEY (ads_id) REFERENCES ads(id),
                             FOREIGN KEY (category_id) REFERENCES categories(id)
);


#For a given ad, what is the email address of the user that created it?
SELECT user_email
FROM user
WHERE id IN(
    SELECT user_id
    FROM ADS
    WHERE id ='user email' AND ad_title = 'given ad'
);
#
# #For a given ad, what category does it belong to?
# SELECT category_title
# FROM categories
# WHERE ad_title IN(
#     SELECT categories_id
#     FROM categories_ads
#     WHERE ads_id = categories_id
# );
#
#
# SELECT category_title
# FROM categories
# WHERE ad_title IN(
#     SELECT categories_id
#     FROM categories_ads
#     WHERE ads_id IN (
#         select id
#         FROM ADS
#         WHERE ad_title = 'given ad'
#     )
# );
#
# #For a given category, show all the ads that are in that category.
# SELECT category_title
# FROM categories
# WHERE ads_id IN(
#     SELECT categories id
#     FROM categories_ads
#     WHERE ads_id IN(
#         SELECT ad_title
#         FROM ADS
#         WHERE ads_id ='....'
#     )
# );
#
#
# # For a given user, show all the ads they have posted.
# SELECT (*)
# FROM ADS
# WHERE user_id IN(
#     select user_email
#     FROM user
#     WHERE user_email = ''
# )