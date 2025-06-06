--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: calories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.calories (
    id integer NOT NULL,
    food_item character varying,
    calorie integer,
    protein double precision,
    carbs double precision,
    fiber double precision,
    vitamins character varying,
    calcium integer,
    image_url text,
    fat double precision
);


ALTER TABLE public.calories OWNER TO postgres;

--
-- Name: calories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.calories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.calories_id_seq OWNER TO postgres;

--
-- Name: calories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.calories_id_seq OWNED BY public.calories.id;


--
-- Name: calories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calories ALTER COLUMN id SET DEFAULT nextval('public.calories_id_seq'::regclass);


--
-- Data for Name: calories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.calories (id, food_item, calorie, protein, carbs, fiber, vitamins, calcium, image_url, fat) FROM stdin;
1	Apple	52	0.3	14	2.4	A, C	6	https://images.pexels.com/photos/575610/pexels-photo-575610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.2
2	Banana	89	1.1	23	2.6	B6, C	5	https://images.pexels.com/photos/5945848/pexels-photo-5945848.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.3
3	Broccoli	34	2.8	7	2.6	A, C, K	47	https://images.pexels.com/photos/3872367/pexels-photo-3872367.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.4
4	Carrot	41	0.9	10	2.8	A, K, B6	33	https://images.pexels.com/photos/5377333/pexels-photo-5377333.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.2
5	Chicken Breast	165	31	0	0	B6, B12	15	https://images.pexels.com/photos/5769380/pexels-photo-5769380.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	3.6
6	Egg	155	13	1.1	0	A, B2, B12	50	https://images.pexels.com/photos/4226900/pexels-photo-4226900.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	11
7	Brown Rice	123	2.6	26	1.8	B3, B6	10	https://images.pexels.com/photos/4110263/pexels-photo-4110263.jpeg?auto=compress&cs=tinysrgb&w=1200	1
8	Almonds	579	21	22	12.5	E, B2	269	https://images.pexels.com/photos/3943217/pexels-photo-3943217.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	50
9	Spinach	23	2.9	3.6	2.2	A, C, K, B9	99	https://images.pexels.com/photos/4198041/pexels-photo-4198041.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.4
10	Yogurt	63	5.3	7	0	B2, B12	183	https://images.pexels.com/photos/10809146/pexels-photo-10809146.jpeg?auto=compress&cs=tinysrgb&w=1200	1.5
11	Sweet Potato	86	1.6	20	3	A, C, B6	30	https://images.pexels.com/photos/7657339/pexels-photo-7657339.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.1
12	Tomato	18	0.9	3.9	1.2	C, K	10	https://images.pexels.com/photos/95213/pexels-photo-95213.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.2
13	Lentils	116	9	20	7.9	B6, B9	19	https://images.pexels.com/photos/8580742/pexels-photo-8580742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.4
14	Cottage Cheese	98	11	3.4	0	B12	83	https://images.pexels.com/photos/1535418/pexels-photo-1535418.jpeg?auto=compress&cs=tinysrgb&w=1200	4.3
15	Peanut Butter	588	25	20	6	E, B3	43	https://images.pexels.com/photos/6659686/pexels-photo-6659686.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	50
16	Oats	71	2.5	12	1.7	B1, B5	21	https://images.pexels.com/photos/8108215/pexels-photo-8108215.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	1.4
17	Mango	60	0.8	15	1.6	A, C, E	11	https://images.pexels.com/photos/8679358/pexels-photo-8679358.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.4
18	Cucumber	16	0.7	3.6	0.5	K, C	16	https://images.pexels.com/photos/4203056/pexels-photo-4203056.jpeg?auto=compress&cs=tinysrgb&w=1200	0.1
19	Tofu	76	8	1.9	0.3	B1, B2	350	https://images.pexels.com/photos/4518577/pexels-photo-4518577.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	4.8
20	Cheese (Cheddar)	402	25	1.3	0	A, B12	721	https://images.pexels.com/photos/4187776/pexels-photo-4187776.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	33
21	Salmon 	206	22	0	0	D, B6, B12	9	https://images.pexels.com/photos/1247676/pexels-photo-1247676.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	13
22	Green Peas	81	5.4	14	5.7	A, C, K	25	https://images.pexels.com/photos/768091/pexels-photo-768091.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.4
23	Paneer	265	18.3	1.2	0	B12, A, D	400	https://images.pexels.com/photos/3928854/pexels-photo-3928854.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	20
24	Pineapple	50	0.5	13	1.4	C, B1	13	https://images.pexels.com/photos/189268/pexels-photo-189268.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.1
25	Raisins	299	3.1	79	3.7	B6	50	https://images.pexels.com/photos/4499228/pexels-photo-4499228.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.5
26	Beef (lean)	250	26	0	0	B12, Zinc	18	https://images.pexels.com/photos/1251208/pexels-photo-1251208.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	17
27	Avocado	160	2	9	7	K, B6, C	12	https://images.pexels.com/photos/3872374/pexels-photo-3872374.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	15
28	Watermelon	30	0.6	8	0.4	A, C	7	https://images.pexels.com/photos/12509559/pexels-photo-12509559.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.2
29	Pumpkin 	20	1	4.9	1.1	A, C	21	https://images.pexels.com/photos/4671693/pexels-photo-4671693.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.1
30	Pear	57	0.4	15	3.1	C, K	9	https://images.pexels.com/photos/7214835/pexels-photo-7214835.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.1
31	Blueberries	57	0.7	14	2.4	C, K	6	https://images.pexels.com/photos/7937488/pexels-photo-7937488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.3
32	Coconut	354	3.3	15	9	E, B1	14	https://images.pexels.com/photos/19858472/pexels-photo-19858472/free-photo-of-broken-coconut-fruit-on-table.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	33
33	Green Beans	35	1.9	7.9	3.4	A, C, K	37	https://images.pexels.com/photos/5202090/pexels-photo-5202090.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.2
34	Radish	16	0.7	3.4	1.6	C, B6	25	https://images.pexels.com/photos/7214598/pexels-photo-7214598.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.1
35	Cashews	553	18	30	3.3	E, K	37	https://images.pexels.com/photos/4499222/pexels-photo-4499222.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	44
36	Onion 	40	1.1	9.3	1.7	C, B6	23	https://images.pexels.com/photos/4197445/pexels-photo-4197445.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.1
37	Grapes	69	0.7	18	0.9	C, K	10	https://images.pexels.com/photos/7214926/pexels-photo-7214926.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.2
38	Papaya	43	0.5	11	1.7	C, A, B9	20	https://images.pexels.com/photos/10869540/pexels-photo-10869540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.3
39	Beetroot	43	1.6	10	2.8	B9, C	16	https://images.pexels.com/photos/4443482/pexels-photo-4443482.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.2
40	Kiwi	61	1.1	15	3	C, E, K	34	https://images.pexels.com/photos/5945702/pexels-photo-5945702.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.5
41	Chickpeas	164	8.9	27	7.6	B6, B9	49	https://images.pexels.com/photos/7656561/pexels-photo-7656561.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	2.6
42	Mushrooms	22	3.1	3.3	1	D, B2, B3	2	https://images.pexels.com/photos/5419047/pexels-photo-5419047.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.3
43	Eggplant	25	1	6	3	B1, B6, C	9	https://images.pexels.com/photos/1340857/pexels-photo-1340857.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.2
44	Quinoa 	120	4.1	21	2.8	B1, B2, E	17	https://images.pexels.com/photos/7420513/pexels-photo-7420513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	1.9
45	Strawberries	32	0.7	7.7	2	C, B9	16	https://images.pexels.com/photos/4038801/pexels-photo-4038801.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	0.3
46	Tuna	132	24	0	0	B, D, B12	37	https://images.pexels.com/photos/784637/pexels-photo-784637.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2	3
\.


--
-- Name: calories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.calories_id_seq', 2, true);


--
-- Name: calories calories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.calories
    ADD CONSTRAINT calories_pkey PRIMARY KEY (id);


--
-- Name: ix_calories_calcium; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_calories_calcium ON public.calories USING btree (calcium);


--
-- Name: ix_calories_calorie; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_calories_calorie ON public.calories USING btree (calorie);


--
-- Name: ix_calories_carbs; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_calories_carbs ON public.calories USING btree (carbs);


--
-- Name: ix_calories_fiber; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_calories_fiber ON public.calories USING btree (fiber);


--
-- Name: ix_calories_food_item; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_calories_food_item ON public.calories USING btree (food_item);


--
-- Name: ix_calories_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_calories_id ON public.calories USING btree (id);


--
-- Name: ix_calories_protein; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_calories_protein ON public.calories USING btree (protein);


--
-- Name: ix_calories_vitamins; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_calories_vitamins ON public.calories USING btree (vitamins);


--
-- PostgreSQL database dump complete
--

