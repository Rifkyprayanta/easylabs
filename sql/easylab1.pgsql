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
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: m_metode_pembayaran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.m_metode_pembayaran (id_met_pembayaran, nama_met_pembayaran, nomor_met_pembayaran, created_at, updated_at) FROM stdin;
1	Cash	001	2024-07-25 22:19:33.389502	2024-07-25 22:19:33.389502
2	Credit Card	002	2024-07-25 22:19:33.389502	2024-07-25 22:19:33.389502
3	Insurance	003	2024-07-25 22:19:33.389502	2024-07-25 22:19:33.389502
\.


--
-- Data for Name: mbhp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mbhp (id_bhp, nama_bhp, deskripsi_bhp, harga_bhp, created_at, updated_at) FROM stdin;
1	BHP1	Deskripsi BHP1	100.00	2024-07-25 22:20:36.533455	2024-07-25 22:20:36.533455
2	BHP2	Deskripsi BHP2	200.00	2024-07-25 22:20:36.533455	2024-07-25 22:20:36.533455
3	BHP3	Deskripsi BHP3	300.00	2024-07-25 22:20:36.533455	2024-07-25 22:20:36.533455
\.


--
-- Data for Name: mdiagnosa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mdiagnosa (id_diagnosa, kd_icd10, nama_diagnosa, created_at, updated_at) FROM stdin;
1	A00	Cholera	2024-07-25 22:21:06.062204	2024-07-25 22:21:06.062204
2	B01	Varicella	2024-07-25 22:21:06.062204	2024-07-25 22:21:06.062204
3	C02	Malignant neoplasm of lip	2024-07-25 22:21:06.062204	2024-07-25 22:21:06.062204
\.


--
-- Data for Name: mequipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mequipment (id_alat, merk_alat, series_alat, nama_alat, jenis_koneksi_alat, tipe_host_alat, created_at, updated_at) FROM stdin;
1	Brand A	Series X	Analyzer	USB	Host1	2024-07-25 22:21:33.625216	2024-07-25 22:21:33.625216
2	Brand B	Series Y	Microscope	Ethernet	Host2	2024-07-25 22:21:33.625216	2024-07-25 22:21:33.625216
3	Brand C	Series Z	Centrifuge	WiFi	Host3	2024-07-25 22:21:33.625216	2024-07-25 22:21:33.625216
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
5	2014_10_12_000000_create_users_table	1
6	2014_10_12_100000_create_password_reset_tokens_table	1
7	2019_08_19_000000_create_failed_jobs_table	1
8	2019_12_14_000001_create_personal_access_tokens_table	1
9	2024_07_19_184021_create_products_table	1
\.


--
-- Data for Name: mjenis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mjenis (id_jenis, nama_jenis, created_at, updated_at) FROM stdin;
1	Jenis1	2024-07-25 22:22:17.453338	2024-07-25 22:22:17.453338
2	Jenis2	2024-07-25 22:22:17.453338	2024-07-25 22:22:17.453338
3	Jenis3	2024-07-25 22:22:17.453338	2024-07-25 22:22:17.453338
\.


--
-- Data for Name: mlokasi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mlokasi (id_lokasi, nama_lokasi, created_at, updated_at) FROM stdin;
1	Main Building	2024-07-25 22:22:37.947046	2024-07-25 22:22:37.947046
2	East Wing	2024-07-25 22:22:37.947046	2024-07-25 22:22:37.947046
3	West Wing	2024-07-25 22:22:37.947046	2024-07-25 22:22:37.947046
\.


--
-- Data for Name: mmetode_pemeriksaan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mmetode_pemeriksaan (id_mtd_pemeriksaan, metode_pemeriksaan, created_at, updated_at) FROM stdin;
1	Metode1	2024-07-25 22:23:53.277031	2024-07-25 22:23:53.277031
2	Metode2	2024-07-25 22:23:53.277031	2024-07-25 22:23:53.277031
3	Metode3	2024-07-25 22:23:53.277031	2024-07-25 22:23:53.277031
\.


