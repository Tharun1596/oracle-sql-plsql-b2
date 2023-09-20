-- First, create a sequence that generates unique values starting from 1
CREATE SEQUENCE id_sequence
    Start with 1
    Increment by 1
    Nomaxvalue

CREATE TABLE country_info
(ID NUMBER DEFAULT id_sequence.NEXTVAL NOT NULL, 
country_code_3 CHAR(3) NOT NULL, 
country_code_2 VARCHAR2(2) NOT NULL, 
country_name VARCHAR2(50) NULL,
num_states NUMBER(2) NULL,
population NUMBER(10) NULL)

INSERT INTO country_info(country_code_3,country_code_2,country_name,num_states,population) VALUES ('IN','IN','India',28,145)
INSERT INTO country_info(country_code_3,country_code_2,country_name,num_states,population) VALUES ('US','US','United States of America',50,34)
INSERT INTO country_info(country_code_3,country_code_2,country_name,num_states,population) VALUES ('CA','CA','Canada',10,3)

select ID,Length(ID) AS ID_Length,country_code_3,Length(country_code_3) AS country_code_3_Length,
    country_code_2,Length(country_code_2) AS country_code_2_Length,
    country_name,Length(country_name) AS country_name_Length, 
    num_states,Length(num_states) AS num_states_Length, population,Length(population) AS population_Length
    from country_info