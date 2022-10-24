PGDMP                 
    	    z            sistema    13.8    13.8 &    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16574    sistema    DATABASE     f   CREATE DATABASE sistema WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE sistema;
                postgres    false            �            1259    16635    cliente    TABLE     �   CREATE TABLE public.cliente (
    idcliente integer NOT NULL,
    nombrecli character varying(50),
    email character varying(50),
    direccion character varying(1000),
    telefono bigint
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    16633    cliente_idcliente_seq    SEQUENCE     �   CREATE SEQUENCE public.cliente_idcliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cliente_idcliente_seq;
       public          postgres    false    210            �           0    0    cliente_idcliente_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cliente_idcliente_seq OWNED BY public.cliente.idcliente;
          public          postgres    false    209            �            1259    16593    compra    TABLE     �   CREATE TABLE public.compra (
    codigocompra integer NOT NULL,
    idcliente integer,
    idproductos integer,
    fecha character varying(50)
);
    DROP TABLE public.compra;
       public         heap    postgres    false            �            1259    16591    compra_codigocompra_seq    SEQUENCE     �   CREATE SEQUENCE public.compra_codigocompra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.compra_codigocompra_seq;
       public          postgres    false    201            �           0    0    compra_codigocompra_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.compra_codigocompra_seq OWNED BY public.compra.codigocompra;
          public          postgres    false    200            �            1259    16616 	   descuento    TABLE     �   CREATE TABLE public.descuento (
    codigocompra integer NOT NULL,
    producto character varying(50),
    cantidad integer,
    precio integer,
    descuento integer
);
    DROP TABLE public.descuento;
       public         heap    postgres    false            �            1259    16614    descuento_codigocompra_seq    SEQUENCE     �   CREATE SEQUENCE public.descuento_codigocompra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.descuento_codigocompra_seq;
       public          postgres    false    206            �           0    0    descuento_codigocompra_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.descuento_codigocompra_seq OWNED BY public.descuento.codigocompra;
          public          postgres    false    205            �            1259    16608    envios    TABLE     �   CREATE TABLE public.envios (
    direccion_facturacion character varying(1000),
    "compañia" character varying(50),
    fechaenvio character varying(50)
);
    DROP TABLE public.envios;
       public         heap    postgres    false            �            1259    16624    factura    TABLE     �   CREATE TABLE public.factura (
    codigocompra integer NOT NULL,
    nombrecli character varying(50),
    idcliente integer,
    direccion character varying(1000),
    telefono bigint,
    producto character varying(50),
    preciototal integer
);
    DROP TABLE public.factura;
       public         heap    postgres    false            �            1259    16622    factura_codigocompra_seq    SEQUENCE     �   CREATE SEQUENCE public.factura_codigocompra_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.factura_codigocompra_seq;
       public          postgres    false    208            �           0    0    factura_codigocompra_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.factura_codigocompra_seq OWNED BY public.factura.codigocompra;
          public          postgres    false    207            �            1259    16599    pagos    TABLE     �   CREATE TABLE public.pagos (
    numerocuenta integer,
    idcliente integer,
    nombre character varying(50),
    pago integer,
    idtransaccion integer
);
    DROP TABLE public.pagos;
       public         heap    postgres    false            �            1259    16602 	   productos    TABLE     �   CREATE TABLE public.productos (
    idprod integer,
    nombre character varying(50),
    cantidastock integer,
    precio integer,
    descripcion character varying(2000)
);
    DROP TABLE public.productos;
       public         heap    postgres    false            G           2604    16638    cliente idcliente    DEFAULT     v   ALTER TABLE ONLY public.cliente ALTER COLUMN idcliente SET DEFAULT nextval('public.cliente_idcliente_seq'::regclass);
 @   ALTER TABLE public.cliente ALTER COLUMN idcliente DROP DEFAULT;
       public          postgres    false    210    209    210            D           2604    16596    compra codigocompra    DEFAULT     z   ALTER TABLE ONLY public.compra ALTER COLUMN codigocompra SET DEFAULT nextval('public.compra_codigocompra_seq'::regclass);
 B   ALTER TABLE public.compra ALTER COLUMN codigocompra DROP DEFAULT;
       public          postgres    false    200    201    201            E           2604    16619    descuento codigocompra    DEFAULT     �   ALTER TABLE ONLY public.descuento ALTER COLUMN codigocompra SET DEFAULT nextval('public.descuento_codigocompra_seq'::regclass);
 E   ALTER TABLE public.descuento ALTER COLUMN codigocompra DROP DEFAULT;
       public          postgres    false    205    206    206            F           2604    16627    factura codigocompra    DEFAULT     |   ALTER TABLE ONLY public.factura ALTER COLUMN codigocompra SET DEFAULT nextval('public.factura_codigocompra_seq'::regclass);
 C   ALTER TABLE public.factura ALTER COLUMN codigocompra DROP DEFAULT;
       public          postgres    false    207    208    208            �          0    16635    cliente 
   TABLE DATA           S   COPY public.cliente (idcliente, nombrecli, email, direccion, telefono) FROM stdin;
    public          postgres    false    210   �)       �          0    16593    compra 
   TABLE DATA           M   COPY public.compra (codigocompra, idcliente, idproductos, fecha) FROM stdin;
    public          postgres    false    201   �)       �          0    16616 	   descuento 
   TABLE DATA           X   COPY public.descuento (codigocompra, producto, cantidad, precio, descuento) FROM stdin;
    public          postgres    false    206   �)       �          0    16608    envios 
   TABLE DATA           P   COPY public.envios (direccion_facturacion, "compañia", fechaenvio) FROM stdin;
    public          postgres    false    204   *       �          0    16624    factura 
   TABLE DATA           q   COPY public.factura (codigocompra, nombrecli, idcliente, direccion, telefono, producto, preciototal) FROM stdin;
    public          postgres    false    208   .*       �          0    16599    pagos 
   TABLE DATA           U   COPY public.pagos (numerocuenta, idcliente, nombre, pago, idtransaccion) FROM stdin;
    public          postgres    false    202   K*       �          0    16602 	   productos 
   TABLE DATA           V   COPY public.productos (idprod, nombre, cantidastock, precio, descripcion) FROM stdin;
    public          postgres    false    203   h*       �           0    0    cliente_idcliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_idcliente_seq', 1, false);
          public          postgres    false    209            �           0    0    compra_codigocompra_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.compra_codigocompra_seq', 1, false);
          public          postgres    false    200            �           0    0    descuento_codigocompra_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.descuento_codigocompra_seq', 1, false);
          public          postgres    false    205            �           0    0    factura_codigocompra_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.factura_codigocompra_seq', 1, false);
          public          postgres    false    207            O           2606    16643    cliente cliente_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcliente);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    210            I           2606    16598    compra compra_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (codigocompra);
 <   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_pkey;
       public            postgres    false    201            K           2606    16621    descuento descuento_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.descuento
    ADD CONSTRAINT descuento_pkey PRIMARY KEY (codigocompra);
 B   ALTER TABLE ONLY public.descuento DROP CONSTRAINT descuento_pkey;
       public            postgres    false    206            M           2606    16632    factura factura_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (codigocompra);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            postgres    false    208            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     