--
-- Data for Name: mpasien; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mpasien (nik, sim, nama, tempat_lahir, tanggal_lahir, usia, jenis_kelamin, agama, pekerjaan, status_perkawinan, alamat_lengkap, alamat_negara, alamat_provinsi, alamat_kabupaten_kota, alamat_desa, status_warga_negara, golongan_darah, created_at, updated_at, id, tekanan_darah, berat_badan, tinggi_badan, id_pasien) FROM stdin;
123456789	987654321	John Doe	Jakarta	1980-01-01	44	Male	Christianity	Software Engineer	Married	Jl. Merdeka No. 1	Indonesia	DKI Jakarta	Jakarta	Central Jakarta	Indonesian	O	2024-05-17 22:23:40.767879	2024-07-25 22:23:40.767879	1	\N	\N	\N	\N
345678901	765432109	Alice Brown	Bandung	1975-03-03	49	Female	Hinduism	Teacher	Widowed	Jl. Kebebasan No. 3	Indonesia	West Java	Bandung	South Bandung	Indonesian	B	2024-05-17 22:23:40.767879	2024-07-25 22:23:40.767879	2	\N	\N	\N	\N
234567890	876543210	Jane Smith Jr	Surabaya	1990-02-02	34	Female	Islam	Doctor	Single	Jl. Kemerdekaan No. 2	Indonesia	East Java	Surabaya	East Surabaya	Indonesian	A	2024-07-25 22:23:40.767879	2024-07-26 16:56:20	3	\N	\N	\N	\N
0000000111	10222065441	Blade Jr Wike	Semarang	1994-02-02	31	Male	Islam	Doctor	Single	\N	Indonesia	Mid Java	Semarang	Mid Surabaya	Indonesian	AO	2024-07-27 17:49:00	2024-07-27 17:49:00	4	\N	\N	\N	\N
\.


--
-- Data for Name: mpegawai; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mpegawai (id_pegawai, nip_pegawai, nama_pegawai, jabatan, role_akses, password, remember_token, created_at, updated_at) FROM stdin;
1	123456789	John Doe	Manager	admin	$2y$10$tbT7IOTjhrJut5.f/1.h0OZgE2ajUq86RpbLMtRY9Ygu0qTSfouRu	\N	2024-07-28 00:51:55.77878	2024-07-28 00:51:55.77878
2	987654321	Jane Smith	Supervisor	user	$2y$10$tbT7IOTjhrJut5.f/1.h0OZgE2ajUq86RpbLMtRY9Ygu0qTSfouRu	\N	2024-07-28 00:51:55.77878	2024-07-28 00:51:55.77878
3	543210987	Alice Johnson	Clerk	user	$2y$10$tbT7IOTjhrJut5.f/1.h0OZgE2ajUq86RpbLMtRY9Ygu0qTSfouRu	\N	2024-07-28 00:51:55.77878	2024-07-28 00:51:55.77878
\.


--
-- Data for Name: msatuan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.msatuan (id_satuan, nama_satuan, created_at, updated_at) FROM stdin;
1	Satuan1	2024-07-28 00:52:21.96249	2024-07-28 00:52:21.96249
2	Satuan2	2024-07-28 00:52:21.96249	2024-07-28 00:52:21.96249
3	Satuan3	2024-07-28 00:52:21.96249	2024-07-28 00:52:21.96249
\.


--
-- Data for Name: mspesimen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mspesimen (id_spesimen, jenis_spesimen, nama_spesimen_display, nama_spesimen_klinis, created_at, updated_at) FROM stdin;
1	Blood	Blood Sample	Hemoglobin	2024-07-28 00:52:45.733076	2024-07-28 00:52:45.733076
2	Urine	Urine Sample	Urine Analysis	2024-07-28 00:52:45.733076	2024-07-28 00:52:45.733076
3	Tissue	Tissue Sample	Biopsy	2024-07-28 00:52:45.733076	2024-07-28 00:52:45.733076
\.


--
-- Data for Name: msub_lab; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.msub_lab (id_sub_lab, nama_sub_lab, created_at, updated_at) FROM stdin;
1	Hematology Lab	2024-07-28 00:53:11.165331	2024-07-28 00:53:11.165331
2	Microbiology Lab	2024-07-28 00:53:11.165331	2024-07-28 00:53:11.165331
3	Biochemistry Lab	2024-07-28 00:53:11.165331	2024-07-28 00:53:11.165331
\.


--
-- Data for Name: msupplier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.msupplier (id_supplier, nama_supplier, notelp_supplier, alamat_supplier, created_at, updated_at) FROM stdin;
1	Supplier1	081234567890	Alamat Supplier1	2024-07-28 00:53:41.485782	2024-07-28 00:53:41.485782
2	Supplier2	081234567891	Alamat Supplier2	2024-07-28 00:53:41.485782	2024-07-28 00:53:41.485782
3	Supplier3	081234567892	Alamat Supplier3	2024-07-28 00:53:41.485782	2024-07-28 00:53:41.485782
\.


--
-- Data for Name: mtformulasi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mtformulasi (id_formula, formula, parameter, input_parameter, created_at, updated_at) FROM stdin;
1	Formula 1	Param A	Input A	2024-07-28 00:54:11.958394	2024-07-28 00:54:11.958394
2	Formula 2	Param B	Input B	2024-07-28 00:54:11.958394	2024-07-28 00:54:11.958394
3	Formula 3	Param C	Input C	2024-07-28 00:54:11.958394	2024-07-28 00:54:11.958394
\.


