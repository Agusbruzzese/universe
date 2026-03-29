--
-- PostgreSQL database dump
--

\restrict egRarFEZE7K1GmavliCM4SkLucotwYP3AJHYHoPR4D43h5oD2oPbcD4JJDmx3AE

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\unrestrict egRarFEZE7K1GmavliCM4SkLucotwYP3AJHYHoPR4D43h5oD2oPbcD4JJDmx3AE
\connect universe
\restrict egRarFEZE7K1GmavliCM4SkLucotwYP3AJHYHoPR4D43h5oD2oPbcD4JJDmx3AE

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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_orbit boolean DEFAULT false NOT NULL,
    description text,
    seen_from_earth boolean NOT NULL,
    diameter numeric
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.asteroids_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroid_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    number_of_stars integer,
    description text,
    distance_from_earth integer,
    has_earthlike_planet boolean NOT NULL,
    has_black_hole boolean NOT NULL,
    dimension numeric
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


ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    dimension integer,
    number_of_craters integer,
    diameter numeric,
    has_plants boolean NOT NULL,
    has_animals boolean NOT NULL,
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


ALTER SEQUENCE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    diameter integer,
    number_of_moons integer,
    has_atmosphere boolean NOT NULL,
    has_live boolean DEFAULT false NOT NULL,
    description text,
    star_id integer NOT NULL
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


ALTER SEQUENCE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    number_of_planets integer,
    dimension numeric,
    temperature integer,
    description text,
    is_diying boolean NOT NULL,
    form_constellation boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

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


ALTER SEQUENCE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'Halley', true, 'A known asteroid', true, 25.3);
INSERT INTO public.asteroids VALUES (2, 'IAtlas3', true, 'interestellar object', true, 30.2);
INSERT INTO public.asteroids VALUES (3, 'IA2', true, 'Another thing', true, 50.2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 400000, 'Our galaxy', 26000, true, true, 100.5);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000000, 'Nearest galaxy', 2537000, false, true, 200.3);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 40000, 'Small galaxy', 3000000, false, false, 50.1);
INSERT INTO public.galaxy VALUES (4, 'Vega', 125222, 'A galaxy far, far away', 25000, false, true, 45.3);
INSERT INTO public.galaxy VALUES (5, 'Olter', 45211, 'Otra galaxy', 45222, false, false, 85.3);
INSERT INTO public.galaxy VALUES (6, 'Orion', 7500, 'Yet another galaxy', 85223, true, true, 99.3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 12, 300000, 3474, false, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 1200, 22, false, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 1, 800, 12, false, false, 2);
INSERT INTO public.moon VALUES (4, 'Io', 8, 0, 3643, false, false, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 9, 50, 3121, false, false, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 15, 900, 5268, false, false, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 14, 4000, 4820, false, false, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 16, 200, 5149, false, false, 4);
INSERT INTO public.moon VALUES (9, 'Enceladus', 5, 100, 504, false, false, 4);
INSERT INTO public.moon VALUES (10, 'Mimas', 3, 2000, 396, false, false, 4);
INSERT INTO public.moon VALUES (11, 'Triton', 11, 500, 2706, false, false, 5);
INSERT INTO public.moon VALUES (12, 'Charon', 7, 300, 1212, false, false, 5);
INSERT INTO public.moon VALUES (13, 'Oberon', 6, 1500, 1523, false, false, 6);
INSERT INTO public.moon VALUES (14, 'Titania', 7, 1200, 1577, false, false, 6);
INSERT INTO public.moon VALUES (15, 'Miranda', 2, 400, 471, false, false, 6);
INSERT INTO public.moon VALUES (16, 'Ariel', 4, 600, 1157, false, false, 1);
INSERT INTO public.moon VALUES (17, 'Umbriel', 4, 800, 1169, false, false, 6);
INSERT INTO public.moon VALUES (18, 'Hyperion', 3, 1800, 270, false, false, 3);
INSERT INTO public.moon VALUES (19, 'Dione', 5, 1100, 1122, false, false, 6);
INSERT INTO public.moon VALUES (20, 'Rhea', 6, 2200, 1527, false, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12312, 2, true, true, 'Our little house', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 3221, 3, false, false, 'The red planet', 1);
INSERT INTO public.planet VALUES (3, 'Venus', 4123, 4, false, false, 'The love planet', 1);
INSERT INTO public.planet VALUES (4, 'Mercurio', 51233, 5, true, false, 'The messenger planet', 1);
INSERT INTO public.planet VALUES (5, 'Pluton', 41233, 5, false, false, 'A hidden planet', 1);
INSERT INTO public.planet VALUES (6, 'Pepeland', 12312, 1, false, false, 'An invented planet', 2);
INSERT INTO public.planet VALUES (7, 'El planeta del principito', 12, 0, false, true, 'Lo dicho', 3);
INSERT INTO public.planet VALUES (8, 'Kandahar', 231412, 56, false, false, 'Another planet', 5);
INSERT INTO public.planet VALUES (9, 'Moroon', 534534, 3, true, true, 'Yet another planet', 4);
INSERT INTO public.planet VALUES (10, 'Big Brother', 132423, 3, true, false, 'Just to be a show', 4);
INSERT INTO public.planet VALUES (11, 'Kapersky', 5680, 90, true, true, 'Just to be an antivirus', 6);
INSERT INTO public.planet VALUES (12, 'Minos', 12312, 2, false, false, 'Minor planet', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 14, 300211, 2015, 'A known star', false, false, 1);
INSERT INTO public.star VALUES (2, 'Epitome', 24, 450211, 3015, 'A invented star', false, false, 2);
INSERT INTO public.star VALUES (3, 'Luzbelito', 65, 45210, 3200, 'Another invented star', false, true, 2);
INSERT INTO public.star VALUES (4, 'Estelita', 20, 12312, 3221, 'Hi, im a star', false, false, 3);
INSERT INTO public.star VALUES (5, 'Lucerito de la maniana', 1231, 1213, 12333, 'Once upon a time , a star', true, true, 3);
INSERT INTO public.star VALUES (6, 'David', 4311, 4113413, 414222, 'No word', true, true, 2);


--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

\unrestrict egRarFEZE7K1GmavliCM4SkLucotwYP3AJHYHoPR4D43h5oD2oPbcD4JJDmx3AE

