--
-- PostgreSQL database dump
--

\restrict zoN32ErZPXxFLAaljCeJbDxsd5WRjJ6DI0d7f4zZO0NEByF3MbpzmXtbgQFEyxo

-- Dumped from database version 18.6 (Postgres.app)
-- Dumped by pg_dump version 18.6 (Postgres.app)

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
-- Name: department; Type: TABLE; Schema: public; Owner: justinduprez
--

CREATE TABLE public.department (
    departmentid integer NOT NULL,
    departmentname character varying(100) NOT NULL
);


ALTER TABLE public.department OWNER TO justinduprez;

--
-- Name: employee; Type: TABLE; Schema: public; Owner: justinduprez
--

CREATE TABLE public.employee (
    employeeid character varying(10) NOT NULL,
    currentroleid integer,
    yearsexperience character varying(10),
    participantstatus character varying(30)
);


ALTER TABLE public.employee OWNER TO justinduprez;

--
-- Name: employeeskill; Type: TABLE; Schema: public; Owner: justinduprez
--

CREATE TABLE public.employeeskill (
    employeeid character varying(10) NOT NULL,
    skillid integer NOT NULL,
    proficiencylevel integer,
    dateassessed date DEFAULT CURRENT_DATE,
    CONSTRAINT employeeskill_proficiencylevel_check CHECK (((proficiencylevel >= 1) AND (proficiencylevel <= 5)))
);


ALTER TABLE public.employeeskill OWNER TO justinduprez;

--
-- Name: jobrole; Type: TABLE; Schema: public; Owner: justinduprez
--

CREATE TABLE public.jobrole (
    roleid integer NOT NULL,
    rolename character varying(100) NOT NULL,
    departmentid integer
);


ALTER TABLE public.jobrole OWNER TO justinduprez;

--
-- Name: roleskillrequirement; Type: TABLE; Schema: public; Owner: justinduprez
--

CREATE TABLE public.roleskillrequirement (
    roleid integer NOT NULL,
    skillid integer NOT NULL,
    requiredproficiency integer,
    CONSTRAINT roleskillrequirement_requiredproficiency_check CHECK (((requiredproficiency >= 1) AND (requiredproficiency <= 5)))
);


ALTER TABLE public.roleskillrequirement OWNER TO justinduprez;

--
-- Name: skill; Type: TABLE; Schema: public; Owner: justinduprez
--

CREATE TABLE public.skill (
    skillid integer NOT NULL,
    skillname character varying(100) NOT NULL,
    skillcategory character varying(50)
);


ALTER TABLE public.skill OWNER TO justinduprez;

--
-- Name: survey_raw; Type: TABLE; Schema: public; Owner: justinduprez
--

CREATE TABLE public.survey_raw (
    respondent_id character varying(10) NOT NULL,
    participant_status character varying(30),
    target_career character varying(50),
    years_experience character varying(10),
    previous_ai_training character varying(5),
    interested_in_training character varying(5),
    excel integer,
    sql_skill integer,
    python integer,
    power_bi integer,
    generative_ai_tools integer,
    prompt_writing integer,
    data_visualization integer,
    cybersecurity_privacy integer,
    analytical_thinking integer,
    communication integer,
    project_management integer
);


ALTER TABLE public.survey_raw OWNER TO justinduprez;

--
-- Name: trainingprogram; Type: TABLE; Schema: public; Owner: justinduprez
--

CREATE TABLE public.trainingprogram (
    trainingid integer NOT NULL,
    skillid integer NOT NULL,
    trainingname character varying(150) NOT NULL,
    hours integer,
    estimatedcost numeric(8,2)
);


ALTER TABLE public.trainingprogram OWNER TO justinduprez;

--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: justinduprez
--

COPY public.department (departmentid, departmentname) FROM stdin;
1	Business Analytics
2	Information Technology
3	Project Management
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: justinduprez
--