--
-- Data for Name: mtid_test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mtid_test (id_alat, id_test, id_mtd_pemeriksaan, metode_pemeriksaan, nama_test, created_at, updated_at) FROM stdin;
1	1	1	Metode Pemeriksaan 1	Test 1	2024-07-28 00:54:33.467749	2024-07-28 00:54:33.467749
2	2	2	Metode Pemeriksaan 2	Test 2	2024-07-28 00:54:33.467749	2024-07-28 00:54:33.467749
3	3	3	Metode Pemeriksaan 3	Test 3	2024-07-28 00:54:33.467749	2024-07-28 00:54:33.467749
\.


--
-- Data for Name: mtid_test_mapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mtid_test_mapp (id_alat, id_test, id_tindakan, nama_test, nama_tindakan, created_at, updated_at) FROM stdin;
1	101	201	Test A	Tindakan X	2024-07-28 00:54:50.070559	2024-07-28 00:54:50.070559
2	102	202	Test B	Tindakan Y	2024-07-28 00:54:50.070559	2024-07-28 00:54:50.070559
3	103	203	Test C	Tindakan Z	2024-07-28 00:54:50.070559	2024-07-28 00:54:50.070559
\.


--
-- Data for Name: mtindakan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mtindakan (id_tindakan, kd_icd9, nama_tindakan, harga_tindakan, created_at, updated_at) FROM stdin;
1	001	Blood Test	100.00	2024-07-28 00:50:25.5378	2024-07-28 00:50:25.5378
2	002	Urine Test	50.00	2024-07-28 00:50:25.5378	2024-07-28 00:50:25.5378
3	003	X-Ray	200.00	2024-07-28 00:50:25.5378	2024-07-28 00:50:25.5378
\.


--
-- Data for Name: mtinventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mtinventory (id_inventory, id_bhp, id_satuan, id_jenis, id_supplier, stok_inventory, created_at, updated_at) FROM stdin;
1	1	1	1	1	100	2024-07-28 00:55:46.764844	2024-07-28 00:55:46.764844
2	2	2	2	2	50	2024-07-28 00:55:46.764844	2024-07-28 00:55:46.764844
3	3	3	3	3	200	2024-07-28 00:55:46.764844	2024-07-28 00:55:46.764844
\.


--
-- Data for Name: mtkonversi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mtkonversi (id_alat, id_test, jenis_konversi, hasil_raw, hasil_konversi, pembulatan, perkalian, nilai_pengurang, penjumlahan, nilai_penjumlahan, created_at, updated_at) FROM stdin;
1	1	Tipe A	10.5	9.0	9	1.1	1.5	2.0	11.0	2024-07-28 00:56:13.29568	2024-07-28 00:56:13.29568
2	2	Tipe B	15.2	13.5	14	1.2	1.7	3.0	16.5	2024-07-28 00:56:13.29568	2024-07-28 00:56:13.29568
3	3	Tipe C	20.8	19.0	19	1.3	1.8	4.0	23.0	2024-07-28 00:56:13.29568	2024-07-28 00:56:13.29568
\.


--
-- Data for Name: mtqc_pabrikan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mtqc_pabrikan (id_alat, id_test, no_lot, tgl_awal_buka_ed, tgl_akhir_buka_ed, nama_lot, level_lot, bts_bawah, bts_atas, mean, bts_tea, bts_cv, bts_d, created_at, updated_at) FROM stdin;
1	1	Lot1	2024-01-01	2024-06-01	Lot Name 1	Level 1	0.50	1.50	1.00	0.10	0.05	0.01	2024-07-28 00:56:58.725713	2024-07-28 00:56:58.725713
2	2	Lot2	2024-02-01	2024-07-01	Lot Name 2	Level 2	0.60	1.60	1.10	0.20	0.06	0.02	2024-07-28 00:56:58.725713	2024-07-28 00:56:58.725713
3	3	Lot3	2024-03-01	2024-08-01	Lot Name 3	Level 3	0.70	1.70	1.20	0.30	0.07	0.03	2024-07-28 00:56:58.725713	2024-07-28 00:56:58.725713
\.


