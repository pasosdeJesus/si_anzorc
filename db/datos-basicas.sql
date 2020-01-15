
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

INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'CARIBE', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00');
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'CENTRO', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00');
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'NOROCCIDENTE', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00');
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'NORORIENTE', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00');
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'ORIENTE', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00');
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'SUR', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00');
INSERT INTO public.nodo (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'SUROCCIDENTE', NULL, '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-01-14 00:00:00');



INSERT INTO public.estadozrc (id, nombre, fechacreacion, created_at, updated_at)
        VALUES (1, 'Constituida', '2019-01-14', '2019-01-14', '2019-01-14');
INSERT INTO public.estadozrc (id, nombre, fechacreacion, created_at, updated_at)
        VALUES (2, 'En trámite', '2019-01-14', '2019-01-14', '2019-01-14');
INSERT INTO public.estadozrc (id, nombre, fechacreacion, created_at, updated_at)
        VALUES (3, 'Proyecto con delimitación', '2019-01-14', '2019-01-14', '2019-01-14');
INSERT INTO public.estadozrc (id, nombre, fechacreacion, created_at, updated_at)
        VALUES (4, 'Proyecto sin delimitación', '2019-01-14', '2019-01-14', '2019-01-14');
