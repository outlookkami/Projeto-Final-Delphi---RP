--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'LATIN1';
SET standard_conforming_strings = off;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET escape_string_warning = off;
SET row_security = off;

--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: insere_cliente_usuarios(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.insere_cliente_usuarios() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO Usuarios(nome_usuario, tipo_usuario, senha_hash, ativo_in)
	VALUES (NEW.email_cliente, 'Cliente', NEW.hash_senha_cli, NEW.ativo_in)
	ON CONFLICT (nome_usuario) DO NOTHING;
	RETURN NEW;
END;
$$;


ALTER FUNCTION public.insere_cliente_usuarios() OWNER TO postgres;

--
-- Name: insere_funcionario_usuarios(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.insere_funcionario_usuarios() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO usuarios(nome_usuario, tipo_usuario, senha_hash, ativo_in)
	VALUES (NEW.email_funcionario, 'Funcionario', NEW.hash_senha_func, NEW.ativo_in)
	ON CONFLICT (nome_usuario) DO NOTHING;
	RETURN NEW;
END;
$$;


ALTER FUNCTION public.insere_funcionario_usuarios() OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Clientes" (
    codigo_cliente integer NOT NULL,
    hash_senha_cli character varying(255) NOT NULL,
    nome_cliente character varying(100) NOT NULL,
    telefone_cliente character varying(11) NOT NULL,
    email_cliente character varying(250) NOT NULL,
    cep_cliente character varying(8),
    endereco_cliente character varying(60),
    num_endereco character varying(7),
    bairro character varying(30),
    cidade character varying(30),
    uf character varying(2),
    veiculo character varying(7),
    cliente_data_criacao timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    ativo_in boolean DEFAULT true
);


ALTER TABLE public."Clientes" OWNER TO postgres;

--
-- Name: Clientes_codigo_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Clientes_codigo_cliente_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Clientes_codigo_cliente_seq" OWNER TO postgres;

--
-- Name: Clientes_codigo_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Clientes_codigo_cliente_seq" OWNED BY public."Clientes".codigo_cliente;


--
-- Name: Funcionarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Funcionarios" (
    codigo_funcionario integer NOT NULL,
    hash_senha_func character varying(255),
    nome_funcionario character varying(100) NOT NULL,
    telefone_funcionario character varying(11) NOT NULL,
    email_funcionario character varying(255) NOT NULL,
    cep_funcionario character varying(8),
    endereco_funcionario character varying(60),
    num_endereco character varying(7),
    bairro character varying(30),
    cidade character varying(30),
    uf character varying(2),
    funcao character varying,
    cpf_funcionario character varying(11),
    rg_funcionario character varying(9),
    funcionario_data_criacao timestamp without time zone,
    ativo_in boolean DEFAULT true
);


ALTER TABLE public."Funcionarios" OWNER TO postgres;

--
-- Name: Funcionarios_codigo_funcionario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Funcionarios_codigo_funcionario_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Funcionarios_codigo_funcionario_seq" OWNER TO postgres;

--
-- Name: Funcionarios_codigo_funcionario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Funcionarios_codigo_funcionario_seq" OWNED BY public."Funcionarios".codigo_funcionario;


--
-- Name: orcamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orcamentos (
    codigo_orcamento integer NOT NULL,
    codigo_pedido integer,
    data_emissao date,
    validade date,
    contato_cliente character varying(11),
    email_cliente character varying(255),
    nome_cliente character varying(100),
    cep_cliente character varying(8),
    placa_veiculo character varying(7),
    marca character varying(40),
    modelo character varying(40),
    cor character varying(20),
    status_orcamento character varying(25),
    descricao_servico text,
    descricao_pedido text,
    codigo_cliente character varying(5),
    valor_mdo numeric(6,2),
    valor_materiais numeric(6,2),
    valor_total numeric(6,2),
    lista_materiais text
);


ALTER TABLE public.orcamentos OWNER TO postgres;

