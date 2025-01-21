--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

-- Started on 2025-01-21 18:33:53 UTC

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
-- TOC entry 211 (class 1259 OID 16446)
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    star_count integer NOT NULL,
    is_recognized boolean NOT NULL,
    brightness numeric(10,2) NOT NULL
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- TOC entry 210 (class 1259 OID 16444)
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 210
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- TOC entry 203 (class 1259 OID 16388)
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    size integer NOT NULL,
    is_active boolean NOT NULL,
    age numeric(10,2) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- TOC entry 202 (class 1259 OID 16386)
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
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 202
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- TOC entry 209 (class 1259 OID 16431)
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer,
    radius integer NOT NULL,
    is_habitable boolean NOT NULL,
    tidal_force numeric(10,2) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- TOC entry 208 (class 1259 OID 16429)
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
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 208
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- TOC entry 207 (class 1259 OID 16416)
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_id integer,
    diameter integer NOT NULL,
    has_atmosphere boolean NOT NULL,
    orbital_period numeric(10,2) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- TOC entry 206 (class 1259 OID 16414)
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
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 206
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- TOC entry 205 (class 1259 OID 16401)
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer,
    temperature integer NOT NULL,
    is_visible boolean NOT NULL,
    luminosity numeric(10,2) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- TOC entry 204 (class 1259 OID 16399)
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
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 204
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- TOC entry 2861 (class 2604 OID 16449)
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- TOC entry 2857 (class 2604 OID 16391)
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- TOC entry 2860 (class 2604 OID 16434)
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- TOC entry 2859 (class 2604 OID 16419)
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- TOC entry 2858 (class 2604 OID 16404)
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- TOC entry 3020 (class 0 OID 16446)
-- Dependencies: 211
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.constellation (constellation_id, name, description, star_count, is_recognized, brightness) FROM stdin;
1	Orion	The Hunter	7	t	0.18
2	Ursa Major	The Great Bear	7	t	1.76
3	Cassiopeia	The Queen	5	t	2.29
\.


--
-- TOC entry 3012 (class 0 OID 16388)
-- Dependencies: 203
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, description, size, is_active, age) FROM stdin;
1	Milky Way	Our home galaxy	100000	t	13.60
2	Andromeda	Nearest major galaxy	220000	t	10.00
3	Triangulum	Small spiral galaxy	60000	t	8.00
4	Large Magellanic Cloud	Irregular galaxy	14000	t	5.00
5	Small Magellanic Cloud	Dwarf irregular galaxy	7000	t	3.00
6	Centaurus A	Elliptical galaxy	60000	t	12.00
\.


--
-- TOC entry 3018 (class 0 OID 16431)
-- Dependencies: 209
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, planet_id, radius, is_habitable, tidal_force) FROM stdin;
1	Luna	3	1737	f	0.00
2	Phobos	4	11	f	0.00
3	Deimos	4	6	f	0.00
4	Io	5	1821	f	0.00
5	Europa	5	1560	t	0.00
6	Ganymede	5	2634	f	0.00
7	Callisto	5	2410	f	0.00
8	Mimas	6	198	f	0.00
9	Enceladus	6	252	t	0.00
10	Tethys	6	531	f	0.00
11	Dione	6	562	f	0.00
12	Rhea	6	764	f	0.00
13	Titan	6	2575	t	0.00
14	Oberon	7	761	f	0.00
15	Titania	7	788	f	0.00
16	Umbriel	7	585	f	0.00
17	Ariel	7	579	f	0.00
18	Miranda	7	236	f	0.00
19	Triton	8	1353	t	0.00
20	Nereid	8	170	f	0.00
\.


--
-- TOC entry 3016 (class 0 OID 16416)
-- Dependencies: 207
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, star_id, diameter, has_atmosphere, orbital_period) FROM stdin;
1	Mercury	1	4879	f	87.97
2	Venus	1	12104	t	224.70
3	Earth	1	12742	t	365.25
4	Mars	1	6779	t	686.98
5	Jupiter	1	139820	t	4332.59
6	Saturn	1	116460	t	10759.22
7	Uranus	1	50724	t	30688.50
8	Neptune	1	49244	t	60182.00
9	Pluto	1	2376	f	90560.00
10	Proxima Centauri b	3	11200	t	11.20
11	Kepler-442b	1	11000	t	112.30
12	TRAPPIST-1e	1	6200	t	6.10
\.


--
-- TOC entry 3014 (class 0 OID 16401)
-- Dependencies: 205
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, galaxy_id, temperature, is_visible, luminosity) FROM stdin;
1	Sun	1	5778	t	1.00
2	Alpha Centauri A	1	5790	t	1.52
3	Proxima Centauri	1	3042	t	0.00
4	Sirius	1	9940	t	25.40
5	Vega	1	9602	t	37.00
6	Betelgeuse	1	3500	t	100000.00
\.


--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 210
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 202
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 208
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 206
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 204
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- TOC entry 2879 (class 2606 OID 16456)
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- TOC entry 2881 (class 2606 OID 16454)
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- TOC entry 2863 (class 2606 OID 16398)
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- TOC entry 2865 (class 2606 OID 16396)
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- TOC entry 2875 (class 2606 OID 16438)
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- TOC entry 2877 (class 2606 OID 16436)
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- TOC entry 2871 (class 2606 OID 16423)
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- TOC entry 2873 (class 2606 OID 16421)
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- TOC entry 2867 (class 2606 OID 16408)
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- TOC entry 2869 (class 2606 OID 16406)
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- TOC entry 2884 (class 2606 OID 16439)
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- TOC entry 2883 (class 2606 OID 16424)
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- TOC entry 2882 (class 2606 OID 16409)
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


-- Completed on 2025-01-21 18:33:54 UTC

--
-- PostgreSQL database dump complete
--

