-- Volcado de tablas basicas

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: estadozrc; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.estadozrc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'Constituida', NULL, '2019-01-14', NULL, '2019-01-14 00:00:00', '2019-01-14 00:00:00');
INSERT INTO public.estadozrc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'En trámite', NULL, '2019-01-14', NULL, '2019-01-14 00:00:00', '2019-01-14 00:00:00');
INSERT INTO public.estadozrc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'Proyecto con delimitación', NULL, '2019-01-14', NULL, '2019-01-14 00:00:00', '2019-01-14 00:00:00');
INSERT INTO public.estadozrc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'Proyecto sin delimitación', NULL, '2019-01-14', NULL, '2019-01-14 00:00:00', '2019-01-14 00:00:00');


--
-- Name: estadozrc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.estadozrc_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: estadoobs; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.estadoobs (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'POR REVISAR', NULL, '2020-11-24', NULL, '2020-11-24 00:00:00', '2020-11-24 00:00:00');
INSERT INTO public.estadoobs (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'REVISADO', NULL, '2020-11-24', NULL, '2020-11-24 00:00:00', '2020-11-24 00:00:00');


--
-- Name: estadoobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.estadoobs_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: nodo; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (1, 'CARIBE', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-26 16:13:01.541777', './Caribe/', 'Caribe/Nodo_Caribe.geojson');
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (2, 'CENTRO', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-26 16:13:14.4795', './Centro/', 'Centro/Nodo_Centro.geojson');
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (3, 'NOROCCIDENTE', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-26 16:13:42.579954', './Nororiente/', 'Noroccidente/Nodo_Noroccidente.geojson');
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (4, 'NORORIENTE', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-26 16:13:51.887334', './Nororiente/', 'Nororiente/Nodo_Nororiente.geojson');
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (5, 'ORIENTE', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-26 16:14:00.793424', './Oriente/', 'Oriente/Nodo_Oriente.geojson');
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (6, 'SUR', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-26 16:14:08.938477', './Sur/', 'Sur/Nodo_Sur.geojson');
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, carpeta, geojson) VALUES (7, 'SUROCCIDENTE', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-26 16:14:18.789889', './Suroccidente/', 'Suroccidente/Nodo_Suroccidente.geojson');


--
-- Name: nodo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nodo_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: tipoorganzorc; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'SIN INFORMACIÓN', NULL, '2020-02-28', NULL, '2020-02-28 00:00:00', '2020-02-28 00:00:00');
INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'SINDICAL', NULL, '2020-02-28', NULL, '2020-02-28 00:00:00', '2020-02-28 00:00:00');
INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'COOPERATIVA', NULL, '2020-02-28', NULL, '2020-02-28 00:00:00', '2020-02-28 00:00:00');
INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'PRODUCTIVA', NULL, '2020-02-28', NULL, '2020-02-28 00:00:00', '2020-02-28 00:00:00');
INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'CORPORACIÓN', NULL, '2020-02-28', NULL, '2020-02-28 00:00:00', '2020-02-28 00:00:00');
INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'ASOCIACIÓN', NULL, '2020-02-28', NULL, '2020-02-28 00:00:00', '2020-02-28 00:00:00');
INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'FUNDACIÓN', NULL, '2020-02-28', NULL, '2020-02-28 00:00:00', '2020-02-28 00:00:00');


--
-- Name: tipoorganzorc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tipoorganzorc_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;

SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: nivelorganzorc; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.nivelorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'SIN INFORMACIÓN', NULL, '2020-02-28', NULL, '2020-02-28 00:00:00', '2020-02-28 00:00:00');
INSERT INTO public.nivelorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'BASE', NULL, '2020-02-28', NULL, '2020-02-28 00:00:00', '2020-02-28 00:00:00');
INSERT INTO public.nivelorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'ORGANIZACIÓN DE ORGANIZACIONES', NULL, '2020-02-28', NULL, '2020-02-28 00:00:00', '2020-02-28 00:00:00');


--
-- Name: nivelorganzorc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.nivelorganzorc_id_seq', 100, true);


--
-- PostgreSQL database dump complete
--