COPY public.employee (employeeid, currentroleid, yearsexperience, participantstatus) FROM stdin;
R049	1	0	Student
R045	1	0	Student
R041	1	0	Student
R037	1	1-2	Student
R033	1	0	Student
R029	1	0	Student worker
R025	1	0	Student
R021	1	3-5	Student
R017	1	0	Student
R013	1	3-5	Employed
R009	1	0	Student worker
R005	1	3-5	Student
R001	1	1-2	Employed
R050	2	3-5	Student
R046	2	0	Student
R042	2	1-2	Student
R038	2	1-2	Student
R034	2	1-2	Student
R030	2	0	Student
R026	2	1-2	Student worker
R022	2	0	Employed
R018	2	1-2	Student
R014	2	0	Student
R010	2	0	Employed
R006	2	1-2	Student
R002	2	0	Student
R047	3	3-5	Employed
R043	3	0	Student
R039	3	3-5	Employed
R035	3	0	Student worker
R031	3	1-2	Student worker
R027	3	3-5	Student worker
R023	3	1-2	Student
R019	3	1-2	Student worker
R015	3	1-2	Student
R011	3	1-2	Student
R007	3	3-5	Student
R003	3	0	Employed
R048	4	0	Employed
R044	4	0	Student
R040	4	1-2	Student
R036	4	1-2	Student
R032	4	1-2	Student
R028	4	3-5	Student worker
R024	4	3-5	Student
R020	4	1-2	Student worker
R016	4	3-5	Student
R012	4	3-5	Student
R008	4	0	Employed
R004	4	0	Student worker
\.


--
-- Data for Name: employeeskill; Type: TABLE DATA; Schema: public; Owner: justinduprez
--

