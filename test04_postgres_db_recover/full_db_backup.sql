--
-- PostgreSQL database cluster dump
--

\restrict rA3FYELz7Iwa8u8ooiW5E8QqJueRWDkRMrChQ5KqW0aUlngliM753BrtplRLkqs

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE gyu;
ALTER ROLE gyu WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:bl2IsXbjwAx1/EmtWyBqLg==$YwXZml+yDssjYr5guK4cGCAXvVocE9k8EFlREPjjHaU=:BaHhKALMcthWisfv9C7agasgwNcVp3XsUrELI3nEmZ8=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:H0jO0rk81Y3RbEXJlnCcnA==$8rbdhChVT/5aaY8iNa293CmFUDtBM9MVuHn76BCydGs=:S2AZxQSzLMJZbHfbqxtQIHq7e5bjLufSOawzJhWoG/I=';
CREATE ROLE scott;
ALTER ROLE scott WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:/HfC2dhqkMqWDtE68omihw==$meJaIhsv1nyQtSoa4rBEoTzxxOrncySFHZfFz/XpUeg=:GtXvr0fqi/KpMOUxE3ffaXgcdX6o3bRGhKy8eCdjsY0=';

--
-- User Configurations
--








\unrestrict rA3FYELz7Iwa8u8ooiW5E8QqJueRWDkRMrChQ5KqW0aUlngliM753BrtplRLkqs

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict smh7Wy77kVzpDn3QUFGurWB6lQM3W9nWjvUc5Seo0fgzBFKAFUFozGSn4HJ7q60

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict smh7Wy77kVzpDn3QUFGurWB6lQM3W9nWjvUc5Seo0fgzBFKAFUFozGSn4HJ7q60

--
-- Database "gyu_db" dump
--

--
-- PostgreSQL database dump
--

\restrict ftMegFj8aWFje3ljLg1sZKAEIb8j1dUXAQcZhelvObhl6AkHiY1xfSyHaNhd0a4

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: gyu_db; Type: DATABASE; Schema: -; Owner: gyu
--

CREATE DATABASE gyu_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE gyu_db OWNER TO gyu;

\unrestrict ftMegFj8aWFje3ljLg1sZKAEIb8j1dUXAQcZhelvObhl6AkHiY1xfSyHaNhd0a4
\connect gyu_db
\restrict ftMegFj8aWFje3ljLg1sZKAEIb8j1dUXAQcZhelvObhl6AkHiY1xfSyHaNhd0a4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict ftMegFj8aWFje3ljLg1sZKAEIb8j1dUXAQcZhelvObhl6AkHiY1xfSyHaNhd0a4

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict MVTxF4jlWzIrNJCBzhUGZs8z1cTkz434xkDuFPsrVn9WHJMQhqG2vtMycpPUXCB

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict MVTxF4jlWzIrNJCBzhUGZs8z1cTkz434xkDuFPsrVn9WHJMQhqG2vtMycpPUXCB

--
-- Database "scott_db" dump
--

--
-- PostgreSQL database dump
--

\restrict Xg0wfTKP1bA3pDPZq525gwP0EUUGGQkmLyH8DZNeJysRmyEHITOn0Lmxce7yKfB

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: scott_db; Type: DATABASE; Schema: -; Owner: scott
--

CREATE DATABASE scott_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE scott_db OWNER TO scott;

\unrestrict Xg0wfTKP1bA3pDPZq525gwP0EUUGGQkmLyH8DZNeJysRmyEHITOn0Lmxce7yKfB
\connect scott_db
\restrict Xg0wfTKP1bA3pDPZq525gwP0EUUGGQkmLyH8DZNeJysRmyEHITOn0Lmxce7yKfB

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dept; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.dept (
    deptno integer NOT NULL,
    dname character varying(14),
    loc character varying(13)
);


ALTER TABLE public.dept OWNER TO scott;

--
-- Name: emp; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.emp (
    empno integer NOT NULL,
    ename character varying(10),
    job character varying(9),
    mgr integer,
    hiredate date,
    sal numeric(7,2),
    comm numeric(7,2),
    deptno integer
);


ALTER TABLE public.emp OWNER TO scott;

--
-- Name: member; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.member (
    num integer NOT NULL,
    name text NOT NULL,
    addr text
);


