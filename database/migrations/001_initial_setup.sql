-- mindbridge DB 생성 및 소유자 설정 (관리자 admin)
CREATE DATABASE mindbridge OWNER admin;

-- 사용자 생성
CREATE USER haein WITH PASSWORD 'haein_password';
CREATE USER jae WITH PASSWORD 'jae_password';
CREATE USER jusil WITH PASSWORD 'jusil_password';
CREATE USER young WITH PASSWORD 'young_password';

-- db_manager 롤 생성 및 권한 부여
CREATE ROLE db_manager WITH CREATEDB REPLICATION;

-- mindbridge DB에 대한 모든 권한을 db_admin 롤에 부여
GRANT ALL PRIVILEGES ON DATABASE mindbridge TO db_manager;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO db_manager;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO db_manager;

-- 추가로, 새로운 테이블이 추가될 때도 자동으로 권한 부여
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO db_manager;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON SEQUENCES TO db_manager;

-- 사용자에게 db_manager 롤 할당
GRANT db_manager TO haein, jae, jusil, young;