COPY public.employeeskill (employeeid, skillid, proficiencylevel, dateassessed) FROM stdin;
R001	1	1	2026-11-11
R001	2	3	2026-11-11
R001	3	2	2026-11-11
R001	4	4	2026-11-11
R001	5	4	2026-11-11
R001	6	3	2026-11-11
R001	7	3	2026-11-11
R001	8	3	2026-11-11
R001	9	3	2026-11-11
R001	10	4	2026-11-11
R001	11	1	2026-11-11
R002	1	3	2026-11-11
R002	2	3	2026-11-11
R002	3	3	2026-11-11
R002	4	1	2026-11-11
R002	5	3	2026-11-11
R002	6	2	2026-11-11
R002	7	3	2026-11-11
R002	8	1	2026-11-11
R002	9	4	2026-11-11
R002	10	5	2026-11-11
R002	11	2	2026-11-11
R003	1	3	2026-11-11
R003	2	3	2026-11-11
R003	3	1	2026-11-11
R003	4	3	2026-11-11
R003	5	2	2026-11-11
R003	6	3	2026-11-11
R003	7	2	2026-11-11
R003	8	4	2026-11-11
R003	9	5	2026-11-11
R003	10	3	2026-11-11
R003	11	1	2026-11-11
R004	1	4	2026-11-11
R004	2	3	2026-11-11
R004	3	2	2026-11-11
R004	4	1	2026-11-11
R004	5	1	2026-11-11
R004	6	5	2026-11-11
R004	7	4	2026-11-11
R004	8	2	2026-11-11
R004	9	4	2026-11-11
R004	10	4	2026-11-11
R004	11	5	2026-11-11
R005	1	5	2026-11-11
R005	2	2	2026-11-11
R005	3	3	2026-11-11
R005	4	3	2026-11-11
R005	5	4	2026-11-11
R005	6	3	2026-11-11
R005	7	5	2026-11-11
R005	8	1	2026-11-11
R005	9	3	2026-11-11
R005	10	3	2026-11-11
R005	11	1	2026-11-11
R006	1	5	2026-11-11
R006	2	2	2026-11-11
R006	3	5	2026-11-11
R006	4	2	2026-11-11
R006	5	4	2026-11-11
R006	6	5	2026-11-11
R006	7	5	2026-11-11
R006	8	1	2026-11-11
R006	9	5	2026-11-11
R006	10	4	2026-11-11
R006	11	3	2026-11-11
R007	1	1	2026-11-11
R007	2	3	2026-11-11
R007	3	1	2026-11-11
R007	4	1	2026-11-11
R007	5	3	2026-11-11
R007	6	3	2026-11-11
R007	7	2	2026-11-11
R007	8	4	2026-11-11
R007	9	4	2026-11-11
R007	10	1	2026-11-11
R007	11	5	2026-11-11
R008	1	3	2026-11-11
R008	2	4	2026-11-11
R008	3	3	2026-11-11
R008	4	1	2026-11-11
R008	5	4	2026-11-11
R008	6	3	2026-11-11
R008	7	3	2026-11-11
R008	8	1	2026-11-11
R008	9	5	2026-11-11
R008	10	4	2026-11-11
R008	11	2	2026-11-11
R009	1	1	2026-11-11
R009	2	1	2026-11-11
R009	3	3	2026-11-11
R009	4	1	2026-11-11
R009	5	3	2026-11-11
R009	6	4	2026-11-11
R009	7	3	2026-11-11
R009	8	2	2026-11-11
R009	9	4	2026-11-11
R009	10	2	2026-11-11
R009	11	5	2026-11-11
R010	1	2	2026-11-11
R010	2	4	2026-11-11
R010	3	4	2026-11-11
R010	4	3	2026-11-11
R010	5	4	2026-11-11
R010	6	4	2026-11-11
R010	7	5	2026-11-11
R010	8	2	2026-11-11
R010	9	5	2026-11-11
R010	10	3	2026-11-11
R010	11	1	2026-11-11
R011	1	1	2026-11-11
R011	2	5	2026-11-11
R011	3	5	2026-11-11
R011	4	1	2026-11-11
R011	5	4	2026-11-11
R011	6	2	2026-11-11
R011	7	2	2026-11-11
R011	8	4	2026-11-11
R011	9	5	2026-11-11
R011	10	4	2026-11-11
R011	11	4	2026-11-11
R012	1	4	2026-11-11
R012	2	4	2026-11-11
R012	3	1	2026-11-11
R012	4	3	2026-11-11
R012	5	1	2026-11-11
R012	6	4	2026-11-11
R012	7	5	2026-11-11
R012	8	1	2026-11-11
R012	9	4	2026-11-11
R012	10	3	2026-11-11
R012	11	4	2026-11-11
R013	1	2	2026-11-11
R013	2	4	2026-11-11
R013	3	3	2026-11-11
R013	4	3	2026-11-11
R013	5	3	2026-11-11
R013	6	5	2026-11-11
R013	7	5	2026-11-11
R013	8	1	2026-11-11
R013	9	4	2026-11-11
R013	10	5	2026-11-11
R013	11	1	2026-11-11
R014	1	5	2026-11-11
R014	2	4	2026-11-11
R014	3	4	2026-11-11
R014	4	1	2026-11-11
R014	5	3	2026-11-11
R014	6	5	2026-11-11
R014	7	4	2026-11-11
R014	8	2	2026-11-11
R014	9	4	2026-11-11
R014	10	4	2026-11-11
R014	11	4	2026-11-11
R015	1	3	2026-11-11
R015	2	1	2026-11-11
R015	3	4	2026-11-11
R015	4	4	2026-11-11
R015	5	4	2026-11-11
R015	6	4	2026-11-11
R015	7	2	2026-11-11
R015	8	5	2026-11-11
R015	9	5	2026-11-11
R015	10	5	2026-11-11
R015	11	4	2026-11-11
R016	1	3	2026-11-11
R016	2	1	2026-11-11
R016	3	1	2026-11-11
R016	4	3	2026-11-11
R016	5	1	2026-11-11
R016	6	3	2026-11-11
R016	7	4	2026-11-11
R016	8	2	2026-11-11
R016	9	2	2026-11-11
R016	10	5	2026-11-11
R016	11	5	2026-11-11
R017	1	4	2026-11-11
R017	2	1	2026-11-11
R017	3	4	2026-11-11
R017	4	1	2026-11-11
R017	5	2	2026-11-11
R017	6	4	2026-11-11
R017	7	3	2026-11-11
R017	8	3	2026-11-11
R017	9	5	2026-11-11
R017	10	5	2026-11-11
R017	11	5	2026-11-11
R018	1	4	2026-11-11
R018	2	5	2026-11-11
R018	3	3	2026-11-11
R018	4	4	2026-11-11
R018	5	4	2026-11-11
R018	6	4	2026-11-11
R018	7	4	2026-11-11
R018	8	3	2026-11-11
R018	9	4	2026-11-11
R018	10	4	2026-11-11
R018	11	4	2026-11-11
R019	1	1	2026-11-11
R019	2	3	2026-11-11
R019	3	4	2026-11-11
R019	4	2	2026-11-11
R019	5	4	2026-11-11
R019	6	2	2026-11-11
R019	7	2	2026-11-11
R019	8	5	2026-11-11
R019	9	5	2026-11-11
R019	10	3	2026-11-11
R019	11	4	2026-11-11
R020	1	3	2026-11-11
R020	2	1	2026-11-11
R020	3	1	2026-11-11
R020	4	2	2026-11-11
R020	5	3	2026-11-11
R020	6	5	2026-11-11
R020	7	5	2026-11-11
R020	8	2	2026-11-11
R020	9	5	2026-11-11
R020	10	4	2026-11-11
R020	11	4	2026-11-11
R021	1	3	2026-11-11
R021	2	2	2026-11-11
R021	3	2	2026-11-11
R021	4	2	2026-11-11
R021	5	5	2026-11-11
R021	6	1	2026-11-11
R021	7	4	2026-11-11
R021	8	4	2026-11-11
R021	9	5	2026-11-11
R021	10	3	2026-11-11
R021	11	4	2026-11-11
R022	1	5	2026-11-11
R022	2	4	2026-11-11
R022	3	4	2026-11-11
R022	4	5	2026-11-11
R022	5	3	2026-11-11
R022	6	1	2026-11-11
R022	7	3	2026-11-11
R022	8	1	2026-11-11
R022	9	2	2026-11-11
R022	10	5	2026-11-11
R022	11	3	2026-11-11
R023	1	3	2026-11-11
R023	2	4	2026-11-11
R023	3	4	2026-11-11
R023	4	1	2026-11-11
R023	5	3	2026-11-11
R023	6	1	2026-11-11
R023	7	1	2026-11-11
R023	8	3	2026-11-11
R023	9	4	2026-11-11
R023	10	2	2026-11-11
R023	11	3	2026-11-11
R024	1	3	2026-11-11
R024	2	2	2026-11-11
R024	3	2	2026-11-11
R024	4	3	2026-11-11
R024	5	2	2026-11-11
R024	6	1	2026-11-11
R024	7	1	2026-11-11
R024	8	1	2026-11-11
R024	9	4	2026-11-11
R024	10	4	2026-11-11
R024	11	2	2026-11-11
R025	1	3	2026-11-11
R025	2	2	2026-11-11
R025	3	2	2026-11-11
R025	4	4	2026-11-11
R025	5	4	2026-11-11
R025	6	3	2026-11-11
R025	7	2	2026-11-11
R025	8	2	2026-11-11
R025	9	3	2026-11-11
R025	10	4	2026-11-11
R025	11	5	2026-11-11
R026	1	5	2026-11-11
R026	2	3	2026-11-11
R026	3	4	2026-11-11
R026	4	1	2026-11-11
R026	5	3	2026-11-11
R026	6	3	2026-11-11
R026	7	4	2026-11-11
R026	8	4	2026-11-11
R026	9	5	2026-11-11
R026	10	3	2026-11-11
R026	11	3	2026-11-11
R027	1	5	2026-11-11
R027	2	3	2026-11-11
R027	3	5	2026-11-11
R027	4	4	2026-11-11
R027	5	3	2026-11-11
R027	6	2	2026-11-11
R027	7	2	2026-11-11
R027	8	5	2026-11-11
R027	9	5	2026-11-11
R027	10	1	2026-11-11
R027	11	5	2026-11-11
R028	1	3	2026-11-11
R028	2	2	2026-11-11
R028	3	1	2026-11-11
R028	4	2	2026-11-11
R028	5	5	2026-11-11
R028	6	1	2026-11-11
R028	7	2	2026-11-11
R028	8	2	2026-11-11
R028	9	3	2026-11-11
R028	10	4	2026-11-11
R028	11	5	2026-11-11
R029	1	2	2026-11-11
R029	2	2	2026-11-11
R029	3	1	2026-11-11
R029	4	4	2026-11-11
R029	5	3	2026-11-11
R029	6	4	2026-11-11
R029	7	2	2026-11-11
R029	8	2	2026-11-11
R029	9	4	2026-11-11
R029	10	3	2026-11-11
R029	11	3	2026-11-11
R030	1	5	2026-11-11
R030	2	4	2026-11-11
R030	3	2	2026-11-11
R030	4	2	2026-11-11
R030	5	2	2026-11-11
R030	6	3	2026-11-11
R030	7	5	2026-11-11
R030	8	4	2026-11-11
R030	9	2	2026-11-11
R030	10	3	2026-11-11
R030	11	3	2026-11-11
R031	1	3	2026-11-11
R031	2	5	2026-11-11
R031	3	4	2026-11-11
R031	4	3	2026-11-11
R031	5	4	2026-11-11
R031	6	1	2026-11-11
R031	7	1	2026-11-11
R031	8	2	2026-11-11
R031	9	4	2026-11-11
R031	10	1	2026-11-11
R031	11	3	2026-11-11
R032	1	4	2026-11-11
R032	2	3	2026-11-11
R032	3	1	2026-11-11
R032	4	1	2026-11-11
R032	5	2	2026-11-11
R032	6	5	2026-11-11
R032	7	3	2026-11-11
R032	8	1	2026-11-11
R032	9	5	2026-11-11
R032	10	5	2026-11-11
R032	11	5	2026-11-11
R033	1	2	2026-11-11
R033	2	2	2026-11-11
R033	3	2	2026-11-11
R033	4	2	2026-11-11
R033	5	3	2026-11-11
R033	6	5	2026-11-11
R033	7	1	2026-11-11
R033	8	4	2026-11-11
R033	9	5	2026-11-11
R033	10	3	2026-11-11
R033	11	5	2026-11-11
R034	1	2	2026-11-11
R034	2	1	2026-11-11
R034	3	4	2026-11-11
R034	4	2	2026-11-11
R034	5	3	2026-11-11
R034	6	2	2026-11-11
R034	7	5	2026-11-11
R034	8	1	2026-11-11
R034	9	2	2026-11-11
R034	10	3	2026-11-11
R034	11	4	2026-11-11
R035	1	4	2026-11-11
R035	2	3	2026-11-11
R035	3	3	2026-11-11
R035	4	2	2026-11-11
R035	5	5	2026-11-11
R035	6	3	2026-11-11
R035	7	2	2026-11-11
R035	8	2	2026-11-11
R035	9	5	2026-11-11
R035	10	4	2026-11-11
R035	11	1	2026-11-11
R036	1	3	2026-11-11
R036	2	3	2026-11-11
R036	3	1	2026-11-11
R036	4	2	2026-11-11
R036	5	3	2026-11-11
R036	6	4	2026-11-11
R036	7	4	2026-11-11
R036	8	1	2026-11-11
R036	9	4	2026-11-11
R036	10	4	2026-11-11
R036	11	4	2026-11-11
R037	1	3	2026-11-11
R037	2	1	2026-11-11
R037	3	1	2026-11-11
R037	4	3	2026-11-11
R037	5	1	2026-11-11
R037	6	3	2026-11-11
R037	7	1	2026-11-11
R037	8	2	2026-11-11
R037	9	5	2026-11-11
R037	10	3	2026-11-11
R037	11	5	2026-11-11
R038	1	2	2026-11-11
R038	2	4	2026-11-11
R038	3	2	2026-11-11
R038	4	3	2026-11-11
R038	5	3	2026-11-11
R038	6	4	2026-11-11
R038	7	5	2026-11-11
R038	8	1	2026-11-11
R038	9	4	2026-11-11
R038	10	3	2026-11-11
R038	11	3	2026-11-11
R039	1	3	2026-11-11
R039	2	4	2026-11-11
R039	3	2	2026-11-11
R039	4	3	2026-11-11
R039	5	1	2026-11-11
R039	6	3	2026-11-11
R039	7	2	2026-11-11
R039	8	4	2026-11-11
R039	9	2	2026-11-11
R039	10	1	2026-11-11
R039	11	2	2026-11-11
R040	1	4	2026-11-11
R040	2	4	2026-11-11
R040	3	1	2026-11-11
R040	4	1	2026-11-11
R040	5	5	2026-11-11
R040	6	1	2026-11-11
R040	7	5	2026-11-11
R040	8	2	2026-11-11
R040	9	5	2026-11-11
R040	10	5	2026-11-11
R040	11	4	2026-11-11
R041	1	3	2026-11-11
R041	2	2	2026-11-11
R041	3	1	2026-11-11
R041	4	3	2026-11-11
R041	5	3	2026-11-11
R041	6	4	2026-11-11
R041	7	5	2026-11-11
R041	8	3	2026-11-11
R041	9	5	2026-11-11
R041	10	5	2026-11-11
R041	11	5	2026-11-11
R042	1	4	2026-11-11
R042	2	2	2026-11-11
R042	3	3	2026-11-11
R042	4	4	2026-11-11
R042	5	3	2026-11-11
R042	6	4	2026-11-11
R042	7	3	2026-11-11
R042	8	4	2026-11-11
R042	9	3	2026-11-11
R042	10	1	2026-11-11
R042	11	1	2026-11-11
R043	1	3	2026-11-11
R043	2	2	2026-11-11
R043	3	2	2026-11-11
R043	4	4	2026-11-11
R043	5	1	2026-11-11
R043	6	3	2026-11-11
R043	7	1	2026-11-11
R043	8	4	2026-11-11
R043	9	4	2026-11-11
R043	10	5	2026-11-11
R043	11	2	2026-11-11
R044	1	4	2026-11-11
R044	2	3	2026-11-11
R044	3	3	2026-11-11
R044	4	4	2026-11-11
R044	5	3	2026-11-11
R044	6	2	2026-11-11
R044	7	5	2026-11-11
R044	8	1	2026-11-11
R044	9	5	2026-11-11
R044	10	4	2026-11-11
R044	11	5	2026-11-11
R045	1	2	2026-11-11
R045	2	1	2026-11-11
R045	3	1	2026-11-11
R045	4	3	2026-11-11
R045	5	3	2026-11-11
R045	6	3	2026-11-11
R045	7	5	2026-11-11
R045	8	3	2026-11-11
R045	9	5	2026-11-11
R045	10	4	2026-11-11
R045	11	5	2026-11-11
R046	1	3	2026-11-11
R046	2	2	2026-11-11
R046	3	1	2026-11-11
R046	4	4	2026-11-11
R046	5	5	2026-11-11
R046	6	4	2026-11-11
R046	7	4	2026-11-11
R046	8	3	2026-11-11
R046	9	4	2026-11-11
R046	10	5	2026-11-11
R046	11	4	2026-11-11
R047	1	4	2026-11-11
R047	2	1	2026-11-11
R047	3	3	2026-11-11
R047	4	2	2026-11-11
R047	5	3	2026-11-11
R047	6	2	2026-11-11
R047	7	1	2026-11-11
R047	8	4	2026-11-11
R047	9	4	2026-11-11
R047	10	3	2026-11-11
R047	11	3	2026-11-11
R048	1	2	2026-11-11
R048	2	1	2026-11-11
R048	3	1	2026-11-11
R048	4	1	2026-11-11
R048	5	2	2026-11-11
R048	6	3	2026-11-11
R048	7	4	2026-11-11
R048	8	3	2026-11-11
R048	9	5	2026-11-11
R048	10	5	2026-11-11
R048	11	5	2026-11-11
R049	1	3	2026-11-11
R049	2	2	2026-11-11
R049	3	2	2026-11-11
R049	4	1	2026-11-11
R049	5	3	2026-11-11
R049	6	3	2026-11-11
R049	7	5	2026-11-11
R049	8	3	2026-11-11
R049	9	5	2026-11-11
R049	10	4	2026-11-11
R049	11	3	2026-11-11
R050	1	4	2026-11-11
R050	2	3	2026-11-11
R050	3	3	2026-11-11
R050	4	4	2026-11-11
R050	5	4	2026-11-11
R050	6	3	2026-11-11
R050	7	2	2026-11-11
R050	8	3	2026-11-11
R050	9	4	2026-11-11
R050	10	4	2026-11-11
R050	11	4	2026-11-11
\.


