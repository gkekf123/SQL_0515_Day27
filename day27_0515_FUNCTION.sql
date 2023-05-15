-- 문자열 함수
-- LOWER(), INITCAP(), UPPER()
SELECT LOWER('HELLO'), INITCAP('HELLO'), UPPER('HELLO') FROM DUAL; // 가짜 테이블

SELECT LOWER(first_name), INITCAP(first_name), UPPER(first_name) FROM employees;

-- 함수는 WHERE절에도 적용
SELECT first_name FROM employees WHERE UPPER(first_name) = 'STEVEN';

-- LENTH() : 길이, INSTR() : 문자찾기
SELECT first_name, LENGTH(first_name), INSTR(first_name, 'e') FROM employees;

-- SUBSTR() : 문자열 자르기, CONCAT() : 문자열 합치기
SELECT first_name, SUBSTR(first_name, 1, 3) FROM employees; // 1번째에서 3글자를 자름
SELECT first_name, CONCAT(first_name, last_name)FROM employees; //first_name || last_name과 같은표현

-- LPAD() : 왼쪽 채우기, RPAD() : 오른쪽 채우기
SELECT LPAD('HELLO', 10, '*') FROM DUAL; // 10칸 잡고 왼쪽부터 채운다
SELECT LPAD(salary, 10, '*') FROM employees;
SELECT RPAD(salary, 10, '*') FROM employees;

-- LTRIM() : 왼쪽 제거, RTRIM() : 오른쪽 제거, RTIM() : 양쪽 제거
SELECT LTRIM('     HELLO') FROM DUAL;
SELECT LTRIM(first_name, 'A') FROM employees; // 왼쪽에 처음 발견되는 문자 A제거
SELECT RTRIM(first_name, 'n') FROM employees; // 오른쪽에서 입력 문자 제거
SELECT TRIM('    HELLO ') AS RESULT FROM DUAL;

-- REPLACE() : 문자열 변경
SELECT REPLACE('HELLO WORLD', 'HELLO', 'BYE') FROM DUAL;
SELECT REPLACE('HELLO WORLD ~!', ', ', '') AS RESULT FROM DUAL; -- 모든 공백 제거

-- 중첩
SELECT REPLACE('HELLO WORLD ~!', 'HELLO', 'BYE') FROM DUAL;
SELECT REPLACE(REPLACE('HELLO WORLD ~!', 'HELLO', 'BYE'), ' ', '') AS RESULT FROM DUAL;

