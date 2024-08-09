PGDMP     :    6                |            easylab    15.7    15.7 �                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    16406    easylab    DATABASE     �   CREATE DATABASE easylab WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE easylab;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            $           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4                       1259    16679    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(191) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false    4                       1259    16678    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    259    4            %           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    258            �            1259    16461    m_metode_pembayaran    TABLE     @  CREATE TABLE public.m_metode_pembayaran (
    id_met_pembayaran integer NOT NULL,
    nama_met_pembayaran character varying(100),
    nomor_met_pembayaran character varying(50),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 '   DROP TABLE public.m_metode_pembayaran;
       public         heap    postgres    false    4            �            1259    16460 )   m_metode_pembayaran_id_met_pembayaran_seq    SEQUENCE     �   CREATE SEQUENCE public.m_metode_pembayaran_id_met_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.m_metode_pembayaran_id_met_pembayaran_seq;
       public          postgres    false    227    4            &           0    0 )   m_metode_pembayaran_id_met_pembayaran_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.m_metode_pembayaran_id_met_pembayaran_seq OWNED BY public.m_metode_pembayaran.id_met_pembayaran;
          public          postgres    false    226            �            1259    16484    mbhp    TABLE     2  CREATE TABLE public.mbhp (
    id_bhp integer NOT NULL,
    nama_bhp character varying(255) NOT NULL,
    deskripsi_bhp text,
    harga_bhp numeric(10,2) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mbhp;
       public         heap    postgres    false    4            �            1259    16483    mbhp_id_bhp_seq    SEQUENCE     �   CREATE SEQUENCE public.mbhp_id_bhp_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.mbhp_id_bhp_seq;
       public          postgres    false    233    4            '           0    0    mbhp_id_bhp_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.mbhp_id_bhp_seq OWNED BY public.mbhp.id_bhp;
          public          postgres    false    232            �            1259    16517 	   mdiagnosa    TABLE     0  CREATE TABLE public.mdiagnosa (
    id_diagnosa integer NOT NULL,
    kd_icd10 character varying(10) NOT NULL,
    nama_diagnosa character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mdiagnosa;
       public         heap    postgres    false    4            �            1259    16516    mdiagnosa_id_diagnosa_seq    SEQUENCE     �   CREATE SEQUENCE public.mdiagnosa_id_diagnosa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.mdiagnosa_id_diagnosa_seq;
       public          postgres    false    239    4            (           0    0    mdiagnosa_id_diagnosa_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.mdiagnosa_id_diagnosa_seq OWNED BY public.mdiagnosa.id_diagnosa;
          public          postgres    false    238            �            1259    16440 
   mequipment    TABLE     �  CREATE TABLE public.mequipment (
    id_alat integer NOT NULL,
    merk_alat character varying(100),
    series_alat character varying(100),
    nama_alat character varying(100),
    jenis_koneksi_alat character varying(50),
    tipe_host_alat character varying(50),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mequipment;
       public         heap    postgres    false    4            �            1259    16439    mequipment_id_alat_seq    SEQUENCE     �   CREATE SEQUENCE public.mequipment_id_alat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.mequipment_id_alat_seq;
       public          postgres    false    221    4            )           0    0    mequipment_id_alat_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.mequipment_id_alat_seq OWNED BY public.mequipment.id_alat;
          public          postgres    false    220            �            1259    16615 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(191) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false    4            �            1259    16614    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    4    254            *           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    253            �            1259    16493    mjenis    TABLE     �   CREATE TABLE public.mjenis (
    id_jenis integer NOT NULL,
    nama_jenis character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mjenis;
       public         heap    postgres    false    4            �            1259    16492    mjenis_id_jenis_seq    SEQUENCE     �   CREATE SEQUENCE public.mjenis_id_jenis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.mjenis_id_jenis_seq;
       public          postgres    false    235    4            +           0    0    mjenis_id_jenis_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.mjenis_id_jenis_seq OWNED BY public.mjenis.id_jenis;
          public          postgres    false    234            �            1259    16468    mlokasi    TABLE     �   CREATE TABLE public.mlokasi (
    id_lokasi integer NOT NULL,
    nama_lokasi character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mlokasi;
       public         heap    postgres    false    4            �            1259    16467    mlokasi_id_lokasi_seq    SEQUENCE     �   CREATE SEQUENCE public.mlokasi_id_lokasi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.mlokasi_id_lokasi_seq;
       public          postgres    false    4    229            ,           0    0    mlokasi_id_lokasi_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.mlokasi_id_lokasi_seq OWNED BY public.mlokasi.id_lokasi;
          public          postgres    false    228            �            1259    16524    mmetode_pemeriksaan    TABLE       CREATE TABLE public.mmetode_pemeriksaan (
    id_mtd_pemeriksaan integer NOT NULL,
    metode_pemeriksaan character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 '   DROP TABLE public.mmetode_pemeriksaan;
       public         heap    postgres    false    4            �            1259    16523 *   mmetode_pemeriksaan_id_mtd_pemeriksaan_seq    SEQUENCE     �   CREATE SEQUENCE public.mmetode_pemeriksaan_id_mtd_pemeriksaan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.mmetode_pemeriksaan_id_mtd_pemeriksaan_seq;
       public          postgres    false    4    241            -           0    0 *   mmetode_pemeriksaan_id_mtd_pemeriksaan_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.mmetode_pemeriksaan_id_mtd_pemeriksaan_seq OWNED BY public.mmetode_pemeriksaan.id_mtd_pemeriksaan;
          public          postgres    false    240            �            1259    16417    mpasien    TABLE     <  CREATE TABLE public.mpasien (
    id_pasien integer NOT NULL,
    nik character varying(50),
    sim character varying(50),
    nama character varying(100),
    tempat_lahir character varying(100),
    tanggal_lahir date,
    usia integer,
    jenis_kelamin character varying(10),
    agama character varying(50),
    pekerjaan character varying(100),
    status_perkawinan character varying(50),
    alamat_lengkap text,
    alamat_negara character varying(100),
    alamat_provinsi character varying(100),
    alamat_kabupaten_kota character varying(100),
    alamat_desa character varying(100),
    status_warga_negara character varying(50),
    golongan_darah character varying(3),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mpasien;
       public         heap    postgres    false    4            �            1259    16416    mpasien_id_pasien_seq    SEQUENCE     �   CREATE SEQUENCE public.mpasien_id_pasien_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.mpasien_id_pasien_seq;
       public          postgres    false    4    215            .           0    0    mpasien_id_pasien_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.mpasien_id_pasien_seq OWNED BY public.mpasien.id_pasien;
          public          postgres    false    214            �            1259    16433    mpegawai    TABLE     �  CREATE TABLE public.mpegawai (
    id_pegawai integer NOT NULL,
    nip_pegawai character varying(50),
    nama_pegawai character varying(100),
    jabatan character varying(100),
    role_akses character varying(50),
    password character varying(255),
    remember_token character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mpegawai;
       public         heap    postgres    false    4            �            1259    16432    mpegawai_id_pegawai_seq    SEQUENCE     �   CREATE SEQUENCE public.mpegawai_id_pegawai_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.mpegawai_id_pegawai_seq;
       public          postgres    false    219    4            /           0    0    mpegawai_id_pegawai_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.mpegawai_id_pegawai_seq OWNED BY public.mpegawai.id_pegawai;
          public          postgres    false    218            �            1259    16509    msatuan    TABLE     �   CREATE TABLE public.msatuan (
    id_satuan integer NOT NULL,
    nama_satuan character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.msatuan;
       public         heap    postgres    false    4            �            1259    16508    msatuan_id_satuan_seq    SEQUENCE     �   CREATE SEQUENCE public.msatuan_id_satuan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.msatuan_id_satuan_seq;
       public          postgres    false    237    4            0           0    0    msatuan_id_satuan_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.msatuan_id_satuan_seq OWNED BY public.msatuan.id_satuan;
          public          postgres    false    236            �            1259    16426 	   mspesimen    TABLE     ^  CREATE TABLE public.mspesimen (
    id_spesimen integer NOT NULL,
    jenis_spesimen character varying(100),
    nama_spesimen_display character varying(100),
    nama_spesimen_klinis character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mspesimen;
       public         heap    postgres    false    4            �            1259    16425    mspesimen_id_spesimen_seq    SEQUENCE     �   CREATE SEQUENCE public.mspesimen_id_spesimen_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.mspesimen_id_spesimen_seq;
       public          postgres    false    4    217            1           0    0    mspesimen_id_spesimen_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.mspesimen_id_spesimen_seq OWNED BY public.mspesimen.id_spesimen;
          public          postgres    false    216            �            1259    16447    msub_lab    TABLE     �   CREATE TABLE public.msub_lab (
    id_sub_lab integer NOT NULL,
    nama_sub_lab character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.msub_lab;
       public         heap    postgres    false    4            �            1259    16446    msub_lab_id_sub_lab_seq    SEQUENCE     �   CREATE SEQUENCE public.msub_lab_id_sub_lab_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.msub_lab_id_sub_lab_seq;
       public          postgres    false    223    4            2           0    0    msub_lab_id_sub_lab_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.msub_lab_id_sub_lab_seq OWNED BY public.msub_lab.id_sub_lab;
          public          postgres    false    222            �            1259    16475 	   msupplier    TABLE     H  CREATE TABLE public.msupplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(255) NOT NULL,
    notelp_supplier character varying(15),
    alamat_supplier text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.msupplier;
       public         heap    postgres    false    4            �            1259    16474    msupplier_id_supplier_seq    SEQUENCE     �   CREATE SEQUENCE public.msupplier_id_supplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.msupplier_id_supplier_seq;
       public          postgres    false    231    4            3           0    0    msupplier_id_supplier_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.msupplier_id_supplier_seq OWNED BY public.msupplier.id_supplier;
          public          postgres    false    230            �            1259    16551    mtformulasi    TABLE       CREATE TABLE public.mtformulasi (
    id_formula integer,
    formula text,
    parameter text,
    input_parameter text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mtformulasi;
       public         heap    postgres    false    4            �            1259    16532 	   mtid_test    TABLE     z  CREATE TABLE public.mtid_test (
    id_alat integer NOT NULL,
    id_test integer NOT NULL,
    id_mtd_pemeriksaan integer NOT NULL,
    metode_pemeriksaan character varying(255) NOT NULL,
    nama_test character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mtid_test;
       public         heap    postgres    false    4            �            1259    16531    mtid_test_id_alat_seq    SEQUENCE     �   CREATE SEQUENCE public.mtid_test_id_alat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.mtid_test_id_alat_seq;
       public          postgres    false    4    243            4           0    0    mtid_test_id_alat_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.mtid_test_id_alat_seq OWNED BY public.mtid_test.id_alat;
          public          postgres    false    242            �            1259    16546    mtid_test_mapp    TABLE     F  CREATE TABLE public.mtid_test_mapp (
    id_alat integer,
    id_test integer,
    id_tindakan integer,
    nama_test character varying(255),
    nama_tindakan character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 "   DROP TABLE public.mtid_test_mapp;
       public         heap    postgres    false    4            �            1259    16454 	   mtindakan    TABLE     ?  CREATE TABLE public.mtindakan (
    id_tindakan integer NOT NULL,
    kd_icd9 character varying(10),
    nama_tindakan character varying(100),
    harga_tindakan numeric(10,2),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mtindakan;
       public         heap    postgres    false    4            �            1259    16453    mtindakan_id_tindakan_seq    SEQUENCE     �   CREATE SEQUENCE public.mtindakan_id_tindakan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.mtindakan_id_tindakan_seq;
       public          postgres    false    4    225            5           0    0    mtindakan_id_tindakan_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.mtindakan_id_tindakan_seq OWNED BY public.mtindakan.id_tindakan;
          public          postgres    false    224            �            1259    16575    mtinventory    TABLE     I  CREATE TABLE public.mtinventory (
    id_inventory integer NOT NULL,
    id_bhp integer,
    id_satuan integer,
    id_jenis integer,
    id_supplier integer,
    stok_inventory numeric,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mtinventory;
       public         heap    postgres    false    4            �            1259    16574    mtinventory_id_inventory_seq    SEQUENCE     �   CREATE SEQUENCE public.mtinventory_id_inventory_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.mtinventory_id_inventory_seq;
       public          postgres    false    4    250            6           0    0    mtinventory_id_inventory_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.mtinventory_id_inventory_seq OWNED BY public.mtinventory.id_inventory;
          public          postgres    false    249            �            1259    16584 
   mtkonversi    TABLE     �  CREATE TABLE public.mtkonversi (
    id_alat integer NOT NULL,
    id_test integer,
    jenis_konversi text,
    hasil_raw numeric,
    hasil_konversi numeric,
    pembulatan numeric,
    perkalian numeric,
    nilai_pengurang numeric,
    penjumlahan numeric,
    nilai_penjumlahan numeric,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mtkonversi;
       public         heap    postgres    false    4            �            1259    16583    mtkonversi_id_alat_seq    SEQUENCE     �   CREATE SEQUENCE public.mtkonversi_id_alat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.mtkonversi_id_alat_seq;
       public          postgres    false    4    252            7           0    0    mtkonversi_id_alat_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.mtkonversi_id_alat_seq OWNED BY public.mtkonversi.id_alat;
          public          postgres    false    251            �            1259    16540    mtqc_pabrikan    TABLE     9  CREATE TABLE public.mtqc_pabrikan (
    id_alat integer NOT NULL,
    id_test integer NOT NULL,
    no_lot character varying(50) NOT NULL,
    tgl_awal_buka_ed date,
    tgl_akhir_buka_ed date,
    nama_lot character varying(255),
    level_lot character varying(50),
    bts_bawah numeric(10,2),
    bts_atas numeric(10,2),
    mean numeric(10,2),
    bts_tea numeric(10,2),
    bts_cv numeric(10,2),
    bts_d numeric(10,2),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.mtqc_pabrikan;
       public         heap    postgres    false    4            �            1259    16566 
   mttindakan    TABLE     '  CREATE TABLE public.mttindakan (
    id_tindakan integer NOT NULL,
    nama_tindakan character varying(255),
    id_jenis_lab integer,
    harga_subyek numeric,
    nama_subyek_lab character varying(255),
    id_pemeriksaan integer,
    nama_spesimen character varying(255),
    spesimen_barcode character varying(255),
    jenis_rujukan character varying(255),
    rentang_bwh_umur integer,
    rentang_atas_umur integer,
    flag_kritis boolean,
    nilai_kualitatif numeric,
    rentang_bwh_kritis_1 numeric,
    rentang_atas_kritis_1 numeric,
    rentang_bwh_kritis_2 numeric,
    rentang_atas_kritis_2 numeric,
    flag_desimal boolean,
    id_pasien integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.mttindakan;
       public         heap    postgres    false    4            �            1259    16565    mttindakan_id_tindakan_seq    SEQUENCE     �   CREATE SEQUENCE public.mttindakan_id_tindakan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.mttindakan_id_tindakan_seq;
       public          postgres    false    4    248            8           0    0    mttindakan_id_tindakan_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.mttindakan_id_tindakan_seq OWNED BY public.mttindakan.id_tindakan;
          public          postgres    false    247                       1259    16673    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(191) NOT NULL,
    token character varying(191) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false    4                       1259    16691    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(191) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(191) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false    4                       1259    16690    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    261    4            9           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    260                       1259    16703    products    TABLE     �   CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    detail text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.products;
       public         heap    postgres    false    4                       1259    16702    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    263    4            :           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    262                        1259    16663    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    email character varying(191) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(191) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    16662    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    4    256            ;           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    255            !           2604    16682    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    258    259    259            �           2604    16464 %   m_metode_pembayaran id_met_pembayaran    DEFAULT     �   ALTER TABLE ONLY public.m_metode_pembayaran ALTER COLUMN id_met_pembayaran SET DEFAULT nextval('public.m_metode_pembayaran_id_met_pembayaran_seq'::regclass);
 T   ALTER TABLE public.m_metode_pembayaran ALTER COLUMN id_met_pembayaran DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    16487    mbhp id_bhp    DEFAULT     j   ALTER TABLE ONLY public.mbhp ALTER COLUMN id_bhp SET DEFAULT nextval('public.mbhp_id_bhp_seq'::regclass);
 :   ALTER TABLE public.mbhp ALTER COLUMN id_bhp DROP DEFAULT;
       public          postgres    false    233    232    233                       2604    16520    mdiagnosa id_diagnosa    DEFAULT     ~   ALTER TABLE ONLY public.mdiagnosa ALTER COLUMN id_diagnosa SET DEFAULT nextval('public.mdiagnosa_id_diagnosa_seq'::regclass);
 D   ALTER TABLE public.mdiagnosa ALTER COLUMN id_diagnosa DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    16443    mequipment id_alat    DEFAULT     x   ALTER TABLE ONLY public.mequipment ALTER COLUMN id_alat SET DEFAULT nextval('public.mequipment_id_alat_seq'::regclass);
 A   ALTER TABLE public.mequipment ALTER COLUMN id_alat DROP DEFAULT;
       public          postgres    false    221    220    221                       2604    16618    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254                       2604    16496    mjenis id_jenis    DEFAULT     r   ALTER TABLE ONLY public.mjenis ALTER COLUMN id_jenis SET DEFAULT nextval('public.mjenis_id_jenis_seq'::regclass);
 >   ALTER TABLE public.mjenis ALTER COLUMN id_jenis DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    16471    mlokasi id_lokasi    DEFAULT     v   ALTER TABLE ONLY public.mlokasi ALTER COLUMN id_lokasi SET DEFAULT nextval('public.mlokasi_id_lokasi_seq'::regclass);
 @   ALTER TABLE public.mlokasi ALTER COLUMN id_lokasi DROP DEFAULT;
       public          postgres    false    228    229    229            
           2604    16527 &   mmetode_pemeriksaan id_mtd_pemeriksaan    DEFAULT     �   ALTER TABLE ONLY public.mmetode_pemeriksaan ALTER COLUMN id_mtd_pemeriksaan SET DEFAULT nextval('public.mmetode_pemeriksaan_id_mtd_pemeriksaan_seq'::regclass);
 U   ALTER TABLE public.mmetode_pemeriksaan ALTER COLUMN id_mtd_pemeriksaan DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    16420    mpasien id_pasien    DEFAULT     v   ALTER TABLE ONLY public.mpasien ALTER COLUMN id_pasien SET DEFAULT nextval('public.mpasien_id_pasien_seq'::regclass);
 @   ALTER TABLE public.mpasien ALTER COLUMN id_pasien DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16436    mpegawai id_pegawai    DEFAULT     z   ALTER TABLE ONLY public.mpegawai ALTER COLUMN id_pegawai SET DEFAULT nextval('public.mpegawai_id_pegawai_seq'::regclass);
 B   ALTER TABLE public.mpegawai ALTER COLUMN id_pegawai DROP DEFAULT;
       public          postgres    false    218    219    219                       2604    16512    msatuan id_satuan    DEFAULT     v   ALTER TABLE ONLY public.msatuan ALTER COLUMN id_satuan SET DEFAULT nextval('public.msatuan_id_satuan_seq'::regclass);
 @   ALTER TABLE public.msatuan ALTER COLUMN id_satuan DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    16429    mspesimen id_spesimen    DEFAULT     ~   ALTER TABLE ONLY public.mspesimen ALTER COLUMN id_spesimen SET DEFAULT nextval('public.mspesimen_id_spesimen_seq'::regclass);
 D   ALTER TABLE public.mspesimen ALTER COLUMN id_spesimen DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16450    msub_lab id_sub_lab    DEFAULT     z   ALTER TABLE ONLY public.msub_lab ALTER COLUMN id_sub_lab SET DEFAULT nextval('public.msub_lab_id_sub_lab_seq'::regclass);
 B   ALTER TABLE public.msub_lab ALTER COLUMN id_sub_lab DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16478    msupplier id_supplier    DEFAULT     ~   ALTER TABLE ONLY public.msupplier ALTER COLUMN id_supplier SET DEFAULT nextval('public.msupplier_id_supplier_seq'::regclass);
 D   ALTER TABLE public.msupplier ALTER COLUMN id_supplier DROP DEFAULT;
       public          postgres    false    230    231    231                       2604    16535    mtid_test id_alat    DEFAULT     v   ALTER TABLE ONLY public.mtid_test ALTER COLUMN id_alat SET DEFAULT nextval('public.mtid_test_id_alat_seq'::regclass);
 @   ALTER TABLE public.mtid_test ALTER COLUMN id_alat DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    16457    mtindakan id_tindakan    DEFAULT     ~   ALTER TABLE ONLY public.mtindakan ALTER COLUMN id_tindakan SET DEFAULT nextval('public.mtindakan_id_tindakan_seq'::regclass);
 D   ALTER TABLE public.mtindakan ALTER COLUMN id_tindakan DROP DEFAULT;
       public          postgres    false    225    224    225                       2604    16578    mtinventory id_inventory    DEFAULT     �   ALTER TABLE ONLY public.mtinventory ALTER COLUMN id_inventory SET DEFAULT nextval('public.mtinventory_id_inventory_seq'::regclass);
 G   ALTER TABLE public.mtinventory ALTER COLUMN id_inventory DROP DEFAULT;
       public          postgres    false    249    250    250                       2604    16587    mtkonversi id_alat    DEFAULT     x   ALTER TABLE ONLY public.mtkonversi ALTER COLUMN id_alat SET DEFAULT nextval('public.mtkonversi_id_alat_seq'::regclass);
 A   ALTER TABLE public.mtkonversi ALTER COLUMN id_alat DROP DEFAULT;
       public          postgres    false    251    252    252                       2604    16569    mttindakan id_tindakan    DEFAULT     �   ALTER TABLE ONLY public.mttindakan ALTER COLUMN id_tindakan SET DEFAULT nextval('public.mttindakan_id_tindakan_seq'::regclass);
 E   ALTER TABLE public.mttindakan ALTER COLUMN id_tindakan DROP DEFAULT;
       public          postgres    false    247    248    248            #           2604    16694    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260    261            $           2604    16706    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    262    263                        2604    16666    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    256    256                      0    16679    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    259   X�       �          0    16461    m_metode_pembayaran 
   TABLE DATA           �   COPY public.m_metode_pembayaran (id_met_pembayaran, nama_met_pembayaran, nomor_met_pembayaran, created_at, updated_at) FROM stdin;
    public          postgres    false    227   u�       �          0    16484    mbhp 
   TABLE DATA           b   COPY public.mbhp (id_bhp, nama_bhp, deskripsi_bhp, harga_bhp, created_at, updated_at) FROM stdin;
    public          postgres    false    233   ��                 0    16517 	   mdiagnosa 
   TABLE DATA           a   COPY public.mdiagnosa (id_diagnosa, kd_icd10, nama_diagnosa, created_at, updated_at) FROM stdin;
    public          postgres    false    239   I�       �          0    16440 
   mequipment 
   TABLE DATA           �   COPY public.mequipment (id_alat, merk_alat, series_alat, nama_alat, jenis_koneksi_alat, tipe_host_alat, created_at, updated_at) FROM stdin;
    public          postgres    false    221   ��                 0    16615 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    254   a�                 0    16493    mjenis 
   TABLE DATA           N   COPY public.mjenis (id_jenis, nama_jenis, created_at, updated_at) FROM stdin;
    public          postgres    false    235   ��       �          0    16468    mlokasi 
   TABLE DATA           Q   COPY public.mlokasi (id_lokasi, nama_lokasi, created_at, updated_at) FROM stdin;
    public          postgres    false    229   I�                 0    16524    mmetode_pemeriksaan 
   TABLE DATA           m   COPY public.mmetode_pemeriksaan (id_mtd_pemeriksaan, metode_pemeriksaan, created_at, updated_at) FROM stdin;
    public          postgres    false    241   ��       �          0    16417    mpasien 
   TABLE DATA           $  COPY public.mpasien (id_pasien, nik, sim, nama, tempat_lahir, tanggal_lahir, usia, jenis_kelamin, agama, pekerjaan, status_perkawinan, alamat_lengkap, alamat_negara, alamat_provinsi, alamat_kabupaten_kota, alamat_desa, status_warga_negara, golongan_darah, created_at, updated_at) FROM stdin;
    public          postgres    false    215   ��       �          0    16433    mpegawai 
   TABLE DATA           �   COPY public.mpegawai (id_pegawai, nip_pegawai, nama_pegawai, jabatan, role_akses, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    219   ��                 0    16509    msatuan 
   TABLE DATA           Q   COPY public.msatuan (id_satuan, nama_satuan, created_at, updated_at) FROM stdin;
    public          postgres    false    237   r�       �          0    16426 	   mspesimen 
   TABLE DATA           �   COPY public.mspesimen (id_spesimen, jenis_spesimen, nama_spesimen_display, nama_spesimen_klinis, created_at, updated_at) FROM stdin;
    public          postgres    false    217   ��       �          0    16447    msub_lab 
   TABLE DATA           T   COPY public.msub_lab (id_sub_lab, nama_sub_lab, created_at, updated_at) FROM stdin;
    public          postgres    false    223   C�       �          0    16475 	   msupplier 
   TABLE DATA           y   COPY public.msupplier (id_supplier, nama_supplier, notelp_supplier, alamat_supplier, created_at, updated_at) FROM stdin;
    public          postgres    false    231   ��                 0    16551    mtformulasi 
   TABLE DATA           n   COPY public.mtformulasi (id_formula, formula, parameter, input_parameter, created_at, updated_at) FROM stdin;
    public          postgres    false    246    �       	          0    16532 	   mtid_test 
   TABLE DATA           �   COPY public.mtid_test (id_alat, id_test, id_mtd_pemeriksaan, metode_pemeriksaan, nama_test, created_at, updated_at) FROM stdin;
    public          postgres    false    243   ��                 0    16546    mtid_test_mapp 
   TABLE DATA           y   COPY public.mtid_test_mapp (id_alat, id_test, id_tindakan, nama_test, nama_tindakan, created_at, updated_at) FROM stdin;
    public          postgres    false    245    �       �          0    16454 	   mtindakan 
   TABLE DATA           p   COPY public.mtindakan (id_tindakan, kd_icd9, nama_tindakan, harga_tindakan, created_at, updated_at) FROM stdin;
    public          postgres    false    225   r�                 0    16575    mtinventory 
   TABLE DATA           �   COPY public.mtinventory (id_inventory, id_bhp, id_satuan, id_jenis, id_supplier, stok_inventory, created_at, updated_at) FROM stdin;
    public          postgres    false    250   ��                 0    16584 
   mtkonversi 
   TABLE DATA           �   COPY public.mtkonversi (id_alat, id_test, jenis_konversi, hasil_raw, hasil_konversi, pembulatan, perkalian, nilai_pengurang, penjumlahan, nilai_penjumlahan, created_at, updated_at) FROM stdin;
    public          postgres    false    252   /�       
          0    16540    mtqc_pabrikan 
   TABLE DATA           �   COPY public.mtqc_pabrikan (id_alat, id_test, no_lot, tgl_awal_buka_ed, tgl_akhir_buka_ed, nama_lot, level_lot, bts_bawah, bts_atas, mean, bts_tea, bts_cv, bts_d, created_at, updated_at) FROM stdin;
    public          postgres    false    244   ��                 0    16566 
   mttindakan 
   TABLE DATA           |  COPY public.mttindakan (id_tindakan, nama_tindakan, id_jenis_lab, harga_subyek, nama_subyek_lab, id_pemeriksaan, nama_spesimen, spesimen_barcode, jenis_rujukan, rentang_bwh_umur, rentang_atas_umur, flag_kritis, nilai_kualitatif, rentang_bwh_kritis_1, rentang_atas_kritis_1, rentang_bwh_kritis_2, rentang_atas_kritis_2, flag_desimal, id_pasien, created_at, updated_at) FROM stdin;
    public          postgres    false    248   c�                 0    16673    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          postgres    false    257   ]�                 0    16691    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    261   z�                 0    16703    products 
   TABLE DATA           L   COPY public.products (id, name, detail, created_at, updated_at) FROM stdin;
    public          postgres    false    263   ��                 0    16663    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    256   �       <           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    258            =           0    0 )   m_metode_pembayaran_id_met_pembayaran_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.m_metode_pembayaran_id_met_pembayaran_seq', 3, true);
          public          postgres    false    226            >           0    0    mbhp_id_bhp_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.mbhp_id_bhp_seq', 3, true);
          public          postgres    false    232            ?           0    0    mdiagnosa_id_diagnosa_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.mdiagnosa_id_diagnosa_seq', 3, true);
          public          postgres    false    238            @           0    0    mequipment_id_alat_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.mequipment_id_alat_seq', 3, true);
          public          postgres    false    220            A           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 9, true);
          public          postgres    false    253            B           0    0    mjenis_id_jenis_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.mjenis_id_jenis_seq', 3, true);
          public          postgres    false    234            C           0    0    mlokasi_id_lokasi_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.mlokasi_id_lokasi_seq', 3, true);
          public          postgres    false    228            D           0    0 *   mmetode_pemeriksaan_id_mtd_pemeriksaan_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.mmetode_pemeriksaan_id_mtd_pemeriksaan_seq', 3, true);
          public          postgres    false    240            E           0    0    mpasien_id_pasien_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.mpasien_id_pasien_seq', 4, true);
          public          postgres    false    214            F           0    0    mpegawai_id_pegawai_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.mpegawai_id_pegawai_seq', 3, true);
          public          postgres    false    218            G           0    0    msatuan_id_satuan_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.msatuan_id_satuan_seq', 3, true);
          public          postgres    false    236            H           0    0    mspesimen_id_spesimen_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.mspesimen_id_spesimen_seq', 3, true);
          public          postgres    false    216            I           0    0    msub_lab_id_sub_lab_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.msub_lab_id_sub_lab_seq', 3, true);
          public          postgres    false    222            J           0    0    msupplier_id_supplier_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.msupplier_id_supplier_seq', 3, true);
          public          postgres    false    230            K           0    0    mtid_test_id_alat_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.mtid_test_id_alat_seq', 3, true);
          public          postgres    false    242            L           0    0    mtindakan_id_tindakan_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.mtindakan_id_tindakan_seq', 3, true);
          public          postgres    false    224            M           0    0    mtinventory_id_inventory_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.mtinventory_id_inventory_seq', 3, true);
          public          postgres    false    249            N           0    0    mtkonversi_id_alat_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.mtkonversi_id_alat_seq', 3, true);
          public          postgres    false    251            O           0    0    mttindakan_id_tindakan_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.mttindakan_id_tindakan_seq', 3, true);
          public          postgres    false    247            P           0    0    personal_access_tokens_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 8, true);
          public          postgres    false    260            Q           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 1, false);
          public          postgres    false    262            R           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    255            T           2606    16687    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    259            V           2606    16689 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    259            2           2606    16466 ,   m_metode_pembayaran m_metode_pembayaran_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.m_metode_pembayaran
    ADD CONSTRAINT m_metode_pembayaran_pkey PRIMARY KEY (id_met_pembayaran);
 V   ALTER TABLE ONLY public.m_metode_pembayaran DROP CONSTRAINT m_metode_pembayaran_pkey;
       public            postgres    false    227            8           2606    16491    mbhp mbhp_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.mbhp
    ADD CONSTRAINT mbhp_pkey PRIMARY KEY (id_bhp);
 8   ALTER TABLE ONLY public.mbhp DROP CONSTRAINT mbhp_pkey;
       public            postgres    false    233            >           2606    16522    mdiagnosa mdiagnosa_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.mdiagnosa
    ADD CONSTRAINT mdiagnosa_pkey PRIMARY KEY (id_diagnosa);
 B   ALTER TABLE ONLY public.mdiagnosa DROP CONSTRAINT mdiagnosa_pkey;
       public            postgres    false    239            ,           2606    16445    mequipment mequipment_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.mequipment
    ADD CONSTRAINT mequipment_pkey PRIMARY KEY (id_alat);
 D   ALTER TABLE ONLY public.mequipment DROP CONSTRAINT mequipment_pkey;
       public            postgres    false    221            L           2606    16620    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    254            :           2606    16498    mjenis mjenis_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.mjenis
    ADD CONSTRAINT mjenis_pkey PRIMARY KEY (id_jenis);
 <   ALTER TABLE ONLY public.mjenis DROP CONSTRAINT mjenis_pkey;
       public            postgres    false    235            4           2606    16473    mlokasi mlokasi_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.mlokasi
    ADD CONSTRAINT mlokasi_pkey PRIMARY KEY (id_lokasi);
 >   ALTER TABLE ONLY public.mlokasi DROP CONSTRAINT mlokasi_pkey;
       public            postgres    false    229            @           2606    16529 ,   mmetode_pemeriksaan mmetode_pemeriksaan_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.mmetode_pemeriksaan
    ADD CONSTRAINT mmetode_pemeriksaan_pkey PRIMARY KEY (id_mtd_pemeriksaan);
 V   ALTER TABLE ONLY public.mmetode_pemeriksaan DROP CONSTRAINT mmetode_pemeriksaan_pkey;
       public            postgres    false    241            &           2606    16424    mpasien mpasien_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.mpasien
    ADD CONSTRAINT mpasien_pkey PRIMARY KEY (id_pasien);
 >   ALTER TABLE ONLY public.mpasien DROP CONSTRAINT mpasien_pkey;
       public            postgres    false    215            *           2606    16438    mpegawai mpegawai_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpegawai
    ADD CONSTRAINT mpegawai_pkey PRIMARY KEY (id_pegawai);
 @   ALTER TABLE ONLY public.mpegawai DROP CONSTRAINT mpegawai_pkey;
       public            postgres    false    219            <           2606    16514    msatuan msatuan_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.msatuan
    ADD CONSTRAINT msatuan_pkey PRIMARY KEY (id_satuan);
 >   ALTER TABLE ONLY public.msatuan DROP CONSTRAINT msatuan_pkey;
       public            postgres    false    237            (           2606    16431    mspesimen mspesimen_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.mspesimen
    ADD CONSTRAINT mspesimen_pkey PRIMARY KEY (id_spesimen);
 B   ALTER TABLE ONLY public.mspesimen DROP CONSTRAINT mspesimen_pkey;
       public            postgres    false    217            .           2606    16452    msub_lab msub_lab_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.msub_lab
    ADD CONSTRAINT msub_lab_pkey PRIMARY KEY (id_sub_lab);
 @   ALTER TABLE ONLY public.msub_lab DROP CONSTRAINT msub_lab_pkey;
       public            postgres    false    223            6           2606    16482    msupplier msupplier_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.msupplier
    ADD CONSTRAINT msupplier_pkey PRIMARY KEY (id_supplier);
 B   ALTER TABLE ONLY public.msupplier DROP CONSTRAINT msupplier_pkey;
       public            postgres    false    231            B           2606    16539    mtid_test mtid_test_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.mtid_test
    ADD CONSTRAINT mtid_test_pkey PRIMARY KEY (id_alat);
 B   ALTER TABLE ONLY public.mtid_test DROP CONSTRAINT mtid_test_pkey;
       public            postgres    false    243            0           2606    16459    mtindakan mtindakan_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.mtindakan
    ADD CONSTRAINT mtindakan_pkey PRIMARY KEY (id_tindakan);
 B   ALTER TABLE ONLY public.mtindakan DROP CONSTRAINT mtindakan_pkey;
       public            postgres    false    225            H           2606    16582    mtinventory mtinventory_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mtinventory
    ADD CONSTRAINT mtinventory_pkey PRIMARY KEY (id_inventory);
 F   ALTER TABLE ONLY public.mtinventory DROP CONSTRAINT mtinventory_pkey;
       public            postgres    false    250            J           2606    16591    mtkonversi mtkonversi_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.mtkonversi
    ADD CONSTRAINT mtkonversi_pkey PRIMARY KEY (id_alat);
 D   ALTER TABLE ONLY public.mtkonversi DROP CONSTRAINT mtkonversi_pkey;
       public            postgres    false    252            D           2606    16544     mtqc_pabrikan mtqc_pabrikan_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.mtqc_pabrikan
    ADD CONSTRAINT mtqc_pabrikan_pkey PRIMARY KEY (id_alat, id_test, no_lot);
 J   ALTER TABLE ONLY public.mtqc_pabrikan DROP CONSTRAINT mtqc_pabrikan_pkey;
       public            postgres    false    244    244    244            F           2606    16573    mttindakan mttindakan_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.mttindakan
    ADD CONSTRAINT mttindakan_pkey PRIMARY KEY (id_tindakan);
 D   ALTER TABLE ONLY public.mttindakan DROP CONSTRAINT mttindakan_pkey;
       public            postgres    false    248            R           2606    16677 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    257            X           2606    16698 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    261            Z           2606    16701 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    261            ]           2606    16710    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    263            N           2606    16672    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    256            P           2606    16670    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    256            [           1259    16699 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    261    261                  x������ � �      �   Y   x�3�tN,��400�4202�50�52U02�2��26�3��450�#�e��\���Y���X�4�b|�sz��%�%�M1&Ӕ=... H2+a      �   [   x�3�t�0�tI-�.�,(�T s�8��Lt�u�L��������L��MLM�Hq��4B5���#�AF�i�iL��1z\\\ ��5�         j   x�3�t40�t���I-J�4202�50�52U02�22�20�303220�#�e��d`��X�����C�)Ɯ�F���9��y�y%
y��9�Ź
�i
9�d����� o�1�      �   �   x�3�t*J�KQp�N-�L-V��t�K̩�J-�v���/.1�4202�50�52U02�22�26�332524�#�e5�	fv$�ofrQ~qr~A*�kIFjQ^j	�
#2�0�Z��"��95��(3�4=�3<�-l�1����qqq �MF�         �   x�]��� E���Jб1i:��J��,�}�%���}:'���h������TW�,Xh�<����p _$��0�p����tql��aۃx�{䀏4w��x���o����H޳�h�����B�6��)��t�zRJ�f(N�         >   x�3��J��,6�4202�50�52U02�"Cs=Sccc<R\F�Fdj7�h7&S{� -&�      �   I   x�3��M��Sp*��I��K�4202�50�52U02�"cs=Ks3<R\F����%
��`��J�	1z\\\ ��+�         @   x�3��M-�OI5�4202�50�52U02�22�25�32770�'�e�oD�~c�~c2���qqq ��'�      �   �  x����n�0�ϓ��َ���J�j��=d%.�d,[r¢���ӨB{Xk$�3����� !�f���b�g�J���=��k<��D1�1>@)�`C�|t��5�Be�t�^�A"�{��Tú����N���	X���4��u��a&�;l���m�$�*�i,r&e)�R�Y���P�c�~/E	�^�@�xj����ً���l3Oc�� U�j��?�/ꮅ_���G���^�W��;47�d����p�^�sd�4[�'������/i�U��w�Tg�;��ZXx���m�5����{�[�9����{6��	��q�-5�&dO���Uʘ��4+%���B��RJ�E�5y ��'���wxs�P�J�?�#���	�F׃�0�y(��Kd�D^����Q.��EQ����      �   �   x��л�0@���)X��PZ܌:H�$����hTZ-�ķ��;;�����Iј�R�(w�%���4 �]��#O#o�
���Ƥv��i��m���������V-WC�Kv�E�"?i�Y(�@�|�|�]���)��.����F!��
%ݼk�r{����ڀ����B����k{���[�L��\�+�q^�{X         @   x�3�N,)M�3�4202�50�5�P00�25�22Գ432��-�e�mD�nc�nc�t��qqq 6'      �   q   x�3�t���O��
���9������9�I�y�FF&��F
V�FV&�z����fx���8C�2�R!$�T�1/1��8��L��9C2��KS��l�����J2͌���� ~�@�      �   V   x�3��H�M,���O�T�IL�4202�50�5�P00�25�24�343566�#�e�雙\���I�AƜN�������%E����� ��1�      �   g   x�3�.-(��L-2�4�0426153��4�t�I�M,Q@�����Y(X�[��X��[��2��o�l�!����g�1�|cd���7&��=... ��D�         ^   x�3�t�/�-�IT0�H,J�Up���+(-�FF&��F
V�&V��z��Ɩ&x����&AMt���D���p��&:CMt&��=... i8�      	   b   x�3�4B�Ԓ��T����Ԣ�����<Cΐ�� ed`d�k`�kd�```ejbel�gbfnnb�G�ˈ��k1׈Ls�9A���s��47F��� ӆ=�         b   x�3�440�4���Gΐ̼����<��������������������������%).#��F �&F�i�1�Dc�c�����41F��� ��5      �   ^   x�3�400�t���OQI-.�440�30�4202�50�5�P00�25�22�356��)�e4Ɉ3�(3/b�)�2��J�*"Ӑ=... �,@         ?   x�3�4�AN##]s]#+SS+3=s3<R\F�0hJ�Ɯ0hD�3b���� �$�         z   x���1�0��+�3Yr��)ݺH��WA�:��c�%���{.P%0D1@aV�r#��Z]u[�/�{��.6���I1؅~�!��	�Y6���������G��)�i�YuJ�M�CJ)?��3�      
   �   x���91Ek��@"/dќa�	h(ҁh��614S E/�l�?���$`�SB�3�j����zQ��7�1� Q�d�b�v[��R��s��HZ��-����O{��a�.�nQ����X�6#_��c!�B4�����-��(���Cob�O�         �   x����N�0E盯�Բ;v��RA Q���-����yH�%�|߻zGG��~
1;�ꃛ�{}���/�~p�؏�@ٲ���^�F�wi�Sr=�E�q��LSBCCr�T�\�7ikη�l���hVF�ē���$�R>�9d����鵳��
�1��h�r�0BBUp�T�F���M�����$���J��x�@^��~ՐS4Sch����5�7VU��e�            x������ � �         `  x�}�ϊV1���>��,���i���|��^m���������z���r�/�lo^^���s�/��.����q����*l���ٱ)Д�s��z#���1B|NR����}{�����v��q�<�=ݰ �+m���Z�>3f�q�(V@{���	��U9`@�L$3S-��O�ߓ���v����P�C�u�����m��R"��za��e�J벮�xF�.f�f[��\�7�5���v��$5|�,�V:�8I��&i赋:��f��>�a��5���-��(r����D�j��>dP�lc�&�hd�'Z�.5�wIk�ɍ��Am�YW��1�W�X���|���wP��            x������ � �            x������ � �     