--
-- Data for Name: jobrole; Type: TABLE DATA; Schema: public; Owner: justinduprez
--

COPY public.jobrole (roleid, rolename, departmentid) FROM stdin;
1	Business Analyst	1
2	Data Analyst	1
3	IT Analyst	2
4	Project Manager	3
\.


--
-- Data for Name: roleskillrequirement; Type: TABLE DATA; Schema: public; Owner: justinduprez
--

COPY public.roleskillrequirement (roleid, skillid, requiredproficiency) FROM stdin;
1	1	4
1	2	4
1	3	3
1	4	4
1	5	3
1	9	4
1	10	4
2	1	4
2	2	5
2	3	4
2	4	4
2	7	4
2	9	4
3	2	4
3	3	3
3	5	3
3	8	5
3	9	4
3	10	3
4	1	3
4	5	3
4	9	4
4	10	5
4	11	5
\.


--
-- Data for Name: skill; Type: TABLE DATA; Schema: public; Owner: justinduprez
--

COPY public.skill (skillid, skillname, skillcategory) FROM stdin;
1	Excel	Technical
2	SQL	Technical
3	Python	Technical
4	Power BI	Technical
5	Generative AI Tools	AI
6	Prompt Writing	AI
7	Data Visualization	Analytical
8	Cybersecurity and Privacy	Technical
9	Analytical Thinking	Analytical
10	Communication	Professional
11	Project Management	Professional
\.