--
-- Data for Name: mttindakan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mttindakan (id_tindakan, nama_tindakan, id_jenis_lab, harga_subyek, nama_subyek_lab, id_pemeriksaan, nama_spesimen, spesimen_barcode, jenis_rujukan, rentang_bwh_umur, rentang_atas_umur, flag_kritis, nilai_kualitatif, rentang_bwh_kritis_1, rentang_atas_kritis_1, rentang_bwh_kritis_2, rentang_atas_kritis_2, flag_desimal, id_pasien, created_at, updated_at) FROM stdin;
1	Pemeriksaan Darah Lengkap	1	100000	Hematologi	1	Darah	ABC123456	Internal	18	60	f	12.5	10	15	5	20	t	1	2024-07-28 00:57:32.402613	2024-07-28 00:57:32.402613
2	Tes Urin	2	50000	Urinalisis	2	Urin	XYZ987654	Eksternal	5	80	t	7.8	6	9	4	10	f	2	2024-07-28 00:57:32.402613	2024-07-28 00:57:32.402613
3	Pemeriksaan Glukosa	3	75000	Biokimia	3	Darah	LMN456789	Internal	20	70	f	5.4	4	7	3	8	t	3	2024-07-28 00:57:32.402613	2024-07-28 00:57:32.402613
\.


--
-- Data for Name: mttindakan_mapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mttindakan_mapp (id_tindakan, nama_tindakan, id_tindakan_luar, nama_tindakan_luar, created_at, updated_at) FROM stdin;
1	Tindakan A	101	Tindakan Luar A	2024-08-04 14:49:00.295081	2024-08-04 14:49:00.295081
2	Tindakan B	102	Tindakan Luar B	2024-08-04 14:49:00.295081	2024-08-04 14:49:00.295081
3	Tindakan C	103	Tindakan Luar C	2024-08-04 14:49:00.295081	2024-08-04 14:49:00.295081
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
4	App\\Models\\Pegawai	1	MyApp	846c6bfea19602f5bd93ef15e2f5119ed6d2fc65ddbd5cff0d152668ba9bc01a	["*"]	\N	\N	2024-07-22 18:05:04	2024-07-22 18:05:04
6	App\\Models\\Pegawai	1	MyApp	365e9fddce544de0c57a4302a05e4f482f483644d5ceb3107a5772d39f901ac5	["*"]	\N	\N	2024-07-23 15:49:53	2024-07-23 15:49:53
8	App\\Models\\Pegawai	1	MyApp	99396cfedfd673a3d47406a9af770732078778cbeb0b080ee12cbfdd1e67e534	["*"]	2024-08-07 18:53:00	\N	2024-07-27 16:36:50	2024-08-07 18:53:00
5	App\\Models\\Pegawai	1	MyApp	58dc4de73a10bc0923e26bc2521e2b591c8a56c3b1a47f852ebccf7c0b1ba8d8	["*"]	2024-07-27 13:45:26	\N	2024-07-23 15:18:16	2024-07-27 13:45:26
7	App\\Models\\Pegawai	1	MyApp	d2aad13720bf0d70d92743f17d4fdc58e0aa6be2dc4f3925957089ac36e1d1e5	["*"]	\N	\N	2024-07-27 16:36:18	2024-07-27 16:36:18
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, detail, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
\.


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: m_metode_pembayaran_id_met_pembayaran_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.m_metode_pembayaran_id_met_pembayaran_seq', 3, true);


--
-- Name: mbhp_id_bhp_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mbhp_id_bhp_seq', 3, true);


--
-- Name: mdiagnosa_id_diagnosa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mdiagnosa_id_diagnosa_seq', 3, true);


--
-- Name: mequipment_id_alat_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mequipment_id_alat_seq', 3, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 9, true);


--
-- Name: mjenis_id_jenis_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mjenis_id_jenis_seq', 3, true);


--
-- Name: mlokasi_id_lokasi_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mlokasi_id_lokasi_seq', 3, true);


--
-- Name: mmetode_pemeriksaan_id_mtd_pemeriksaan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mmetode_pemeriksaan_id_mtd_pemeriksaan_seq', 3, true);


--
-- Name: mpasien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mpasien_id_seq', 4, true);


--
-- Name: mpegawai_id_pegawai_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mpegawai_id_pegawai_seq', 3, true);


--
-- Name: msatuan_id_satuan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.msatuan_id_satuan_seq', 3, true);


--
-- Name: mspesimen_id_spesimen_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mspesimen_id_spesimen_seq', 3, true);


--
-- Name: msub_lab_id_sub_lab_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.msub_lab_id_sub_lab_seq', 3, true);


--
-- Name: msupplier_id_supplier_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.msupplier_id_supplier_seq', 3, true);


--
-- Name: mtid_test_id_alat_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mtid_test_id_alat_seq', 3, true);


--
-- Name: mtindakan_id_tindakan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mtindakan_id_tindakan_seq', 3, true);


--
-- Name: mtinventory_id_inventory_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mtinventory_id_inventory_seq', 3, true);


--
-- Name: mtkonversi_id_alat_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mtkonversi_id_alat_seq', 3, true);


--
-- Name: mttindakan_id_tindakan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mttindakan_id_tindakan_seq', 3, true);


--
-- Name: mttindakan_mapp_id_tindakan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mttindakan_mapp_id_tindakan_seq', 3, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 8, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


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