ALTER TABLE public.member OWNER TO scott;

--
-- Name: member_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.member_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.member_num_seq OWNER TO scott;

--
-- Name: member_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.member_num_seq OWNED BY public.member.num;


--
-- Name: notice; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.notice (
    num integer NOT NULL,
    content text
);


ALTER TABLE public.notice OWNER TO scott;

--
-- Name: notice_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.notice_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notice_num_seq OWNER TO scott;

--
-- Name: notice_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.notice_num_seq OWNED BY public.notice.num;


--
-- Name: post; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.post (
    num integer NOT NULL,
    writer character varying(50) NOT NULL,
    title character varying(100),
    content text,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.post OWNER TO scott;

--
-- Name: post_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.post_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_num_seq OWNER TO scott;

--
-- Name: post_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.post_num_seq OWNED BY public.post.num;


--
-- Name: member num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.member ALTER COLUMN num SET DEFAULT nextval('public.member_num_seq'::regclass);


--
-- Name: notice num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.notice ALTER COLUMN num SET DEFAULT nextval('public.notice_num_seq'::regclass);


--
-- Name: post num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.post ALTER COLUMN num SET DEFAULT nextval('public.post_num_seq'::regclass);


--
-- Data for Name: dept; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.dept (deptno, dname, loc) FROM stdin;
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON
\.


--
-- Data for Name: emp; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) FROM stdin;
7369	SMITH	CLERK	7902	1980-12-17	800.00	\N	20
7499	ALLEN	SALESMAN	7698	1981-02-20	1600.00	300.00	30
7521	WARD	SALESMAN	7698	1981-02-22	1250.00	500.00	30
7566	JONES	MANAGER	7839	1981-04-02	2975.00	\N	20
7654	MARTIN	SALESMAN	7698	1981-09-28	1250.00	1400.00	30
7698	BLAKE	MANAGER	7839	1981-05-01	2850.00	\N	30
7782	CLARK	MANAGER	7839	1981-06-09	2450.00	\N	10
7788	SCOTT	ANALYST	7566	1987-07-13	3000.00	\N	20
7839	KING	PRESIDENT	\N	1981-11-17	5000.00	\N	10
7844	TURNER	SALESMAN	7698	1981-09-08	1500.00	0.00	30
7876	ADAMS	CLERK	7788	1987-07-13	1100.00	\N	20
7900	JAMES	CLERK	7698	1981-12-03	950.00	\N	30
7902	FORD	ANALYST	7566	1981-12-03	3000.00	\N	20
7934	MILLER	CLERK	7782	1982-01-23	1300.00	\N	10
\.


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.member (num, name, addr) FROM stdin;
1	이성규	강동구
3	이원규	강동구
4	최시은	강동구
5	최시짱	\N
\.


--
-- Data for Name: notice; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.notice (num, content) FROM stdin;
1	월요일 입니다. 리눅스가 곧 시작됩니다.
2	ansible 도 곧 배워야합니다
3	즐거울 주말 보내세요
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.post (num, writer, title, content, created_at) FROM stdin;
1	kim	hello	...bye!	2026-04-20 10:40:51.110563
2	lee	hi	...bye!	2026-04-20 10:41:26.529024
3	aa	aaa	aaaa	2026-04-20 11:31:50.272723
5	bbb	bbb	cadsfasdfads	2026-04-20 12:23:27.731595
\.


--
-- Name: member_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.member_num_seq', 5, true);


--
-- Name: notice_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.notice_num_seq', 3, true);


--
-- Name: post_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.post_num_seq', 5, true);


--
-- Name: dept dept_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.dept
    ADD CONSTRAINT dept_pkey PRIMARY KEY (deptno);


--
-- Name: emp emp_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_pkey PRIMARY KEY (empno);


--
-- Name: member member_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (num);


--
-- Name: notice notice_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.notice
    ADD CONSTRAINT notice_pkey PRIMARY KEY (num);


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (num);


--
-- Name: emp emp_deptno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_deptno_fkey FOREIGN KEY (deptno) REFERENCES public.dept(deptno);


--
-- PostgreSQL database dump complete
--

\unrestrict Xg0wfTKP1bA3pDPZq525gwP0EUUGGQkmLyH8DZNeJysRmyEHITOn0Lmxce7yKfB

--
-- PostgreSQL database cluster dump complete
--