--
-- Name: orcamentos_codigo_orcamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orcamentos_codigo_orcamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orcamentos_codigo_orcamento_seq OWNER TO postgres;

--
-- Name: orcamentos_codigo_orcamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orcamentos_codigo_orcamento_seq OWNED BY public.orcamentos.codigo_orcamento;


--
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    codigo_pedido integer NOT NULL,
    data_pedido timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    contato_cliente character varying(11) NOT NULL,
    endereco_cliente character varying(60),
    cep_cliente character varying(8),
    placa_veiculo character varying(7) NOT NULL,
    modelo character varying(40),
    marca character varying(40),
    cor character varying(20),
    descricao_pedido text,
    nome_cliente character varying(100),
    status_pedido character varying(25),
    email_cliente character varying(255),
    codigo_cliente character varying(5)
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- Name: pedidos_codigo_pedido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedidos_codigo_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedidos_codigo_pedido_seq OWNER TO postgres;

--
-- Name: pedidos_codigo_pedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedidos_codigo_pedido_seq OWNED BY public.pedidos.codigo_pedido;


--
-- Name: produtos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produtos (
    codigo_produto integer NOT NULL,
    codigo_barras character varying(20),
    nome_produto character varying(80) NOT NULL,
    categoria character varying(20),
    unidade_medida character varying(20) NOT NULL,
    quant_estoque integer NOT NULL,
    quant_est_prevista integer,
    preco_compra numeric(7,2) NOT NULL,
    preco_venda numeric(7,2),
    marca character varying(40),
    data_criacao timestamp without time zone DEFAULT now(),
    ativo_in boolean DEFAULT true
);


ALTER TABLE public.produtos OWNER TO postgres;

--
-- Name: produtos_codigo_produto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produtos_codigo_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produtos_codigo_produto_seq OWNER TO postgres;

--
-- Name: produtos_codigo_produto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produtos_codigo_produto_seq OWNED BY public.produtos.codigo_produto;


--
-- Name: teste_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teste_logs (
    id integer NOT NULL
);


ALTER TABLE public.teste_logs OWNER TO postgres;

--
-- Name: teste_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teste_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.teste_logs_id_seq OWNER TO postgres;

--
-- Name: teste_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teste_logs_id_seq OWNED BY public.teste_logs.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    tipo_usuario character varying(15) NOT NULL,
    nome_usuario character varying(255) NOT NULL,
    senha_hash character varying(255) NOT NULL,
    usuario_data_criacao timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    ativo_in boolean DEFAULT true
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_usuario_seq OWNER TO postgres;

--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- Name: veiculos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.veiculos (
    codigo_veiculo integer NOT NULL,
    placa_veiculo character varying(7) NOT NULL,
    modelo character varying(40),
    marca character varying(40),
    cor character varying(20),
    ano_fab character varying(4),
    ano_mod smallint,
    nome_usuario_cliente character varying(255),
    contato_cliente character varying(11),
    chassi character varying(17),
    data_criacao timestamp without time zone
);


ALTER TABLE public.veiculos OWNER TO postgres;

--
-- Name: veiculos_codigo_veiculo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.veiculos ALTER COLUMN codigo_veiculo ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.veiculos_codigo_veiculo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: Clientes codigo_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Clientes" ALTER COLUMN codigo_cliente SET DEFAULT nextval('public."Clientes_codigo_cliente_seq"'::regclass);


--
-- Name: Funcionarios codigo_funcionario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Funcionarios" ALTER COLUMN codigo_funcionario SET DEFAULT nextval('public."Funcionarios_codigo_funcionario_seq"'::regclass);


--
-- Name: orcamentos codigo_orcamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orcamentos ALTER COLUMN codigo_orcamento SET DEFAULT nextval('public.orcamentos_codigo_orcamento_seq'::regclass);


--
-- Name: pedidos codigo_pedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos ALTER COLUMN codigo_pedido SET DEFAULT nextval('public.pedidos_codigo_pedido_seq'::regclass);