--
-- Data for Name: survey_raw; Type: TABLE DATA; Schema: public; Owner: justinduprez
--

COPY public.survey_raw (respondent_id, participant_status, target_career, years_experience, previous_ai_training, interested_in_training, excel, sql_skill, python, power_bi, generative_ai_tools, prompt_writing, data_visualization, cybersecurity_privacy, analytical_thinking, communication, project_management) FROM stdin;
R001	Employed	Business Analyst	1-2	No	Yes	1	3	2	4	4	3	3	3	3	4	1
R002	Student	Data Analyst	0	No	Yes	3	3	3	1	3	2	3	1	4	5	2
R003	Employed	IT Analyst	0	Yes	Yes	3	3	1	3	2	3	2	4	5	3	1
R004	Student worker	Project Manager	0	No	Yes	4	3	2	1	1	5	4	2	4	4	5
R005	Student	Business Analyst	3-5	No	Yes	5	2	3	3	4	3	5	1	3	3	1
R006	Student	Data Analyst	1-2	Yes	No	5	2	5	2	4	5	5	1	5	4	3
R007	Student	IT Analyst	3-5	Yes	Yes	1	3	1	1	3	3	2	4	4	1	5
R008	Employed	Project Manager	0	Yes	Yes	3	4	3	1	4	3	3	1	5	4	2
R009	Student worker	Business Analyst	0	No	No	1	1	3	1	3	4	3	2	4	2	5
R010	Employed	Data Analyst	0	Yes	Yes	2	4	4	3	4	4	5	2	5	3	1
R011	Student	IT Analyst	1-2	Yes	Yes	1	5	5	1	4	2	2	4	5	4	4
R012	Student	Project Manager	3-5	No	Yes	4	4	1	3	1	4	5	1	4	3	4
R013	Employed	Business Analyst	3-5	Yes	Yes	2	4	3	3	3	5	5	1	4	5	1
R014	Student	Data Analyst	0	Yes	Yes	5	4	4	1	3	5	4	2	4	4	4
R015	Student	IT Analyst	1-2	No	Yes	3	1	4	4	4	4	2	5	5	5	4
R016	Student	Project Manager	3-5	Yes	Yes	3	1	1	3	1	3	4	2	2	5	5
R017	Student	Business Analyst	0	Yes	No	4	1	4	1	2	4	3	3	5	5	5
R018	Student	Data Analyst	1-2	No	Yes	4	5	3	4	4	4	4	3	4	4	4
R019	Student worker	IT Analyst	1-2	No	Yes	1	3	4	2	4	2	2	5	5	3	4
R020	Student worker	Project Manager	1-2	Yes	Yes	3	1	1	2	3	5	5	2	5	4	4
R021	Student	Business Analyst	3-5	Yes	Yes	3	2	2	2	5	1	4	4	5	3	4
R022	Employed	Data Analyst	0	No	Yes	5	4	4	5	3	1	3	1	2	5	3
R023	Student	IT Analyst	1-2	Yes	Yes	3	4	4	1	3	1	1	3	4	2	3
R024	Student	Project Manager	3-5	Yes	Yes	3	2	2	3	2	1	1	1	4	4	2
R025	Student	Business Analyst	0	Yes	Yes	3	2	2	4	4	3	2	2	3	4	5
R026	Student worker	Data Analyst	1-2	Yes	Yes	5	3	4	1	3	3	4	4	5	3	3
R027	Student worker	IT Analyst	3-5	Yes	No	5	3	5	4	3	2	2	5	5	1	5
R028	Student worker	Project Manager	3-5	Yes	Yes	3	2	1	2	5	1	2	2	3	4	5
R029	Student worker	Business Analyst	0	Yes	Yes	2	2	1	4	3	4	2	2	4	3	3
R030	Student	Data Analyst	0	No	No	5	4	2	2	2	3	5	4	2	3	3
R031	Student worker	IT Analyst	1-2	Yes	No	3	5	4	3	4	1	1	2	4	1	3
R032	Student	Project Manager	1-2	Yes	Yes	4	3	1	1	2	5	3	1	5	5	5
R033	Student	Business Analyst	0	Yes	Yes	2	2	2	2	3	5	1	4	5	3	5
R034	Student	Data Analyst	1-2	No	Yes	2	1	4	2	3	2	5	1	2	3	4
R035	Student worker	IT Analyst	0	Yes	Yes	4	3	3	2	5	3	2	2	5	4	1
R036	Student	Project Manager	1-2	Yes	Yes	3	3	1	2	3	4	4	1	4	4	4
R037	Student	Business Analyst	1-2	Yes	Yes	3	1	1	3	1	3	1	2	5	3	5
R038	Student	Data Analyst	1-2	No	Yes	2	4	2	3	3	4	5	1	4	3	3
R039	Employed	IT Analyst	3-5	Yes	Yes	3	4	2	3	1	3	2	4	2	1	2
R040	Student	Project Manager	1-2	No	No	4	4	1	1	5	1	5	2	5	5	4
R041	Student	Business Analyst	0	Yes	Yes	3	2	1	3	3	4	5	3	5	5	5
R042	Student	Data Analyst	1-2	Yes	Yes	4	2	3	4	3	4	3	4	3	1	1
R043	Student	IT Analyst	0	Yes	Yes	3	2	2	4	1	3	1	4	4	5	2
R044	Student	Project Manager	0	No	No	4	3	3	4	3	2	5	1	5	4	5
R045	Student	Business Analyst	0	Yes	Yes	2	1	1	3	3	3	5	3	5	4	5
R046	Student	Data Analyst	0	No	Yes	3	2	1	4	5	4	4	3	4	5	4
R047	Employed	IT Analyst	3-5	No	No	4	1	3	2	3	2	1	4	4	3	3
R048	Employed	Project Manager	0	No	Yes	2	1	1	1	2	3	4	3	5	5	5
R049	Student	Business Analyst	0	No	No	3	2	2	1	3	3	5	3	5	4	3
R050	Student	Data Analyst	3-5	Yes	Yes	4	3	3	4	4	3	2	3	4	4	4
\.


