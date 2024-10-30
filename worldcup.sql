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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(60) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (97, 2018, 'Final', 403, 404, 4, 2);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 405, 406, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 404, 406, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 403, 405, 1, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 404, 407, 3, 2);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 406, 408, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 405, 409, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 403, 410, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 406, 411, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 408, 412, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 405, 413, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 409, 414, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 404, 415, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 407, 416, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 410, 417, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 403, 418, 4, 3);
INSERT INTO public.games VALUES (113, 2014, 'Final', 419, 418, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 420, 409, 3, 0);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 418, 420, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 419, 409, 7, 1);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 420, 421, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 418, 405, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 409, 411, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 419, 403, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 409, 422, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 411, 410, 2, 0);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 403, 423, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 419, 424, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 420, 414, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 421, 425, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 418, 412, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 405, 426, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (403, 'France');
INSERT INTO public.teams VALUES (404, 'Croatia');
INSERT INTO public.teams VALUES (405, 'Belgium');
INSERT INTO public.teams VALUES (406, 'England');
INSERT INTO public.teams VALUES (407, 'Russia');
INSERT INTO public.teams VALUES (408, 'Sweden');
INSERT INTO public.teams VALUES (409, 'Brazil');
INSERT INTO public.teams VALUES (410, 'Uruguay');
INSERT INTO public.teams VALUES (411, 'Colombia');
INSERT INTO public.teams VALUES (412, 'Switzerland');
INSERT INTO public.teams VALUES (413, 'Japan');
INSERT INTO public.teams VALUES (414, 'Mexico');
INSERT INTO public.teams VALUES (415, 'Denmark');
INSERT INTO public.teams VALUES (416, 'Spain');
INSERT INTO public.teams VALUES (417, 'Portugal');
INSERT INTO public.teams VALUES (418, 'Argentina');
INSERT INTO public.teams VALUES (419, 'Germany');
INSERT INTO public.teams VALUES (420, 'Netherlands');
INSERT INTO public.teams VALUES (421, 'Costa Rica');
INSERT INTO public.teams VALUES (422, 'Chile');
INSERT INTO public.teams VALUES (423, 'Nigeria');
INSERT INTO public.teams VALUES (424, 'Algeria');
INSERT INTO public.teams VALUES (425, 'Greece');
INSERT INTO public.teams VALUES (426, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 426, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