--
-- Name: produtos codigo_produto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produtos ALTER COLUMN codigo_produto SET DEFAULT nextval('public.produtos_codigo_produto_seq'::regclass);


--
-- Name: teste_logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teste_logs ALTER COLUMN id SET DEFAULT nextval('public.teste_logs_id_seq'::regclass);


--
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- Data for Name: Clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Clientes" (codigo_cliente, hash_senha_cli, nome_cliente, telefone_cliente, email_cliente, cep_cliente, endereco_cliente, num_endereco, bairro, cidade, uf, veiculo, cliente_data_criacao, ativo_in) FROM stdin;
5	a9993e364706816aba3e25717850c26c9cd0d89d	Kamilly	41995937553	dkamillythauanny@gmail.com	80740240	Rua Angela Ganz	597	Campina do Siqueira	Curitiba	PR	AVL7532	2025-09-24 15:45:00.753644	t
6	81fe8bfe87576c3ecb22426f8e57847382917acf	cliente	41995937553	cliente@gmail.com	80740240	Rua Ângela Ganz	597	Campina do Siqueira	Curitiba	PR	\N	2025-10-07 16:20:04.06999	t
13	3da541559918a808c2402bba5012f6c60b27661c	dafsdf		asdf							\N	2025-10-08 16:16:23.466423	t
15	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	cliente com veiculo	41995937553	clientecomveiculo@gmail.com	80740240	Rua Ângela Ganz	597	Campina do Siqueira	Curitiba	PR	\N	2025-10-13 16:58:04.477631	t
25	81fe8bfe87576c3ecb22426f8e57847382917acf	kamilly 	41995937553	kamilly@gmail.com							\N	2025-10-14 15:27:59.916059	t
27	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	cliente com veiculo com chassi	41995937553	adsdffj@gmail.com	82400370	Rua José Culpi	597	Butiatuvinha	Curitiba	PR	\N	2025-10-14 15:37:36.755859	t
28	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	kamilly	41995937553	kamillyteste2@gmail.com							\N	2025-10-14 16:53:58.318545	t
12	da39a3ee5e6b4b0d3255bfef95601890afd80709			gh							\N	2025-10-08 16:10:26.779912	f
7	da39a3ee5e6b4b0d3255bfef95601890afd80709										\N	2025-10-08 16:02:49.529901	f
33	a9993e364706816aba3e25717850c26c9cd0d89d	Cliente para teste	41995968253	teste@gmail.com							\N	2025-10-28 16:16:17.728516	t
11	da39a3ee5e6b4b0d3255bfef95601890afd80709			adfasd							\N	2025-10-08 16:09:42.916017	f
29	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	teste veiculo	41991288048	email@gmail.com							\N	2025-10-20 13:35:07.208436	f
16	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	clie	41995937553	clie@gmail.com	80740240	Rua Ângela Ganz	597	Campina do Siqueira	Curitiba	PR	\N	2025-10-13 17:02:31.24047	f
26	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	incluindo veiculo	41995937553	incluindoveiculo@gmail.com							\N	2025-10-14 15:35:03.500078	f
24	8cb2237d0679ca88db6464eac60da96345513964	adfasf	41995937553	asdfas@gmail.com							\N	2025-10-14 13:34:32.616523	f
23	8cb2237d0679ca88db6464eac60da96345513964	cliente fiel	41995937553	clientefiel@gmail.com	82400370	Rua José Culpi	767	Butiatuvinha	Curitiba	PR	\N	2025-10-14 13:31:40.333553	f
22	ca8032a4ce311bf7f776f1e97ae3bb06bf3fc461	cliente aleatorio	45678912345	clientealeatorio@gmail.com							\N	2025-10-13 17:24:17.726294	f
30	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	teste 2 ano do veiculo	12345678900	anoveiculo@gmail.com							\N	2025-10-20 13:38:40.822106	f
21	81fe8bfe87576c3ecb22426f8e57847382917acf	ajfkljdsl	78945678978	asjdkfjklds							\N	2025-10-13 17:21:36.503336	f
35	8cb2237d0679ca88db6464eac60da96345513964	mais um cliente	41975859583	maisum@gmail.com	80740240	Rua Ângela Ganz	597	Campina do Siqueira	Curitiba	PR	\N	2025-11-18 13:46:13.230956	t
36	8cb2237d0679ca88db6464eac60da96345513964	cliente teste veiculo	41998877665	cliteste@gmail.com	82400370	Rua José Culpi	767	Butiatuvinha	Curitiba	PR	\N	2025-11-18 13:54:38.465044	t
18	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	cliente	41995937553	clientecomveic@gmail.com	80740240	Rua Ângela Ganz	597	Campina do Siqueira	Curitiba	PR	\N	2025-10-13 17:06:34.513542	f
37	8cb2237d0679ca88db6464eac60da96345513964	clieveiculo	87998798778	clieveiculo	82400370	Rua José Culpi	767	Butiatuvinha	Curitiba	PR	\N	2025-11-18 13:57:23.59275	t
38	8cb2237d0679ca88db6464eac60da96345513964	cliente veiculo	41958686865	clienteveic@gmail.com	82400370	Rua José Culpi	767	Butiatuvinha	Curitiba	PR	\N	2025-11-18 14:00:31.62437	t
39	8cb2237d0679ca88db6464eac60da96345513964	teste	12312312311	testecli@gmail.com							\N	2025-11-18 14:07:36.239079	t
40	8cb2237d0679ca88db6464eac60da96345513964	teste 12345	12345123451	teste12345@gmail.com							\N	2025-11-18 14:13:10.477739	t
42	8cb2237d0679ca88db6464eac60da96345513964	teste 12345678	12345123456	teste12345678@gmail.com							\N	2025-11-18 14:14:19.020918	t
43	8cb2237d0679ca88db6464eac60da96345513964	cliente0012	00120012001	cliente0012@gmail.com							\N	2025-11-18 14:16:57.324729	t
80	8cb2237d0679ca88db6464eac60da96345513964	teste teste	44664654465	testeteste@gmail.com							\N	2025-11-18 15:16:04.05452	t
81	8cb2237d0679ca88db6464eac60da96345513964	cliente teste veiculo 	41456454646	clitesteveic@gmail.com	80740240	Rua Ângela Ganz	597	Campina do Siqueira	Curitiba	PR	\N	2025-11-18 15:25:59.442103	t
82	8cb2237d0679ca88db6464eac60da96345513964	cliente para testar	45454654646	cliparateste@gmail.com							\N	2025-11-18 15:48:53.908826	t
83	8cb2237d0679ca88db6464eac60da96345513964	teste telefone	46444654645	testetelefone@gmail.com							\N	2025-11-18 15:53:15.175453	t
84	8cb2237d0679ca88db6464eac60da96345513964	cliente com veiculo	41465464465	clicomveic@gmail.com	82400370	Rua José Culpi	767	Butiatuvinha	Curitiba	PR	\N	2025-11-19 13:36:13.181885	t
\.


