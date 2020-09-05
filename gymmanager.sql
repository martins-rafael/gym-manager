--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

-- Started on 2020-07-16 22:31:34

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
-- TOC entry 2836 (class 1262 OID 16393)
-- Name: gymmanager; Type: DATABASE; Schema: -; Owner: postgres
--



ALTER DATABASE gymmanager OWNER TO postgres;

\connect gymmanager

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
-- TOC entry 203 (class 1259 OID 16396)
-- Name: instructors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instructors (
    id integer NOT NULL,
    name text,
    avatar_url text,
    gender text,
    services text,
    birth timestamp without time zone,
    created_at timestamp without time zone
);


ALTER TABLE public.instructors OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16394)
-- Name: instructors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instructors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instructors_id_seq OWNER TO postgres;

--
-- TOC entry 2837 (class 0 OID 0)
-- Dependencies: 202
-- Name: instructors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instructors_id_seq OWNED BY public.instructors.id;


--
-- TOC entry 205 (class 1259 OID 16470)
-- Name: members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members (
    id integer NOT NULL,
    name text,
    avatar_url text,
    email text,
    gender text,
    birth timestamp without time zone,
    blood text,
    weight integer,
    height integer,
    instructor_id integer
);


ALTER TABLE public.members OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16468)
-- Name: members_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.members_id_seq OWNER TO postgres;

--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 204
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.members_id_seq OWNED BY public.members.id;


--
-- TOC entry 2695 (class 2604 OID 16399)
-- Name: instructors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructors ALTER COLUMN id SET DEFAULT nextval('public.instructors_id_seq'::regclass);


--
-- TOC entry 2696 (class 2604 OID 16473)
-- Name: members id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members ALTER COLUMN id SET DEFAULT nextval('public.members_id_seq'::regclass);


--
-- TOC entry 2828 (class 0 OID 16396)
-- Dependencies: 203
-- Data for Name: instructors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.instructors (id, name, avatar_url, gender, services, birth, created_at) VALUES (10, 'Karla Wo', 'https://images.unsplash.com/photo-1560233075-4c1e2007908e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=358&q=80', 'F', 'yoga, meditação', '1993-01-01 00:00:00', '2020-07-08 00:00:00');
INSERT INTO public.instructors (id, name, avatar_url, gender, services, birth, created_at) VALUES (1, 'Alex Ipsum', 'https://images.unsplash.com/photo-1517838277536-f5f99be501cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 'M', 'Calistenia, Musculação', '1993-01-02 00:00:00', '2020-06-02 00:00:00');
INSERT INTO public.instructors (id, name, avatar_url, gender, services, birth, created_at) VALUES (11, 'Caio Wo', 'https://images.unsplash.com/photo-1551763337-e05b91996d32?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 'M', 'Crossfit, musculação', '1998-02-01 00:00:00', '2020-07-09 00:00:00');
INSERT INTO public.instructors (id, name, avatar_url, gender, services, birth, created_at) VALUES (12, 'Luka Gonzales', 'https://images.unsplash.com/photo-1557408833-91ef36660bcb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=748&q=80', 'M', 'Boxe, muay thai', '1986-02-01 00:00:00', '2020-07-09 00:00:00');
INSERT INTO public.instructors (id, name, avatar_url, gender, services, birth, created_at) VALUES (2, 'Guilherme Saraiva', 'https://images.unsplash.com/photo-1563053764-85dbf278c408?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80', 'M', 'Musculação, crossfit', '1980-02-01 00:00:00', '2020-06-03 00:00:00');
INSERT INTO public.instructors (id, name, avatar_url, gender, services, birth, created_at) VALUES (5, 'Julia Consectetur ', 'https://images.unsplash.com/photo-1548690312-e3b507d8c110?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 'F', 'jiu jitsu, judo', '1992-01-01 00:00:00', '2020-07-01 00:00:00');
INSERT INTO public.instructors (id, name, avatar_url, gender, services, birth, created_at) VALUES (7, 'Estephani Null', 'https://images.unsplash.com/photo-1471277876629-37eaac632a24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80', 'F', 'boxe, judo', '1990-01-01 00:00:00', '2020-07-08 00:00:00');
INSERT INTO public.instructors (id, name, avatar_url, gender, services, birth, created_at) VALUES (8, 'Etan Park', 'https://images.unsplash.com/photo-1520920200465-946379ad1349?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=353&q=80', 'M', 'calistenia, parkour', '1988-01-01 00:00:00', '2020-07-08 00:00:00');
INSERT INTO public.instructors (id, name, avatar_url, gender, services, birth, created_at) VALUES (9, 'Marie Star', 'https://images.unsplash.com/photo-1550345332-d73a0111ad25?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=299&q=80', 'F', 'Ginástica Olímpica', '1995-01-01 00:00:00', '2020-07-08 00:00:00');


--
-- TOC entry 2830 (class 0 OID 16470)
-- Dependencies: 205
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.members (id, name, avatar_url, email, gender, birth, blood, weight, height, instructor_id) VALUES (3, 'Caio Amet', 'https://images.unsplash.com/photo-1583500178964-98351600826a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80', 'caio_a@email.com', 'M', '1995-06-01 00:00:00', 'A1', 60, 160, 1);
INSERT INTO public.members (id, name, avatar_url, email, gender, birth, blood, weight, height, instructor_id) VALUES (7, 'Rubens Dolor', 'https://upl.stack.com/wp-content/uploads/2013/07/Skinny-Flex-629x408.jpg', 'rd@email.com', 'M', '1992-02-05 00:00:00', 'AB0', 55, 165, 2);
INSERT INTO public.members (id, name, avatar_url, email, gender, birth, blood, weight, height, instructor_id) VALUES (8, 'José Doe', 'https://images.unsplash.com/photo-1557851114-3f672a50722a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=333&q=80', 'jose-doe@email.com', 'M', '1989-02-05 00:00:00', 'A1', 62, 178, 12);
INSERT INTO public.members (id, name, avatar_url, email, gender, birth, blood, weight, height, instructor_id) VALUES (9, 'Anna Ane', 'https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80', 'anna@email.com', 'F', '1998-02-05 00:00:00', 'O1', 50, 155, 9);
INSERT INTO public.members (id, name, avatar_url, email, gender, birth, blood, weight, height, instructor_id) VALUES (1, 'Daniel', 'https://images.unsplash.com/photo-1549361426-ee116328745c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=925&q=80', 'dani@email.com', 'M', '1980-01-01 00:00:00', 'AB1', 85, 180, 5);
INSERT INTO public.members (id, name, avatar_url, email, gender, birth, blood, weight, height, instructor_id) VALUES (4, 'Leon K', 'https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=635&q=80', 'leonk@email.com', 'M', '1988-02-05 00:00:00', 'O1', 70, 178, 1);


--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 202
-- Name: instructors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instructors_id_seq', 12, true);


--
-- TOC entry 2840 (class 0 OID 0)
-- Dependencies: 204
-- Name: members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.members_id_seq', 9, true);


--
-- TOC entry 2698 (class 2606 OID 16401)
-- Name: instructors instructors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instructors
    ADD CONSTRAINT instructors_pkey PRIMARY KEY (id);


--
-- TOC entry 2700 (class 2606 OID 16475)
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


-- Completed on 2020-07-16 22:31:34

--
-- PostgreSQL database dump complete
--