--
-- Data for Name: trainingprogram; Type: TABLE DATA; Schema: public; Owner: justinduprez
--

COPY public.trainingprogram (trainingid, skillid, trainingname, hours, estimatedcost) FROM stdin;
1	1	Excel Skills Workshop	10	0.00
2	2	Introduction to SQL	15	50.00
3	3	Python Fundamentals	20	75.00
4	4	Power BI Basics	12	40.00
5	5	Generative AI Fundamentals	8	0.00
6	9	Analytical Thinking Workshop	6	25.00
7	10	Professional Communication	5	0.00
\.


--
-- Name: department department_departmentname_key; Type: CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_departmentname_key UNIQUE (departmentname);


--
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (departmentid);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employeeid);


--
-- Name: employeeskill employeeskill_pkey; Type: CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.employeeskill
    ADD CONSTRAINT employeeskill_pkey PRIMARY KEY (employeeid, skillid);


--
-- Name: jobrole jobrole_pkey; Type: CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.jobrole
    ADD CONSTRAINT jobrole_pkey PRIMARY KEY (roleid);


--
-- Name: roleskillrequirement roleskillrequirement_pkey; Type: CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.roleskillrequirement
    ADD CONSTRAINT roleskillrequirement_pkey PRIMARY KEY (roleid, skillid);