--
-- Data for Name: Funcionarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Funcionarios" (codigo_funcionario, hash_senha_func, nome_funcionario, telefone_funcionario, email_funcionario, cep_funcionario, endereco_funcionario, num_endereco, bairro, cidade, uf, funcao, cpf_funcionario, rg_funcionario, funcionario_data_criacao, ativo_in) FROM stdin;
14	e19496bad062b30b74e277cd72f1e4a65cdd0da0	testando inclusão	45464654654	testeinclu@gmail.com	82400370	Rua José Culpi	767	Butiatuvinha	Curitiba	PR	Pintor Automotivo	78978978978		\N	t
26	e4c6b06b78b88af6a48d48ca211e2f6f055ddbad	abc	54465654654	abc	82410440	Rua Irene Túlio	330	Santa Felicidade	Curitiba	PR	Pintor Automotivo	54564556456		\N	t
24	aa2d51e8117b082f887d21436e36df736fe87ad2	testea	46455445646	testea@gmail.com	82410440	Rua Irene Túlio	330	Santa Felicidade	Curitiba	PR	Montador/Desmontador	82410440123		\N	t
37	5eca87983d5cfeacd41d5cc232147232c8300455	funcionario tres	45454545545	functres@gmail.com	80740240	Rua Ângela Ganz	597	Campina do Siqueira	Curitiba	PR	Pintor Automotivo	03586974812		\N	t
38	fcf2e68be8c9d9975d1bf49734994a99610be042	Miguel Luiz da Silva Alves	41925052019	miguelalves@gmail.com	82400370	Rua José Culpi	767	Butiatuvinha	Curitiba	PR	Pintor Automotivo	25052019006		\N	t
30	c93919c606f36993e0d488afc10c9ac51beede7d	teste erro	00112233445	testeerro@gmail.com	82410440	Rua Irene Túlio	330	Santa Felicidade	Curitiba	PR	Pintor Automotivo	47947947947		\N	f
21	73497d98a6f33d2b662ccc57812db9776576703b	funcionario	45654655646	funcionario123@gmail.com	80740240	Rua Ângela Ganz	597	Campina do Siqueira	Curitiba	PR		45678978945		\N	t
1	a9993e364706816aba3e25717850c26c9cd0d89d	Nilza Ap. da Silva Pereira	4196184391	nilzasilva@gmail.com	82400370	\N	\N	\N	\N	\N	\N	00798961970	257200642	\N	t
17	34475dfbfcbf5d461580d90033930731ade9b365	incluindo func	45465646456	inclufunc@gmail.com	82400370	Rua José Culpi	767	Butiatuvinha	Curitiba	PR	Montador/Desmontador	45645645600		\N	t
19	0ccbde8b49329ee7a99443457b290e3413ab8cce	cadfunc	45644645646	cadfunc@gmail.com	80740240	Rua Ângela Ganz	767	Campina do Siqueira	Curitiba	PR		12344456788		\N	f
23	6bb22f1a9be94d929136641119ca6f3d2839e85d	123	12312312312	123123	80740240	Rua Ângela Ganz	767	Campina do Siqueira	Curitiba	PR		12312312312		\N	f
32	75b6623083c8d2360d570cc06cf39202df358895	Funcionario teste	45549898745	funcionarioteste@gmail.com	82400370	Rua José Culpi	767	Butiatuvinha	Curitiba	PR	Pintor Automotivo	74285963478		\N	f
13	5f864d0275698de6faba2e50da2de022a4c51d4b	func para adm	54564644646	funcadmadm@gmail.com	82400370	Rua José Culpi	767	Butiatuvinha	Curitiba	PR	Administrador	12345698702		\N	f
7		func teste senha	41995937553	functeste@gmail.com	80740240	Rua Ângela Ganz	597	Campina do Siqueira	Curitiba	PR	Pintor Automotivo	11496443977		\N	f
5	a9993e364706816aba3e25717850c26c9cd0d89d	Kamilly	41995937553	kami@gmail.com	\N	\N	\N	\N	\N	\N	\N	08630475994	\N	\N	f
\.


