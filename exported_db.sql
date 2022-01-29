--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.1 (Debian 14.1-1.pgdg110+1)

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

ALTER TABLE ONLY public.et_user DROP CONSTRAINT et_user_pkey;
ALTER TABLE ONLY public.et_take_away DROP CONSTRAINT et_take_away_pkey;
ALTER TABLE ONLY public.et_restaurant DROP CONSTRAINT et_restaurant_pkey;
ALTER TABLE ONLY public.et_bistro DROP CONSTRAINT et_bistro_pkey;
ALTER TABLE public.et_user ALTER COLUMN user_id DROP DEFAULT;
ALTER TABLE public.et_take_away ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.et_restaurant ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.et_bistro ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.et_user_user_id_seq;
DROP TABLE public.et_user;
DROP SEQUENCE public.et_take_away_id_seq;
DROP TABLE public.et_take_away;
DROP SEQUENCE public.et_restaurant_id_seq;
DROP TABLE public.et_restaurant;
DROP SEQUENCE public.et_bistro_id_seq;
DROP TABLE public.et_bistro;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: et_bistro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.et_bistro (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    rating character varying(20) NOT NULL,
    range character varying(50) NOT NULL,
    hours character varying(20) NOT NULL,
    city character varying(20) NOT NULL
);


ALTER TABLE public.et_bistro OWNER TO postgres;

--
-- Name: et_bistro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.et_bistro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.et_bistro_id_seq OWNER TO postgres;

--
-- Name: et_bistro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.et_bistro_id_seq OWNED BY public.et_bistro.id;


--
-- Name: et_restaurant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.et_restaurant (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    rating character varying(20) NOT NULL,
    range character varying(50) NOT NULL,
    hours character varying(20) NOT NULL,
    city character varying(20) NOT NULL
);


ALTER TABLE public.et_restaurant OWNER TO postgres;

--
-- Name: et_restaurant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.et_restaurant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.et_restaurant_id_seq OWNER TO postgres;

--
-- Name: et_restaurant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.et_restaurant_id_seq OWNED BY public.et_restaurant.id;


--
-- Name: et_take_away; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.et_take_away (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    rating character varying(20) NOT NULL,
    range character varying(50) NOT NULL,
    hours character varying(20) NOT NULL,
    city character varying(20) NOT NULL
);


ALTER TABLE public.et_take_away OWNER TO postgres;

--
-- Name: et_take_away_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.et_take_away_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.et_take_away_id_seq OWNER TO postgres;

--
-- Name: et_take_away_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.et_take_away_id_seq OWNED BY public.et_take_away.id;


--
-- Name: et_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.et_user (
    user_id integer NOT NULL,
    user_name character varying(20) NOT NULL,
    user_surname character varying(20) NOT NULL,
    user_username character varying(30) NOT NULL,
    user_password text NOT NULL
);


ALTER TABLE public.et_user OWNER TO postgres;

--
-- Name: et_user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.et_user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.et_user_user_id_seq OWNER TO postgres;

--
-- Name: et_user_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.et_user_user_id_seq OWNED BY public.et_user.user_id;


--
-- Name: et_bistro id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.et_bistro ALTER COLUMN id SET DEFAULT nextval('public.et_bistro_id_seq'::regclass);


--
-- Name: et_restaurant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.et_restaurant ALTER COLUMN id SET DEFAULT nextval('public.et_restaurant_id_seq'::regclass);


--
-- Name: et_take_away id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.et_take_away ALTER COLUMN id SET DEFAULT nextval('public.et_take_away_id_seq'::regclass);


--
-- Name: et_user user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.et_user ALTER COLUMN user_id SET DEFAULT nextval('public.et_user_user_id_seq'::regclass);


--
-- Data for Name: et_bistro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.et_bistro (id, name, rating, range, hours, city) FROM stdin;
0	as	N/A	das	das	dasd
2	asd	N/A	as	d	ad
3	asd	N/A	a	das	das
4	as	N/A	das	das	d
5	as	N/A	dasd	asd	asd
6	asd	N/A	qwe	qwe	qwe
8	qe	N/A	qw	eqw	eqw
7	t	10_5	t	t	t
\.


--
-- Data for Name: et_restaurant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.et_restaurant (id, name, rating, range, hours, city) FROM stdin;
4	w	10_5_10_8	w	w	w
9	QWE	N/A_3	QWE	QWE	QWE
10	qwe	_3	qwe	qw	eqwe
11	qwe	5_10	qwe	qwe	qwe
\.


--
-- Data for Name: et_take_away; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.et_take_away (id, name, rating, range, hours, city) FROM stdin;
3	qwe	5_4	asd	zxc	rty
\.


--
-- Data for Name: et_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.et_user (user_id, user_name, user_surname, user_username, user_password) FROM stdin;
1	user1	surname1	username1	password1
2	user2	surname2	username2	password2
3	user3	surname3	username3	password3
4	user4	surname4	username4	password4
5	user5	surname5	username5	password5
\.


--
-- Name: et_bistro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.et_bistro_id_seq', 9, true);


--
-- Name: et_restaurant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.et_restaurant_id_seq', 11, true);


--
-- Name: et_take_away_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.et_take_away_id_seq', 3, true);


--
-- Name: et_user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.et_user_user_id_seq', 5, true);


--
-- Name: et_bistro et_bistro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.et_bistro
    ADD CONSTRAINT et_bistro_pkey PRIMARY KEY (id);


--
-- Name: et_restaurant et_restaurant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.et_restaurant
    ADD CONSTRAINT et_restaurant_pkey PRIMARY KEY (id);


--
-- Name: et_take_away et_take_away_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.et_take_away
    ADD CONSTRAINT et_take_away_pkey PRIMARY KEY (id);


--
-- Name: et_user et_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.et_user
    ADD CONSTRAINT et_user_pkey PRIMARY KEY (user_id);


--
-- Name: TABLE et_bistro; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.et_bistro TO rating;


--
-- Name: SEQUENCE et_bistro_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.et_bistro_id_seq TO rating;


--
-- Name: TABLE et_restaurant; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.et_restaurant TO rating;


--
-- Name: SEQUENCE et_restaurant_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.et_restaurant_id_seq TO rating;


--
-- Name: TABLE et_take_away; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.et_take_away TO rating;


--
-- Name: SEQUENCE et_take_away_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.et_take_away_id_seq TO rating;


--
-- Name: TABLE et_user; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.et_user TO rating;


--
-- Name: SEQUENCE et_user_user_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.et_user_user_id_seq TO rating;


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES  TO rating;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES  TO rating;


--
-- PostgreSQL database dump complete
--

