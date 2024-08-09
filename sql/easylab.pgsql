--
-- PostgreSQL database dump
--

-- Dumped from database version 15.7
-- Dumped by pg_dump version 15.7

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
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(191) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: m_metode_pembayaran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.m_metode_pembayaran (
    id_met_pembayaran integer NOT NULL,
    nama_met_pembayaran character varying(100),
    nomor_met_pembayaran character varying(50),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.m_metode_pembayaran OWNER TO postgres;

--
-- Name: m_metode_pembayaran_id_met_pembayaran_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.m_metode_pembayaran_id_met_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.m_metode_pembayaran_id_met_pembayaran_seq OWNER TO postgres;

--
-- Name: m_metode_pembayaran_id_met_pembayaran_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.m_metode_pembayaran_id_met_pembayaran_seq OWNED BY public.m_metode_pembayaran.id_met_pembayaran;


--
-- Name: mbhp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mbhp (
    id_bhp integer NOT NULL,
    nama_bhp character varying(255) NOT NULL,
    deskripsi_bhp text,
    harga_bhp numeric(10,2) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mbhp OWNER TO postgres;

--
-- Name: mbhp_id_bhp_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mbhp_id_bhp_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mbhp_id_bhp_seq OWNER TO postgres;

--
-- Name: mbhp_id_bhp_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mbhp_id_bhp_seq OWNED BY public.mbhp.id_bhp;


--
-- Name: mdiagnosa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mdiagnosa (
    id_diagnosa integer NOT NULL,
    kd_icd10 character varying(10) NOT NULL,
    nama_diagnosa character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mdiagnosa OWNER TO postgres;

--
-- Name: mdiagnosa_id_diagnosa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mdiagnosa_id_diagnosa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mdiagnosa_id_diagnosa_seq OWNER TO postgres;

--
-- Name: mdiagnosa_id_diagnosa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mdiagnosa_id_diagnosa_seq OWNED BY public.mdiagnosa.id_diagnosa;


--
-- Name: mequipment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mequipment (
    id_alat integer NOT NULL,
    merk_alat character varying(100),
    series_alat character varying(100),
    nama_alat character varying(100),
    jenis_koneksi_alat character varying(50),
    tipe_host_alat character varying(50),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mequipment OWNER TO postgres;

--
-- Name: mequipment_id_alat_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mequipment_id_alat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mequipment_id_alat_seq OWNER TO postgres;

--
-- Name: mequipment_id_alat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mequipment_id_alat_seq OWNED BY public.mequipment.id_alat;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(191) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: mjenis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mjenis (
    id_jenis integer NOT NULL,
    nama_jenis character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mjenis OWNER TO postgres;

--
-- Name: mjenis_id_jenis_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mjenis_id_jenis_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mjenis_id_jenis_seq OWNER TO postgres;

--
-- Name: mjenis_id_jenis_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mjenis_id_jenis_seq OWNED BY public.mjenis.id_jenis;


--
-- Name: mlokasi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mlokasi (
    id_lokasi integer NOT NULL,
    nama_lokasi character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mlokasi OWNER TO postgres;

--
-- Name: mlokasi_id_lokasi_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mlokasi_id_lokasi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mlokasi_id_lokasi_seq OWNER TO postgres;

--
-- Name: mlokasi_id_lokasi_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mlokasi_id_lokasi_seq OWNED BY public.mlokasi.id_lokasi;


--
-- Name: mmetode_pemeriksaan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mmetode_pemeriksaan (
    id_mtd_pemeriksaan integer NOT NULL,
    metode_pemeriksaan character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mmetode_pemeriksaan OWNER TO postgres;

--
-- Name: mmetode_pemeriksaan_id_mtd_pemeriksaan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mmetode_pemeriksaan_id_mtd_pemeriksaan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mmetode_pemeriksaan_id_mtd_pemeriksaan_seq OWNER TO postgres;

--
-- Name: mmetode_pemeriksaan_id_mtd_pemeriksaan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mmetode_pemeriksaan_id_mtd_pemeriksaan_seq OWNED BY public.mmetode_pemeriksaan.id_mtd_pemeriksaan;


--
-- Name: mpasien; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mpasien (
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
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    id integer NOT NULL,
    tekanan_darah character varying,
    berat_badan character varying,
    tinggi_badan character varying,
    id_pasien character varying
);


ALTER TABLE public.mpasien OWNER TO postgres;

--
-- Name: mpasien_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mpasien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mpasien_id_seq OWNER TO postgres;

--
-- Name: mpasien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mpasien_id_seq OWNED BY public.mpasien.id;


--
-- Name: mpegawai; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mpegawai (
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


ALTER TABLE public.mpegawai OWNER TO postgres;

--
-- Name: mpegawai_id_pegawai_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mpegawai_id_pegawai_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mpegawai_id_pegawai_seq OWNER TO postgres;

--
-- Name: mpegawai_id_pegawai_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mpegawai_id_pegawai_seq OWNED BY public.mpegawai.id_pegawai;


--
-- Name: msatuan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.msatuan (
    id_satuan integer NOT NULL,
    nama_satuan character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.msatuan OWNER TO postgres;

--
-- Name: msatuan_id_satuan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.msatuan_id_satuan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.msatuan_id_satuan_seq OWNER TO postgres;

--
-- Name: msatuan_id_satuan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.msatuan_id_satuan_seq OWNED BY public.msatuan.id_satuan;


--
-- Name: mspesimen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mspesimen (
    id_spesimen integer NOT NULL,
    jenis_spesimen character varying(100),
    nama_spesimen_display character varying(100),
    nama_spesimen_klinis character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mspesimen OWNER TO postgres;

--
-- Name: mspesimen_id_spesimen_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mspesimen_id_spesimen_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mspesimen_id_spesimen_seq OWNER TO postgres;

--
-- Name: mspesimen_id_spesimen_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mspesimen_id_spesimen_seq OWNED BY public.mspesimen.id_spesimen;


--
-- Name: msub_lab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.msub_lab (
    id_sub_lab integer NOT NULL,
    nama_sub_lab character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.msub_lab OWNER TO postgres;

--
-- Name: msub_lab_id_sub_lab_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.msub_lab_id_sub_lab_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.msub_lab_id_sub_lab_seq OWNER TO postgres;

--
-- Name: msub_lab_id_sub_lab_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.msub_lab_id_sub_lab_seq OWNED BY public.msub_lab.id_sub_lab;


--
-- Name: msupplier; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.msupplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(255) NOT NULL,
    notelp_supplier character varying(15),
    alamat_supplier text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.msupplier OWNER TO postgres;

--
-- Name: msupplier_id_supplier_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.msupplier_id_supplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.msupplier_id_supplier_seq OWNER TO postgres;

--
-- Name: msupplier_id_supplier_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.msupplier_id_supplier_seq OWNED BY public.msupplier.id_supplier;


--
-- Name: mtformulasi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mtformulasi (
    id_formula integer,
    formula text,
    parameter text,
    input_parameter text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mtformulasi OWNER TO postgres;

--
-- Name: mtid_test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mtid_test (
    id_alat integer NOT NULL,
    id_test integer NOT NULL,
    id_mtd_pemeriksaan integer NOT NULL,
    metode_pemeriksaan character varying(255) NOT NULL,
    nama_test character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mtid_test OWNER TO postgres;

--
-- Name: mtid_test_id_alat_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mtid_test_id_alat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mtid_test_id_alat_seq OWNER TO postgres;

--
-- Name: mtid_test_id_alat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mtid_test_id_alat_seq OWNED BY public.mtid_test.id_alat;


--
-- Name: mtid_test_mapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mtid_test_mapp (
    id_alat integer,
    id_test integer,
    id_tindakan integer,
    nama_test character varying(255),
    nama_tindakan character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mtid_test_mapp OWNER TO postgres;

--
-- Name: mtindakan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mtindakan (
    id_tindakan integer NOT NULL,
    kd_icd9 character varying(10),
    nama_tindakan character varying(100),
    harga_tindakan numeric(10,2),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mtindakan OWNER TO postgres;

--
-- Name: mtindakan_id_tindakan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mtindakan_id_tindakan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mtindakan_id_tindakan_seq OWNER TO postgres;

--
-- Name: mtindakan_id_tindakan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mtindakan_id_tindakan_seq OWNED BY public.mtindakan.id_tindakan;


--
-- Name: mtinventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mtinventory (
    id_inventory integer NOT NULL,
    id_bhp integer,
    id_satuan integer,
    id_jenis integer,
    id_supplier integer,
    stok_inventory numeric,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mtinventory OWNER TO postgres;

--
-- Name: mtinventory_id_inventory_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mtinventory_id_inventory_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mtinventory_id_inventory_seq OWNER TO postgres;

--
-- Name: mtinventory_id_inventory_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mtinventory_id_inventory_seq OWNED BY public.mtinventory.id_inventory;


--
-- Name: mtkonversi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mtkonversi (
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


ALTER TABLE public.mtkonversi OWNER TO postgres;

--
-- Name: mtkonversi_id_alat_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mtkonversi_id_alat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mtkonversi_id_alat_seq OWNER TO postgres;

--
-- Name: mtkonversi_id_alat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mtkonversi_id_alat_seq OWNED BY public.mtkonversi.id_alat;


--
-- Name: mtqc_pabrikan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mtqc_pabrikan (
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


ALTER TABLE public.mtqc_pabrikan OWNER TO postgres;

--
-- Name: mttindakan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mttindakan (
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


ALTER TABLE public.mttindakan OWNER TO postgres;

--
-- Name: mttindakan_id_tindakan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mttindakan_id_tindakan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mttindakan_id_tindakan_seq OWNER TO postgres;

--
-- Name: mttindakan_id_tindakan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mttindakan_id_tindakan_seq OWNED BY public.mttindakan.id_tindakan;


--
-- Name: mttindakan_mapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mttindakan_mapp (
    id_tindakan integer NOT NULL,
    nama_tindakan character varying(255),
    id_tindakan_luar integer,
    nama_tindakan_luar character varying(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.mttindakan_mapp OWNER TO postgres;

--
-- Name: mttindakan_mapp_id_tindakan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mttindakan_mapp_id_tindakan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mttindakan_mapp_id_tindakan_seq OWNER TO postgres;

--
-- Name: mttindakan_mapp_id_tindakan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mttindakan_mapp_id_tindakan_seq OWNED BY public.mttindakan_mapp.id_tindakan;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_tokens (
    email character varying(191) NOT NULL,
    token character varying(191) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
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


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    detail text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO postgres;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    email character varying(191) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(191) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: m_metode_pembayaran id_met_pembayaran; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.m_metode_pembayaran ALTER COLUMN id_met_pembayaran SET DEFAULT nextval('public.m_metode_pembayaran_id_met_pembayaran_seq'::regclass);


--
-- Name: mbhp id_bhp; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mbhp ALTER COLUMN id_bhp SET DEFAULT nextval('public.mbhp_id_bhp_seq'::regclass);


--
-- Name: mdiagnosa id_diagnosa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mdiagnosa ALTER COLUMN id_diagnosa SET DEFAULT nextval('public.mdiagnosa_id_diagnosa_seq'::regclass);


--
-- Name: mequipment id_alat; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mequipment ALTER COLUMN id_alat SET DEFAULT nextval('public.mequipment_id_alat_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: mjenis id_jenis; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mjenis ALTER COLUMN id_jenis SET DEFAULT nextval('public.mjenis_id_jenis_seq'::regclass);


--
-- Name: mlokasi id_lokasi; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mlokasi ALTER COLUMN id_lokasi SET DEFAULT nextval('public.mlokasi_id_lokasi_seq'::regclass);


--
-- Name: mmetode_pemeriksaan id_mtd_pemeriksaan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mmetode_pemeriksaan ALTER COLUMN id_mtd_pemeriksaan SET DEFAULT nextval('public.mmetode_pemeriksaan_id_mtd_pemeriksaan_seq'::regclass);


--
-- Name: mpasien id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mpasien ALTER COLUMN id SET DEFAULT nextval('public.mpasien_id_seq'::regclass);


--
-- Name: mpegawai id_pegawai; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mpegawai ALTER COLUMN id_pegawai SET DEFAULT nextval('public.mpegawai_id_pegawai_seq'::regclass);


--
-- Name: msatuan id_satuan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.msatuan ALTER COLUMN id_satuan SET DEFAULT nextval('public.msatuan_id_satuan_seq'::regclass);


--
-- Name: mspesimen id_spesimen; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mspesimen ALTER COLUMN id_spesimen SET DEFAULT nextval('public.mspesimen_id_spesimen_seq'::regclass);


--
-- Name: msub_lab id_sub_lab; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.msub_lab ALTER COLUMN id_sub_lab SET DEFAULT nextval('public.msub_lab_id_sub_lab_seq'::regclass);


--
-- Name: msupplier id_supplier; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.msupplier ALTER COLUMN id_supplier SET DEFAULT nextval('public.msupplier_id_supplier_seq'::regclass);


--
-- Name: mtid_test id_alat; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mtid_test ALTER COLUMN id_alat SET DEFAULT nextval('public.mtid_test_id_alat_seq'::regclass);


--
-- Name: mtindakan id_tindakan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mtindakan ALTER COLUMN id_tindakan SET DEFAULT nextval('public.mtindakan_id_tindakan_seq'::regclass);


--
-- Name: mtinventory id_inventory; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mtinventory ALTER COLUMN id_inventory SET DEFAULT nextval('public.mtinventory_id_inventory_seq'::regclass);


--
-- Name: mtkonversi id_alat; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mtkonversi ALTER COLUMN id_alat SET DEFAULT nextval('public.mtkonversi_id_alat_seq'::regclass);


--
-- Name: mttindakan id_tindakan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mttindakan ALTER COLUMN id_tindakan SET DEFAULT nextval('public.mttindakan_id_tindakan_seq'::regclass);


--
-- Name: mttindakan_mapp id_tindakan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mttindakan_mapp ALTER COLUMN id_tindakan SET DEFAULT nextval('public.mttindakan_mapp_id_tindakan_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: m_metode_pembayaran m_metode_pembayaran_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.m_metode_pembayaran
    ADD CONSTRAINT m_metode_pembayaran_pkey PRIMARY KEY (id_met_pembayaran);


--
-- Name: mbhp mbhp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mbhp
    ADD CONSTRAINT mbhp_pkey PRIMARY KEY (id_bhp);


--
-- Name: mdiagnosa mdiagnosa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mdiagnosa
    ADD CONSTRAINT mdiagnosa_pkey PRIMARY KEY (id_diagnosa);


--
-- Name: mequipment mequipment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mequipment
    ADD CONSTRAINT mequipment_pkey PRIMARY KEY (id_alat);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: mjenis mjenis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mjenis
    ADD CONSTRAINT mjenis_pkey PRIMARY KEY (id_jenis);


--
-- Name: mlokasi mlokasi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mlokasi
    ADD CONSTRAINT mlokasi_pkey PRIMARY KEY (id_lokasi);


--
-- Name: mmetode_pemeriksaan mmetode_pemeriksaan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mmetode_pemeriksaan
    ADD CONSTRAINT mmetode_pemeriksaan_pkey PRIMARY KEY (id_mtd_pemeriksaan);


--
-- Name: mpasien mpasien_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mpasien
    ADD CONSTRAINT mpasien_pkey PRIMARY KEY (id);


--
-- Name: mpegawai mpegawai_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mpegawai
    ADD CONSTRAINT mpegawai_pkey PRIMARY KEY (id_pegawai);


--
-- Name: msatuan msatuan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.msatuan
    ADD CONSTRAINT msatuan_pkey PRIMARY KEY (id_satuan);


--
-- Name: mspesimen mspesimen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mspesimen
    ADD CONSTRAINT mspesimen_pkey PRIMARY KEY (id_spesimen);


--
-- Name: msub_lab msub_lab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.msub_lab
    ADD CONSTRAINT msub_lab_pkey PRIMARY KEY (id_sub_lab);


--
-- Name: msupplier msupplier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.msupplier
    ADD CONSTRAINT msupplier_pkey PRIMARY KEY (id_supplier);


--
-- Name: mtid_test mtid_test_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mtid_test
    ADD CONSTRAINT mtid_test_pkey PRIMARY KEY (id_alat);


--
-- Name: mtindakan mtindakan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mtindakan
    ADD CONSTRAINT mtindakan_pkey PRIMARY KEY (id_tindakan);


--
-- Name: mtinventory mtinventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mtinventory
    ADD CONSTRAINT mtinventory_pkey PRIMARY KEY (id_inventory);


--
-- Name: mtkonversi mtkonversi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mtkonversi
    ADD CONSTRAINT mtkonversi_pkey PRIMARY KEY (id_alat);


--
-- Name: mtqc_pabrikan mtqc_pabrikan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mtqc_pabrikan
    ADD CONSTRAINT mtqc_pabrikan_pkey PRIMARY KEY (id_alat, id_test, no_lot);


--
-- Name: mttindakan_mapp mttindakan_mapp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mttindakan_mapp
    ADD CONSTRAINT mttindakan_mapp_pkey PRIMARY KEY (id_tindakan);


--
-- Name: mttindakan mttindakan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mttindakan
    ADD CONSTRAINT mttindakan_pkey PRIMARY KEY (id_tindakan);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- PostgreSQL database dump complete
--