--
-- Data for Name: orcamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orcamentos (codigo_orcamento, codigo_pedido, data_emissao, validade, contato_cliente, email_cliente, nome_cliente, cep_cliente, placa_veiculo, marca, modelo, cor, status_orcamento, descricao_servico, descricao_pedido, codigo_cliente, valor_mdo, valor_materiais, valor_total, lista_materiais) FROM stdin;
1	9	\N	\N	41995937553	dkamillythauanny@gmail.com	\N	80740240	AVL7532	marca4	modelo4	azul	Aguardando orçamento	\N	pintar o carro de preto\r\n	\N	\N	\N	\N	\N
\.


--
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (codigo_pedido, data_pedido, contato_cliente, endereco_cliente, cep_cliente, placa_veiculo, modelo, marca, cor, descricao_pedido, nome_cliente, status_pedido, email_cliente, codigo_cliente) FROM stdin;
9	2025-11-11 00:00:00	41995937553	Rua Angela Ganz	80740240	AVL7532	modelo4	marca4	azul	pintar o carro de preto\r\n	Kamilly	Aguardando orçamento	dkamillythauanny@gmail.com	5
10	2025-11-12 00:00:00	41995937553	Rua Angela Ganz	80740240	AVL7532	modelo4	marca4	preto	personalizar com listras brancas e desamassar o capô\r\n	Kamilly	Aguardando orçamento	dkamillythauanny@gmail.com	5
\.


