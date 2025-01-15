--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    secret_number integer NOT NULL,
    number_of_guesses integer NOT NULL
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2, 489, 490);
INSERT INTO public.games VALUES (2, 2, 904, 905);
INSERT INTO public.games VALUES (3, 3, 819, 820);
INSERT INTO public.games VALUES (4, 3, 947, 948);
INSERT INTO public.games VALUES (5, 2, 843, 846);
INSERT INTO public.games VALUES (6, 2, 42, 44);
INSERT INTO public.games VALUES (7, 2, 215, 216);
INSERT INTO public.games VALUES (8, 4, 336, 337);
INSERT INTO public.games VALUES (9, 4, 826, 827);
INSERT INTO public.games VALUES (10, 5, 636, 637);
INSERT INTO public.games VALUES (11, 5, 905, 906);
INSERT INTO public.games VALUES (12, 4, 668, 671);
INSERT INTO public.games VALUES (13, 4, 604, 606);
INSERT INTO public.games VALUES (14, 4, 750, 751);
INSERT INTO public.games VALUES (15, 6, 85, 86);
INSERT INTO public.games VALUES (16, 6, 381, 382);
INSERT INTO public.games VALUES (17, 7, 49, 50);
INSERT INTO public.games VALUES (18, 7, 947, 948);
INSERT INTO public.games VALUES (19, 6, 52, 55);
INSERT INTO public.games VALUES (20, 6, 433, 435);
INSERT INTO public.games VALUES (21, 6, 177, 178);
INSERT INTO public.games VALUES (22, 8, 492, 493);
INSERT INTO public.games VALUES (23, 8, 685, 686);
INSERT INTO public.games VALUES (24, 9, 915, 916);
INSERT INTO public.games VALUES (25, 9, 905, 906);
INSERT INTO public.games VALUES (26, 8, 375, 378);
INSERT INTO public.games VALUES (27, 8, 236, 238);
INSERT INTO public.games VALUES (28, 8, 548, 549);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'Steven');
INSERT INTO public.players VALUES (2, 'user_1736936990972');
INSERT INTO public.players VALUES (3, 'user_1736936990971');
INSERT INTO public.players VALUES (4, 'user_1736937028026');
INSERT INTO public.players VALUES (5, 'user_1736937028025');
INSERT INTO public.players VALUES (6, 'user_1736937046768');
INSERT INTO public.players VALUES (7, 'user_1736937046767');
INSERT INTO public.players VALUES (8, 'user_1736937155762');
INSERT INTO public.players VALUES (9, 'user_1736937155761');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 28, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 9, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

