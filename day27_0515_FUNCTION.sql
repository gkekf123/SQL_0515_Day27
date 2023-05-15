-- ���ڿ� �Լ�
-- LOWER(), INITCAP(), UPPER()
SELECT LOWER('HELLO'), INITCAP('HELLO'), UPPER('HELLO') FROM DUAL; // ��¥ ���̺�

SELECT LOWER(first_name), INITCAP(first_name), UPPER(first_name) FROM employees;

-- �Լ��� WHERE������ ����
SELECT first_name FROM employees WHERE UPPER(first_name) = 'STEVEN';

-- LENTH() : ����, INSTR() : ����ã��
SELECT first_name, LENGTH(first_name), INSTR(first_name, 'e') FROM employees;

-- SUBSTR() : ���ڿ� �ڸ���, CONCAT() : ���ڿ� ��ġ��
SELECT first_name, SUBSTR(first_name, 1, 3) FROM employees; // 1��°���� 3���ڸ� �ڸ�
SELECT first_name, CONCAT(first_name, last_name)FROM employees; //first_name || last_name�� ����ǥ��

-- LPAD() : ���� ä���, RPAD() : ������ ä���
SELECT LPAD('HELLO', 10, '*') FROM DUAL; // 10ĭ ��� ���ʺ��� ä���
SELECT LPAD(salary, 10, '*') FROM employees;
SELECT RPAD(salary, 10, '*') FROM employees;

-- LTRIM() : ���� ����, RTRIM() : ������ ����, RTIM() : ���� ����
SELECT LTRIM('     HELLO') FROM DUAL;
SELECT LTRIM(first_name, 'A') FROM employees; // ���ʿ� ó�� �߰ߵǴ� ���� A����
SELECT RTRIM(first_name, 'n') FROM employees; // �����ʿ��� �Է� ���� ����
SELECT TRIM('    HELLO ') AS RESULT FROM DUAL;

-- REPLACE() : ���ڿ� ����
SELECT REPLACE('HELLO WORLD', 'HELLO', 'BYE') FROM DUAL;
SELECT REPLACE('HELLO WORLD ~!', ', ', '') AS RESULT FROM DUAL; -- ��� ���� ����

-- ��ø
SELECT REPLACE('HELLO WORLD ~!', 'HELLO', 'BYE') FROM DUAL;
SELECT REPLACE(REPLACE('HELLO WORLD ~!', 'HELLO', 'BYE'), ' ', '') AS RESULT FROM DUAL;