--
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produtos (codigo_produto, codigo_barras, nome_produto, categoria, unidade_medida, quant_estoque, quant_est_prevista, preco_compra, preco_venda, marca, data_criacao, ativo_in) FROM stdin;
1	7891000000011	Tinta Automotiva Vermelha	Tintas e Vernizes	L	25	25	80.00	120.00	Sherwin-Williams	2025-11-10 16:13:42.247289	t
2	7891000000028	Massa Plástica Automotiva	Reparo e Acabamento	kg	40	40	25.00	45.00	3M	2025-11-10 16:13:42.247289	t
3	7891000000035	Lixa D/água 1200	Lixas e Abrasivos	un	200	200	1.50	3.00	Norton	2025-11-10 16:13:42.247289	t
4	7891000000042	Primer PU Cinza	Tintas e Vernizes	L	30	30	50.00	85.00	Anjo Tintas	2025-11-10 16:13:42.247289	t
5	7891000000059	Verniz Automotivo Alto Brilho	Tintas e Vernizes	L	20	20	70.00	110.00	Sikkens	2025-11-10 16:13:42.247289	t
\.


--
-- Data for Name: teste_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teste_logs (id) FROM stdin;
\.


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id_usuario, tipo_usuario, nome_usuario, senha_hash, usuario_data_criacao, ativo_in) FROM stdin;
26	Funcionario	funcadm@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
16	Cliente	clientefiel@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	f
12	Cliente	asdfasd	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	\N	t
13	Cliente	kclientelsjf@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
25	Funcionario	functeste@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
20	Cliente	adsdffj@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
40	Administrador	adm@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
41	Funcionario	funcionarioteste@gmail.com	75b6623083c8d2360d570cc06cf39202df358895	\N	t
42	Funcionario	functestando@gmail.com	38f8e69d9f189d1e46a42acc1e66e761fbb22454	\N	t
43	Funcionario	functres@gmail.com	5eca87983d5cfeacd41d5cc232147232c8300455	\N	t
44	Funcionario	miguelalves@gmail.com	fcf2e68be8c9d9975d1bf49734994a99610be042	\N	t
28	Funcionario	asdfasd@gmail.com	0bfc1933e42e19aba1fae5adb68944f01cd69ba6	\N	t
4	Cliente	cliente@gmail.com	81fe8bfe87576c3ecb22426f8e57847382917acf	\N	t
5	Cliente		da39a3ee5e6b4b0d3255bfef95601890afd80709	\N	f
6	Cliente	adfasd	da39a3ee5e6b4b0d3255bfef95601890afd80709	\N	f
9	Cliente	clientecomveiculo@gmail.com	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	\N	t
11	Cliente	clientecomveic@gmail.com	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	\N	f
14	Cliente	asjdkfjklds	81fe8bfe87576c3ecb22426f8e57847382917acf	\N	f
15	Cliente	clientealeatorio@gmail.com	ca8032a4ce311bf7f776f1e97ae3bb06bf3fc461	\N	f
17	Cliente	asdfas@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	f
19	Cliente	incluindoveiculo@gmail.com	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	\N	f
22	Cliente	kamillyteste2@gmail.com	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	\N	t
24	Cliente	anoveiculo@gmail.com	7110eda4d09e062aa5e4a390b0a572ac0d2c0220	\N	f
7	Cliente	gh	8cb2237d0679ca88db6464eac60da96345513964	\N	f
8	Cliente	asdf	a61ec7845262642dc58d1b379a4f3a8ba24b48d0	\N	t
10	Cliente	clie@gmail.com	4881dc11fd8e34715aca90a0b752da682b3bc14f	\N	f
23	Cliente	email@gmail.com	1f8ac10f23c5b5bc1167bda84b833e5c057a77d2	\N	f
2	Cliente	dkamillythauanny@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
18	Cliente	kamilly@gmail.com	a9993e364706816aba3e25717850c26c9cd0d89d	\N	t
27	Cliente	teste@gmail.com	a9993e364706816aba3e25717850c26c9cd0d89d	\N	t
3	Funcionario	nilzasilva@gmail.com	a9993e364706816aba3e25717850c26c9cd0d89d	\N	t
21	Funcionario	kami@gmail.com	a9993e364706816aba3e25717850c26c9cd0d89d	\N	f
29	Funcionario	funcadmadm@gmail.com	5f864d0275698de6faba2e50da2de022a4c51d4b	\N	f
30	Funcionario	testeinclu@gmail.com	e19496bad062b30b74e277cd72f1e4a65cdd0da0	\N	f
31	Funcionario	inclufunc@gmail.com	f9f5556392ba25c96101a8cd06cd0f206bcb3d97	\N	t
33	Funcionario	cadfunc@gmail.com	0ccbde8b49329ee7a99443457b290e3413ab8cce	\N	f
34	Funcionario	funcionario123@gmail.com	73497d98a6f33d2b662ccc57812db9776576703b	\N	t
35	Funcionario	123123	6bb22f1a9be94d929136641119ca6f3d2839e85d	\N	f
36	Funcionario	testea@gmail.com	aa2d51e8117b082f887d21436e36df736fe87ad2	\N	f
37	Funcionario	abc	e4c6b06b78b88af6a48d48ca211e2f6f055ddbad	\N	f
38	Funcionario	456	f9f5556392ba25c96101a8cd06cd0f206bcb3d97	\N	f
39	Funcionario	testeerro@gmail.com	c93919c606f36993e0d488afc10c9ac51beede7d	\N	f
45	Cliente	maisum@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
46	Cliente	cliteste@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
47	Cliente	clieveiculo	8cb2237d0679ca88db6464eac60da96345513964	\N	t
48	Cliente	clienteveic@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
49	Cliente	testecli@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
50	Cliente	teste12345@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
51	Cliente	teste12345678@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
52	Cliente	cliente0012@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	\N	t
89	Cliente	testeteste@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	2025-11-18 15:16:04.05452	t
90	Cliente	clitesteveic@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	2025-11-18 15:25:59.442103	t
91	Cliente	cliparateste@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	2025-11-18 15:48:53.908826	t
92	Cliente	testetelefone@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	2025-11-18 15:53:15.175453	t
93	Cliente	clicomveic@gmail.com	8cb2237d0679ca88db6464eac60da96345513964	2025-11-19 13:36:13.181885	t
\.


