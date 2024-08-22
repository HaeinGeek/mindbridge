-- mindbridge DB에 접속하여 테이블 생성
\c mindbridge

CREATE TABLE mental_depress_sym (
    id SERIAL PRIMARY KEY,
    region_name VARCHAR(100),
    year INT,
    prevalence_rate DECIMAL(5,2)
);

CREATE TABLE mental_depress_experience (
    id SERIAL PRIMARY KEY,
    region_name VARCHAR(100),
    year INT,
    experience_rate DECIMAL(5,2)
);