--
-- Name: skill skill_pkey; Type: CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_pkey PRIMARY KEY (skillid);


--
-- Name: skill skill_skillname_key; Type: CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_skillname_key UNIQUE (skillname);


--
-- Name: survey_raw survey_raw_pkey; Type: CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.survey_raw
    ADD CONSTRAINT survey_raw_pkey PRIMARY KEY (respondent_id);


--
-- Name: trainingprogram trainingprogram_pkey; Type: CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.trainingprogram
    ADD CONSTRAINT trainingprogram_pkey PRIMARY KEY (trainingid);


--
-- Name: employee employee_currentroleid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_currentroleid_fkey FOREIGN KEY (currentroleid) REFERENCES public.jobrole(roleid);


--
-- Name: employeeskill employeeskill_employeeid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.employeeskill
    ADD CONSTRAINT employeeskill_employeeid_fkey FOREIGN KEY (employeeid) REFERENCES public.employee(employeeid);


--
-- Name: employeeskill employeeskill_skillid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.employeeskill
    ADD CONSTRAINT employeeskill_skillid_fkey FOREIGN KEY (skillid) REFERENCES public.skill(skillid);


--
-- Name: jobrole jobrole_departmentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.jobrole
    ADD CONSTRAINT jobrole_departmentid_fkey FOREIGN KEY (departmentid) REFERENCES public.department(departmentid);


--
-- Name: roleskillrequirement roleskillrequirement_roleid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.roleskillrequirement
    ADD CONSTRAINT roleskillrequirement_roleid_fkey FOREIGN KEY (roleid) REFERENCES public.jobrole(roleid);


--
-- Name: roleskillrequirement roleskillrequirement_skillid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.roleskillrequirement
    ADD CONSTRAINT roleskillrequirement_skillid_fkey FOREIGN KEY (skillid) REFERENCES public.skill(skillid);


--
-- Name: trainingprogram trainingprogram_skillid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: justinduprez
--

ALTER TABLE ONLY public.trainingprogram
    ADD CONSTRAINT trainingprogram_skillid_fkey FOREIGN KEY (skillid) REFERENCES public.skill(skillid);


--
-- PostgreSQL database dump complete
--

\unrestrict zoN32ErZPXxFLAaljCeJbDxsd5WRjJ6DI0d7f4zZO0NEByF3MbpzmXtbgQFEyxo

