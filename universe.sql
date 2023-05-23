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

--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    distance_from_earth numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    has_life boolean,
    distance_from_earth numeric,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: othermatter; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.othermatter (
    othermatter_id integer NOT NULL,
    type character varying(30),
    size character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.othermatter OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    has_life boolean,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    has_life boolean,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Whirlpool Galaxy', 31, false, 31, 'The Whirlpool galaxy is the first known galaxy to be specified as spiral galaxy');
INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 31, true, 31, 'The Milky Way  galaxy is the first known galaxy to be specified as spiral galaxy');
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 31, false, 31, 'The Andromeda  galaxy is the first known galaxy to be specified as spiral galaxy');
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 25, false, 25, 'Sombrero Galaxy is ...');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', 60, false, 123, 'Pinwheel Galaxy is ...');
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy', 80, false, 1512, 'Triangulum Galaxy is ...');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, false, 12, 2);
INSERT INTO public.moon VALUES (2, 'Phobos', 54, false, 74, 3);
INSERT INTO public.moon VALUES (3, 'Deimos', 54, false, 74, 3);
INSERT INTO public.moon VALUES (4, 'Triton', 123, false, 321, 4);
INSERT INTO public.moon VALUES (5, 'Thalassa', 123, false, 321, 4);
INSERT INTO public.moon VALUES (6, 'Titan', 123, false, 321, 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', 123, false, 321, 6);
INSERT INTO public.moon VALUES (8, 'Europa', 123, false, 321, 7);
INSERT INTO public.moon VALUES (9, 'Io', 123, false, 321, 7);
INSERT INTO public.moon VALUES (10, 'Ganymed', 123, false, 321, 7);
INSERT INTO public.moon VALUES (11, 'Titania', 123, false, 321, 8);
INSERT INTO public.moon VALUES (12, 'Miranda', 123, false, 321, 8);
INSERT INTO public.moon VALUES (13, 'Obe', 123, false, 321, 8);
INSERT INTO public.moon VALUES (14, 'Charon', 123, false, 321, 9);
INSERT INTO public.moon VALUES (15, 'Nix', 123, false, 321, 9);
INSERT INTO public.moon VALUES (16, 'Styx', 123, false, 321, 9);
INSERT INTO public.moon VALUES (17, 'Ke', 123, false, 321, 9);
INSERT INTO public.moon VALUES (18, 'Namaka', 123, false, 321, 12);
INSERT INTO public.moon VALUES (19, 'Hiaka', 123, false, 321, 12);
INSERT INTO public.moon VALUES (20, 'Dysnomia', 123, false, 321, 12);


--
-- Data for Name: othermatter; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.othermatter VALUES (1, 'Dark Matter', 'Very big', 'Dark Matter', 1);
INSERT INTO public.othermatter VALUES (2, 'White Matter', 'Very big', 'White Matter', 1);
INSERT INTO public.othermatter VALUES (3, 'Grey Matter', 'Very small', 'Grey Matter', 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Venus', 12345, false, 423, 2);
INSERT INTO public.planet VALUES (2, 'Earth', 12, true, 0, 2);
INSERT INTO public.planet VALUES (3, 'Mars', 976, false, 5, 2);
INSERT INTO public.planet VALUES (4, 'Neptune', 976, false, 5, 2);
INSERT INTO public.planet VALUES (5, 'Mercury', 976, false, 5, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 976, false, 5, 2);
INSERT INTO public.planet VALUES (7, 'Jupiter', 976, false, 5, 2);
INSERT INTO public.planet VALUES (8, 'Uranus', 976, false, 5, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 976, false, 5, 2);
INSERT INTO public.planet VALUES (10, 'Ceres', 976, false, 5, 2);
INSERT INTO public.planet VALUES (11, 'Europa', 976, false, 5, 2);
INSERT INTO public.planet VALUES (12, 'Amalthea', 976, false, 5, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Orion', 132, false, 1523, 2);
INSERT INTO public.star VALUES (2, 'Rigel', 13312, false, 23, 3);
INSERT INTO public.star VALUES (3, 'Sirius', 312, true, 23234, 5);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 112, false, 23, 2);
INSERT INTO public.star VALUES (5, 'Aries', 11234512, true, 232345, 6);
INSERT INTO public.star VALUES (6, 'Altair', 2, true, 245, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: othermatter othermatter_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.othermatter
    ADD CONSTRAINT othermatter_pkey PRIMARY KEY (othermatter_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: othermatter unique_table; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.othermatter
    ADD CONSTRAINT unique_table UNIQUE (galaxy_id, othermatter_id);


--
-- Name: star unique_table_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_table_star UNIQUE (star_id);


--
-- Name: planet unique_tables; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_tables UNIQUE (planet_id, galaxy_id);


--
-- Name: galaxy unique_tables_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_tables_galaxy UNIQUE (galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: othermatter othermatter_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.othermatter
    ADD CONSTRAINT othermatter_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

