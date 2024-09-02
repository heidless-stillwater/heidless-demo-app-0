--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.4 (Ubuntu 16.4-0ubuntu0.24.04.1)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO heidless;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.posts (
    id bigint NOT NULL,
    title character varying,
    content text,
    author character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    views integer DEFAULT 0
);


ALTER TABLE public.posts OWNER TO heidless;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.posts_id_seq OWNER TO heidless;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO heidless;

--
-- Name: users; Type: TABLE; Schema: public; Owner: heidless
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO heidless;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: heidless
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO heidless;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: heidless
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-09-01 10:21:57.012433	2024-09-01 10:21:57.012437
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.posts (id, title, content, author, created_at, updated_at, views) FROM stdin;
5	test title 2	test content 2	test author 2	2024-09-01 13:33:07.140656	2024-09-01 13:33:07.140656	0
6	title:0	content: 0	\N	2024-09-01 13:45:11.050673	2024-09-01 13:45:11.050673	0
7	title:1	content: 1	\N	2024-09-01 13:45:11.082638	2024-09-01 13:45:11.082638	0
8	title:2	content: 2	\N	2024-09-01 13:45:11.096242	2024-09-01 13:45:11.096242	0
9	title:3	content: 3	\N	2024-09-01 13:45:11.108901	2024-09-01 13:45:11.108901	0
10	title:4	content: 4	\N	2024-09-01 13:45:11.120787	2024-09-01 13:45:11.120787	0
11	title:5	content: 5	\N	2024-09-01 13:45:11.132508	2024-09-01 13:45:11.132508	0
12	title:6	content: 6	\N	2024-09-01 13:45:11.143554	2024-09-01 13:45:11.143554	0
13	title:7	content: 7	\N	2024-09-01 13:45:11.154649	2024-09-01 13:45:11.154649	0
14	title:8	content: 8	\N	2024-09-01 13:45:11.165557	2024-09-01 13:45:11.165557	0
15	title:9	content: 9	\N	2024-09-01 13:45:11.176609	2024-09-01 13:45:11.176609	0
3	test title 0	test desc 0	test author 0	2024-09-01 13:30:25.410761	2024-09-01 14:28:41.430779	13
4	test title 1	test content 1	test author 1	2024-09-01 13:31:00.573074	2024-09-01 14:29:41.824457	17
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.schema_migrations (version) FROM stdin;
20240901103102
20240901115206
20240901141905
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: heidless
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
1	heidlessemail05@gmail.com	$2a$12$wiNJA..9xAU3GfDB7MccT.RpP2VKIfiGRvghU2N9gjj6Wy5xnK6LO	\N	\N	\N	2024-09-01 12:53:45.191489	2024-09-01 12:53:45.191489
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.posts_id_seq', 15, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: heidless
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: heidless
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: heidless
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--