--
-- Data for Name: veiculos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.veiculos (codigo_veiculo, placa_veiculo, modelo, marca, cor, ano_fab, ano_mod, nome_usuario_cliente, contato_cliente, chassi, data_criacao) FROM stdin;
1	SDH7323	Onix	Chevrolet	Preto	2023	\N	\N	\N	\N	\N
4	DFJ8347	Fiesta	Ford	Vermelho	2001	\N	\N	\N	\N	\N
5	avk2345	Ka	Ford	Branco	2019	\N	\N	\N	\N	\N
7	abc7890	modelo	marca	cor ano	2025	\N	\N	\N	\N	\N
9	KLM	Onix	Chevrolet	Preto	2023	2024				\N
10	OPQ	Fox	VolksWagen	Prata	2014	2014				\N
11	DEF5432	Onix	Chevrolet	Vermelho	2023	2024	testeteste@gmail.com			\N
12	PQR7382	Virtus	Volkswagen	Preto	2024	2025	clitesteveic@gmail.com			\N
13	FAS3523	Onix	Chevrolet	Preto	2023	2023	testetelefone@gmail.com			\N
14	AJD7827	UNO MILLE EX	FIAT	Prata	2000	2000	clicomveic@gmail.com			\N
\.


--
-- Name: Clientes_codigo_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Clientes_codigo_cliente_seq"', 85, true);


