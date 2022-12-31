--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

ALTER TABLE ONLY public.games DROP CONSTRAINT games_user_id_fkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_name_key;
ALTER TABLE ONLY public.games DROP CONSTRAINT games_pkey;
ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
ALTER TABLE public.games ALTER COLUMN game_id DROP DEFAULT;
DROP SEQUENCE public.users_user_id_seq;
DROP TABLE public.users;
DROP SEQUENCE public.games_game_id_seq;
DROP TABLE public.games;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    tries integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 6, 18779);
INSERT INTO public.games VALUES (2, 7, 19814);
INSERT INTO public.games VALUES (3, 8, 7);
INSERT INTO public.games VALUES (4, 9, 18690);
INSERT INTO public.games VALUES (5, 10, 19667);
INSERT INTO public.games VALUES (6, 11, 19119);
INSERT INTO public.games VALUES (7, 12, 20718);
INSERT INTO public.games VALUES (8, 13, 824);
INSERT INTO public.games VALUES (9, 14, 323);
INSERT INTO public.games VALUES (10, 15, 12);
INSERT INTO public.games VALUES (11, 16, 738);
INSERT INTO public.games VALUES (12, 17, 82);
INSERT INTO public.games VALUES (13, 18, 630);
INSERT INTO public.games VALUES (14, 19, 246);
INSERT INTO public.games VALUES (15, 20, 22);
INSERT INTO public.games VALUES (16, 21, 539);
INSERT INTO public.games VALUES (17, 3, 1);
INSERT INTO public.games VALUES (18, 22, 161);
INSERT INTO public.games VALUES (19, 23, 810);
INSERT INTO public.games VALUES (20, 22, 899);
INSERT INTO public.games VALUES (21, 22, 205);
INSERT INTO public.games VALUES (22, 22, 642);
INSERT INTO public.games VALUES (23, 3, 3);
INSERT INTO public.games VALUES (24, 24, 310);
INSERT INTO public.games VALUES (25, 25, 282);
INSERT INTO public.games VALUES (26, 24, 751);
INSERT INTO public.games VALUES (27, 24, 706);
INSERT INTO public.games VALUES (28, 24, 255);
INSERT INTO public.games VALUES (29, 26, 4);
INSERT INTO public.games VALUES (30, 26, 5);
INSERT INTO public.games VALUES (31, 27, 319);
INSERT INTO public.games VALUES (32, 27, 894);
INSERT INTO public.games VALUES (33, 28, 185);
INSERT INTO public.games VALUES (34, 28, 901);
INSERT INTO public.games VALUES (35, 27, 264);
INSERT INTO public.games VALUES (36, 27, 918);
INSERT INTO public.games VALUES (37, 27, 588);
INSERT INTO public.games VALUES (38, 29, 582);
INSERT INTO public.games VALUES (39, 29, 324);
INSERT INTO public.games VALUES (40, 30, 514);
INSERT INTO public.games VALUES (41, 30, 817);
INSERT INTO public.games VALUES (42, 29, 801);
INSERT INTO public.games VALUES (43, 29, 716);
INSERT INTO public.games VALUES (44, 29, 26);
INSERT INTO public.games VALUES (45, 31, 692);
INSERT INTO public.games VALUES (46, 31, 886);
INSERT INTO public.games VALUES (47, 32, 255);
INSERT INTO public.games VALUES (48, 32, 789);
INSERT INTO public.games VALUES (49, 31, 741);
INSERT INTO public.games VALUES (50, 31, 529);
INSERT INTO public.games VALUES (51, 31, 815);
INSERT INTO public.games VALUES (52, 33, 730);
INSERT INTO public.games VALUES (53, 33, 876);
INSERT INTO public.games VALUES (54, 34, 141);
INSERT INTO public.games VALUES (55, 34, 564);
INSERT INTO public.games VALUES (56, 33, 729);
INSERT INTO public.games VALUES (57, 33, 558);
INSERT INTO public.games VALUES (58, 33, 690);
INSERT INTO public.games VALUES (59, 35, 837);
INSERT INTO public.games VALUES (60, 35, 585);
INSERT INTO public.games VALUES (61, 36, 92);
INSERT INTO public.games VALUES (62, 36, 127);
INSERT INTO public.games VALUES (63, 35, 952);
INSERT INTO public.games VALUES (64, 35, 919);
INSERT INTO public.games VALUES (65, 35, 147);
INSERT INTO public.games VALUES (66, 37, 635);
INSERT INTO public.games VALUES (67, 37, 229);
INSERT INTO public.games VALUES (68, 38, 648);
INSERT INTO public.games VALUES (69, 38, 757);
INSERT INTO public.games VALUES (70, 37, 318);
INSERT INTO public.games VALUES (71, 37, 931);
INSERT INTO public.games VALUES (72, 37, 200);
INSERT INTO public.games VALUES (73, 39, 532);
INSERT INTO public.games VALUES (74, 39, 828);
INSERT INTO public.games VALUES (75, 40, 988);
INSERT INTO public.games VALUES (76, 40, 230);
INSERT INTO public.games VALUES (77, 39, 672);
INSERT INTO public.games VALUES (78, 39, 941);
INSERT INTO public.games VALUES (79, 39, 941);
INSERT INTO public.games VALUES (80, 41, 992);
INSERT INTO public.games VALUES (81, 41, 545);
INSERT INTO public.games VALUES (82, 42, 690);
INSERT INTO public.games VALUES (83, 42, 705);
INSERT INTO public.games VALUES (84, 41, 872);
INSERT INTO public.games VALUES (85, 41, 760);
INSERT INTO public.games VALUES (86, 41, 394);
INSERT INTO public.games VALUES (87, 43, 163);
INSERT INTO public.games VALUES (88, 43, 119);
INSERT INTO public.games VALUES (89, 44, 933);
INSERT INTO public.games VALUES (90, 44, 449);
INSERT INTO public.games VALUES (91, 43, 62);
INSERT INTO public.games VALUES (92, 43, 308);
INSERT INTO public.games VALUES (93, 43, 546);
INSERT INTO public.games VALUES (94, 45, 795);
INSERT INTO public.games VALUES (95, 45, 360);
INSERT INTO public.games VALUES (96, 46, 252);
INSERT INTO public.games VALUES (97, 46, 820);
INSERT INTO public.games VALUES (98, 45, 177);
INSERT INTO public.games VALUES (99, 45, 996);
INSERT INTO public.games VALUES (100, 45, 527);
INSERT INTO public.games VALUES (101, 47, 839);
INSERT INTO public.games VALUES (102, 47, 135);
INSERT INTO public.games VALUES (103, 48, 810);
INSERT INTO public.games VALUES (104, 48, 822);
INSERT INTO public.games VALUES (105, 47, 689);
INSERT INTO public.games VALUES (106, 47, 524);
INSERT INTO public.games VALUES (107, 47, 814);
INSERT INTO public.games VALUES (108, 49, 766);
INSERT INTO public.games VALUES (109, 49, 57);
INSERT INTO public.games VALUES (110, 50, 888);
INSERT INTO public.games VALUES (111, 50, 871);
INSERT INTO public.games VALUES (112, 49, 512);
INSERT INTO public.games VALUES (113, 49, 95);
INSERT INTO public.games VALUES (114, 49, 34);
INSERT INTO public.games VALUES (115, 51, 543);
INSERT INTO public.games VALUES (116, 51, 324);
INSERT INTO public.games VALUES (117, 52, 329);
INSERT INTO public.games VALUES (118, 52, 948);
INSERT INTO public.games VALUES (119, 51, 457);
INSERT INTO public.games VALUES (120, 51, 882);
INSERT INTO public.games VALUES (121, 51, 69);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1672449602971');
INSERT INTO public.users VALUES (2, 'user_1672449602970');
INSERT INTO public.users VALUES (3, 'tom');
INSERT INTO public.users VALUES (4, 'user_1672449652934');
INSERT INTO public.users VALUES (5, 'user_1672449652932');
INSERT INTO public.users VALUES (6, 'user_1672449668876');
INSERT INTO public.users VALUES (7, 'user_1672449668875');
INSERT INTO public.users VALUES (8, 'tom 2');
INSERT INTO public.users VALUES (9, 'user_1672449735976');
INSERT INTO public.users VALUES (10, 'user_1672449735975');
INSERT INTO public.users VALUES (11, 'user_1672449861378');
INSERT INTO public.users VALUES (12, 'user_1672449861377');
INSERT INTO public.users VALUES (13, 'user_1672450427353');
INSERT INTO public.users VALUES (14, 'user_1672450427352');
INSERT INTO public.users VALUES (15, 'TOM');
INSERT INTO public.users VALUES (16, 'user_1672450589602');
INSERT INTO public.users VALUES (17, 'user_1672450589601');
INSERT INTO public.users VALUES (18, 'user_1672450733468');
INSERT INTO public.users VALUES (19, 'user_1672450733467');
INSERT INTO public.users VALUES (20, 'user_1672450948291');
INSERT INTO public.users VALUES (21, 'user_1672450948290');
INSERT INTO public.users VALUES (22, 'user_1672451309212');
INSERT INTO public.users VALUES (23, 'user_1672451309211');
INSERT INTO public.users VALUES (24, 'user_1672451367551');
INSERT INTO public.users VALUES (25, 'user_1672451367550');
INSERT INTO public.users VALUES (26, 'new');
INSERT INTO public.users VALUES (27, 'user_1672451506612');
INSERT INTO public.users VALUES (28, 'user_1672451506611');
INSERT INTO public.users VALUES (29, 'user_1672451569389');
INSERT INTO public.users VALUES (30, 'user_1672451569388');
INSERT INTO public.users VALUES (31, 'user_1672451599196');
INSERT INTO public.users VALUES (32, 'user_1672451599195');
INSERT INTO public.users VALUES (33, 'user_1672451618033');
INSERT INTO public.users VALUES (34, 'user_1672451618032');
INSERT INTO public.users VALUES (35, 'user_1672451645926');
INSERT INTO public.users VALUES (36, 'user_1672451645925');
INSERT INTO public.users VALUES (37, 'user_1672451714280');
INSERT INTO public.users VALUES (38, 'user_1672451714279');
INSERT INTO public.users VALUES (39, 'user_1672451737434');
INSERT INTO public.users VALUES (40, 'user_1672451737433');
INSERT INTO public.users VALUES (41, 'user_1672451754150');
INSERT INTO public.users VALUES (42, 'user_1672451754149');
INSERT INTO public.users VALUES (43, 'user_1672451820785');
INSERT INTO public.users VALUES (44, 'user_1672451820784');
INSERT INTO public.users VALUES (45, 'user_1672451830095');
INSERT INTO public.users VALUES (46, 'user_1672451830094');
INSERT INTO public.users VALUES (47, 'user_1672451836245');
INSERT INTO public.users VALUES (48, 'user_1672451836244');
INSERT INTO public.users VALUES (49, 'user_1672451840129');
INSERT INTO public.users VALUES (50, 'user_1672451840128');
INSERT INTO public.users VALUES (51, 'user_1672451843205');
INSERT INTO public.users VALUES (52, 'user_1672451843204');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 121, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 52, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