--
-- Name: Funcionarios_codigo_funcionario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Funcionarios_codigo_funcionario_seq"', 38, true);


--
-- Name: orcamentos_codigo_orcamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orcamentos_codigo_orcamento_seq', 3, true);


--
-- Name: pedidos_codigo_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedidos_codigo_pedido_seq', 23, true);


--
-- Name: produtos_codigo_produto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produtos_codigo_produto_seq', 5, true);


--
-- Name: teste_logs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teste_logs_id_seq', 1, false);


--
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 94, true);


--
-- Name: veiculos_codigo_veiculo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.veiculos_codigo_veiculo_seq', 15, true);


--
-- Name: Clientes Clientes_email_cliente_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Clientes"
    ADD CONSTRAINT "Clientes_email_cliente_key" UNIQUE (email_cliente);


--
-- Name: Clientes Clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Clientes"
    ADD CONSTRAINT "Clientes_pkey" PRIMARY KEY (codigo_cliente);


--
-- Name: Funcionarios Funcionarios_cpf_funcionario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Funcionarios"
    ADD CONSTRAINT "Funcionarios_cpf_funcionario_key" UNIQUE (cpf_funcionario);


--
-- Name: Funcionarios Funcionarios_email_funcionario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Funcionarios"
    ADD CONSTRAINT "Funcionarios_email_funcionario_key" UNIQUE (email_funcionario);


--
-- Name: Funcionarios Funcionarios_nome_funcionario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Funcionarios"
    ADD CONSTRAINT "Funcionarios_nome_funcionario_key" UNIQUE (nome_funcionario);


--
-- Name: Funcionarios Funcionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Funcionarios"
    ADD CONSTRAINT "Funcionarios_pkey" PRIMARY KEY (codigo_funcionario);


--
-- Name: orcamentos orcamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orcamentos
    ADD CONSTRAINT orcamentos_pkey PRIMARY KEY (codigo_orcamento);


--
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (codigo_pedido);


--
-- Name: veiculos placa_veiculo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veiculos
    ADD CONSTRAINT placa_veiculo_unique UNIQUE (placa_veiculo);


--
-- Name: produtos produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (codigo_produto);


--
-- Name: usuarios usuarios_nome_usuario_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_nome_usuario_key UNIQUE (nome_usuario);


--
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- Name: veiculos veiculos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veiculos
    ADD CONSTRAINT veiculos_pkey PRIMARY KEY (codigo_veiculo);


--
-- Name: veiculos veiculos_placa_veiculo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.veiculos
    ADD CONSTRAINT veiculos_placa_veiculo_key UNIQUE (placa_veiculo);


--
-- Name: Clientes cliente_usuario_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER cliente_usuario_trigger AFTER INSERT ON public."Clientes" FOR EACH ROW EXECUTE FUNCTION public.insere_cliente_usuarios();


--
-- Name: Funcionarios funcionario_usuario_trigger; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER funcionario_usuario_trigger AFTER INSERT ON public."Funcionarios" FOR EACH ROW EXECUTE FUNCTION public.insere_funcionario_usuarios();


--
-- PostgreSQL database dump complete
--

