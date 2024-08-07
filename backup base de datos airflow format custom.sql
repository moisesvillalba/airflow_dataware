PGDMP                      |            airflow    16.3 (Debian 16.3-1.pgdg120+1)    16.3 =   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16384    airflow    DATABASE     r   CREATE DATABASE airflow WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE airflow;
                airflow    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16542    ab_permission    TABLE     i   CREATE TABLE public.ab_permission (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
 !   DROP TABLE public.ab_permission;
       public         heap    airflow    false    4            �            1259    16541    ab_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ab_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ab_permission_id_seq;
       public          airflow    false    4    244                        0    0    ab_permission_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ab_permission_id_seq OWNED BY public.ab_permission.id;
          public          airflow    false    243                       1259    16709    ab_permission_view    TABLE     y   CREATE TABLE public.ab_permission_view (
    id integer NOT NULL,
    permission_id integer,
    view_menu_id integer
);
 &   DROP TABLE public.ab_permission_view;
       public         heap    airflow    false    4                       1259    16708    ab_permission_view_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ab_permission_view_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ab_permission_view_id_seq;
       public          airflow    false    4    262                       0    0    ab_permission_view_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.ab_permission_view_id_seq OWNED BY public.ab_permission_view.id;
          public          airflow    false    261                       1259    16807    ab_permission_view_role    TABLE     ~   CREATE TABLE public.ab_permission_view_role (
    id integer NOT NULL,
    permission_view_id integer,
    role_id integer
);
 +   DROP TABLE public.ab_permission_view_role;
       public         heap    airflow    false    4                       1259    16806    ab_permission_view_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ab_permission_view_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ab_permission_view_role_id_seq;
       public          airflow    false    269    4                       0    0    ab_permission_view_role_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ab_permission_view_role_id_seq OWNED BY public.ab_permission_view_role.id;
          public          airflow    false    268            �            1259    16593    ab_register_user    TABLE     �  CREATE TABLE public.ab_register_user (
    id integer NOT NULL,
    first_name character varying(256) NOT NULL,
    last_name character varying(256) NOT NULL,
    username character varying(512) NOT NULL,
    password character varying(256),
    email character varying(512) NOT NULL,
    registration_date timestamp without time zone,
    registration_hash character varying(256)
);
 $   DROP TABLE public.ab_register_user;
       public         heap    airflow    false    4            �            1259    16592    ab_register_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ab_register_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ab_register_user_id_seq;
       public          airflow    false    4    252                       0    0    ab_register_user_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.ab_register_user_id_seq OWNED BY public.ab_register_user.id;
          public          airflow    false    251            �            1259    16560    ab_role    TABLE     b   CREATE TABLE public.ab_role (
    id integer NOT NULL,
    name character varying(64) NOT NULL
);
    DROP TABLE public.ab_role;
       public         heap    airflow    false    4            �            1259    16559    ab_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ab_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ab_role_id_seq;
       public          airflow    false    4    248                       0    0    ab_role_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ab_role_id_seq OWNED BY public.ab_role.id;
          public          airflow    false    247            �            1259    16569    ab_user    TABLE       CREATE TABLE public.ab_user (
    id integer NOT NULL,
    first_name character varying(256) NOT NULL,
    last_name character varying(256) NOT NULL,
    username character varying(512) NOT NULL,
    password character varying(256),
    active boolean,
    email character varying(512) NOT NULL,
    last_login timestamp without time zone,
    login_count integer,
    fail_login_count integer,
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    created_by_fk integer,
    changed_by_fk integer
);
    DROP TABLE public.ab_user;
       public         heap    airflow    false    4            �            1259    16568    ab_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ab_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ab_user_id_seq;
       public          airflow    false    250    4                       0    0    ab_user_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ab_user_id_seq OWNED BY public.ab_user.id;
          public          airflow    false    249                       1259    16728    ab_user_role    TABLE     h   CREATE TABLE public.ab_user_role (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);
     DROP TABLE public.ab_user_role;
       public         heap    airflow    false    4                       1259    16727    ab_user_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ab_user_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ab_user_role_id_seq;
       public          airflow    false    264    4                       0    0    ab_user_role_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ab_user_role_id_seq OWNED BY public.ab_user_role.id;
          public          airflow    false    263            �            1259    16551    ab_view_menu    TABLE     h   CREATE TABLE public.ab_view_menu (
    id integer NOT NULL,
    name character varying(250) NOT NULL
);
     DROP TABLE public.ab_view_menu;
       public         heap    airflow    false    4            �            1259    16550    ab_view_menu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ab_view_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ab_view_menu_id_seq;
       public          airflow    false    246    4                       0    0    ab_view_menu_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ab_view_menu_id_seq OWNED BY public.ab_view_menu.id;
          public          airflow    false    245                       1259    16932    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    airflow    false    4            �            1259    16476    callback_request    TABLE       CREATE TABLE public.callback_request (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    priority_weight integer NOT NULL,
    callback_data json NOT NULL,
    callback_type character varying(20) NOT NULL,
    processor_subdir character varying(2000)
);
 $   DROP TABLE public.callback_request;
       public         heap    airflow    false    4            �            1259    16475    callback_request_id_seq    SEQUENCE     �   CREATE SEQUENCE public.callback_request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.callback_request_id_seq;
       public          airflow    false    4    232                       0    0    callback_request_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.callback_request_id_seq OWNED BY public.callback_request.id;
          public          airflow    false    231            �            1259    16465 
   connection    TABLE     �  CREATE TABLE public.connection (
    id integer NOT NULL,
    conn_id character varying(250) NOT NULL,
    conn_type character varying(500) NOT NULL,
    description text,
    host character varying(500),
    schema character varying(500),
    login character varying(500),
    password character varying(5000),
    port integer,
    is_encrypted boolean,
    is_extra_encrypted boolean,
    extra text
);
    DROP TABLE public.connection;
       public         heap    airflow    false    4            �            1259    16464    connection_id_seq    SEQUENCE     �   CREATE SEQUENCE public.connection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.connection_id_seq;
       public          airflow    false    230    4            	           0    0    connection_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.connection_id_seq OWNED BY public.connection.id;
          public          airflow    false    229            �            1259    16454    dag    TABLE     �  CREATE TABLE public.dag (
    dag_id character varying(250) NOT NULL,
    root_dag_id character varying(250),
    is_paused boolean,
    is_subdag boolean,
    is_active boolean,
    last_parsed_time timestamp with time zone,
    last_pickled timestamp with time zone,
    last_expired timestamp with time zone,
    scheduler_lock boolean,
    pickle_id integer,
    fileloc character varying(2000),
    processor_subdir character varying(2000),
    owners character varying(2000),
    description text,
    default_view character varying(25),
    schedule_interval text,
    timetable_description character varying(1000),
    max_active_tasks integer NOT NULL,
    max_active_runs integer,
    has_task_concurrency_limits boolean NOT NULL,
    has_import_errors boolean DEFAULT false,
    next_dagrun timestamp with time zone,
    next_dagrun_data_interval_start timestamp with time zone,
    next_dagrun_data_interval_end timestamp with time zone,
    next_dagrun_create_after timestamp with time zone
);
    DROP TABLE public.dag;
       public         heap    airflow    false    4            �            1259    16385    dag_code    TABLE     �   CREATE TABLE public.dag_code (
    fileloc_hash bigint NOT NULL,
    fileloc character varying(2000) NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    source_code text NOT NULL
);
    DROP TABLE public.dag_code;
       public         heap    airflow    false    4                       1259    16684    dag_owner_attributes    TABLE     �   CREATE TABLE public.dag_owner_attributes (
    dag_id character varying(250) NOT NULL,
    owner character varying(500) NOT NULL,
    link character varying(500) NOT NULL
);
 (   DROP TABLE public.dag_owner_attributes;
       public         heap    airflow    false    4            �            1259    16393 
   dag_pickle    TABLE     �   CREATE TABLE public.dag_pickle (
    id integer NOT NULL,
    pickle bytea,
    created_dttm timestamp with time zone,
    pickle_hash bigint
);
    DROP TABLE public.dag_pickle;
       public         heap    airflow    false    4            �            1259    16392    dag_pickle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dag_pickle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.dag_pickle_id_seq;
       public          airflow    false    4    217            
           0    0    dag_pickle_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.dag_pickle_id_seq OWNED BY public.dag_pickle.id;
          public          airflow    false    216                       1259    16652    dag_run    TABLE     �  CREATE TABLE public.dag_run (
    id integer NOT NULL,
    dag_id character varying(250) NOT NULL,
    queued_at timestamp with time zone,
    execution_date timestamp with time zone NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    state character varying(50),
    run_id character varying(250) NOT NULL,
    creating_job_id integer,
    external_trigger boolean,
    run_type character varying(50) NOT NULL,
    conf bytea,
    data_interval_start timestamp with time zone,
    data_interval_end timestamp with time zone,
    last_scheduling_decision timestamp with time zone,
    dag_hash character varying(32),
    log_template_id integer,
    updated_at timestamp with time zone
);
    DROP TABLE public.dag_run;
       public         heap    airflow    false    4                        1259    16651    dag_run_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dag_run_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.dag_run_id_seq;
       public          airflow    false    4    257                       0    0    dag_run_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.dag_run_id_seq OWNED BY public.dag_run.id;
          public          airflow    false    256                       1259    16789    dag_run_note    TABLE     �   CREATE TABLE public.dag_run_note (
    user_id integer,
    dag_run_id integer NOT NULL,
    content character varying(1000),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
     DROP TABLE public.dag_run_note;
       public         heap    airflow    false    4            �            1259    16604    dag_schedule_dataset_reference    TABLE     �   CREATE TABLE public.dag_schedule_dataset_reference (
    dataset_id integer NOT NULL,
    dag_id character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 2   DROP TABLE public.dag_schedule_dataset_reference;
       public         heap    airflow    false    4                       1259    16674    dag_tag    TABLE     v   CREATE TABLE public.dag_tag (
    name character varying(100) NOT NULL,
    dag_id character varying(250) NOT NULL
);
    DROP TABLE public.dag_tag;
       public         heap    airflow    false    4                       1259    16696    dag_warning    TABLE     �   CREATE TABLE public.dag_warning (
    dag_id character varying(250) NOT NULL,
    warning_type character varying(50) NOT NULL,
    message text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL
);
    DROP TABLE public.dag_warning;
       public         heap    airflow    false    4            	           1259    16746    dagrun_dataset_event    TABLE     m   CREATE TABLE public.dagrun_dataset_event (
    dag_run_id integer NOT NULL,
    event_id integer NOT NULL
);
 (   DROP TABLE public.dagrun_dataset_event;
       public         heap    airflow    false    4            �            1259    16402    dataset    TABLE       CREATE TABLE public.dataset (
    id integer NOT NULL,
    uri character varying(3000) NOT NULL,
    extra json NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_orphaned boolean DEFAULT false NOT NULL
);
    DROP TABLE public.dataset;
       public         heap    airflow    false    4            �            1259    16636    dataset_dag_run_queue    TABLE     �   CREATE TABLE public.dataset_dag_run_queue (
    dataset_id integer NOT NULL,
    target_dag_id character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL
);
 )   DROP TABLE public.dataset_dag_run_queue;
       public         heap    airflow    false    4            �            1259    16413    dataset_event    TABLE     _  CREATE TABLE public.dataset_event (
    id integer NOT NULL,
    dataset_id integer NOT NULL,
    extra json NOT NULL,
    source_task_id character varying(250),
    source_dag_id character varying(250),
    source_run_id character varying(250),
    source_map_index integer DEFAULT '-1'::integer,
    "timestamp" timestamp with time zone NOT NULL
);
 !   DROP TABLE public.dataset_event;
       public         heap    airflow    false    4            �            1259    16412    dataset_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dataset_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.dataset_event_id_seq;
       public          airflow    false    4    221                       0    0    dataset_event_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.dataset_event_id_seq OWNED BY public.dataset_event.id;
          public          airflow    false    220            �            1259    16401    dataset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.dataset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.dataset_id_seq;
       public          airflow    false    219    4                       0    0    dataset_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.dataset_id_seq OWNED BY public.dataset.id;
          public          airflow    false    218                       1259    17009    dimension_cliente    TABLE     C   CREATE TABLE public.dimension_cliente (
    nombre_cliente text
);
 %   DROP TABLE public.dimension_cliente;
       public         heap    airflow    false    4                       1259    17014    dimension_fecha    TABLE     [   CREATE TABLE public.dimension_fecha (
    fecha text,
    mes bigint,
    "año" bigint
);
 #   DROP TABLE public.dimension_fecha;
       public         heap    airflow    false    4                       1259    17004    dimension_producto    TABLE     E   CREATE TABLE public.dimension_producto (
    nombre_producto text
);
 &   DROP TABLE public.dimension_producto;
       public         heap    airflow    false    4                       1259    17019    hechos_ventas    TABLE     �   CREATE TABLE public.hechos_ventas (
    id_producto bigint,
    id_cliente bigint,
    id_fecha bigint,
    cantidad bigint,
    total double precision
);
 !   DROP TABLE public.hechos_ventas;
       public         heap    airflow    false    4            �            1259    16485    import_error    TABLE     �   CREATE TABLE public.import_error (
    id integer NOT NULL,
    "timestamp" timestamp with time zone,
    filename character varying(1024),
    stacktrace text
);
     DROP TABLE public.import_error;
       public         heap    airflow    false    4            �            1259    16484    import_error_id_seq    SEQUENCE     �   CREATE SEQUENCE public.import_error_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.import_error_id_seq;
       public          airflow    false    4    234                       0    0    import_error_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.import_error_id_seq OWNED BY public.import_error.id;
          public          airflow    false    233            �            1259    16522    job    TABLE     �  CREATE TABLE public.job (
    id integer NOT NULL,
    dag_id character varying(250),
    state character varying(20),
    job_type character varying(30),
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    latest_heartbeat timestamp with time zone,
    executor_class character varying(500),
    hostname character varying(500),
    unixname character varying(1000)
);
    DROP TABLE public.job;
       public         heap    airflow    false    4            �            1259    16521 
   job_id_seq    SEQUENCE     �   CREATE SEQUENCE public.job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.job_id_seq;
       public          airflow    false    241    4                       0    0 
   job_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.job_id_seq OWNED BY public.job.id;
          public          airflow    false    240            �            1259    16424    log    TABLE     6  CREATE TABLE public.log (
    id integer NOT NULL,
    dttm timestamp with time zone,
    dag_id character varying(250),
    task_id character varying(250),
    map_index integer,
    event character varying(30),
    execution_date timestamp with time zone,
    owner character varying(500),
    extra text
);
    DROP TABLE public.log;
       public         heap    airflow    false    4            �            1259    16423 
   log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.log_id_seq;
       public          airflow    false    4    223                       0    0 
   log_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.log_id_seq OWNED BY public.log.id;
          public          airflow    false    222            �            1259    16446    log_template    TABLE     �   CREATE TABLE public.log_template (
    id integer NOT NULL,
    filename text NOT NULL,
    elasticsearch_id text NOT NULL,
    created_at timestamp with time zone NOT NULL
);
     DROP TABLE public.log_template;
       public         heap    airflow    false    4            �            1259    16445    log_template_id_seq    SEQUENCE     �   CREATE SEQUENCE public.log_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.log_template_id_seq;
       public          airflow    false    4    227                       0    0    log_template_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.log_template_id_seq OWNED BY public.log_template.id;
          public          airflow    false    226                       1259    16908    rendered_task_instance_fields    TABLE     +  CREATE TABLE public.rendered_task_instance_fields (
    dag_id character varying(250) NOT NULL,
    task_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    rendered_fields json NOT NULL,
    k8s_pod_yaml json
);
 1   DROP TABLE public.rendered_task_instance_fields;
       public         heap    airflow    false    4            �            1259    16533    serialized_dag    TABLE     \  CREATE TABLE public.serialized_dag (
    dag_id character varying(250) NOT NULL,
    fileloc character varying(2000) NOT NULL,
    fileloc_hash bigint NOT NULL,
    data json,
    data_compressed bytea,
    last_updated timestamp with time zone NOT NULL,
    dag_hash character varying(32) NOT NULL,
    processor_subdir character varying(2000)
);
 "   DROP TABLE public.serialized_dag;
       public         heap    airflow    false    4                       1259    16922    session    TABLE     �   CREATE TABLE public.session (
    id integer NOT NULL,
    session_id character varying(255),
    data bytea,
    expiry timestamp without time zone
);
    DROP TABLE public.session;
       public         heap    airflow    false    4                       1259    16921    session_id_seq    SEQUENCE     �   CREATE SEQUENCE public.session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.session_id_seq;
       public          airflow    false    279    4                       0    0    session_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.session_id_seq OWNED BY public.session.id;
          public          airflow    false    278            �            1259    16493    sla_miss    TABLE     '  CREATE TABLE public.sla_miss (
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    execution_date timestamp with time zone NOT NULL,
    email_sent boolean,
    "timestamp" timestamp with time zone,
    description text,
    notification_sent boolean
);
    DROP TABLE public.sla_miss;
       public         heap    airflow    false    4            �            1259    16435 	   slot_pool    TABLE     �   CREATE TABLE public.slot_pool (
    id integer NOT NULL,
    pool character varying(256),
    slots integer,
    description text,
    include_deferred boolean NOT NULL
);
    DROP TABLE public.slot_pool;
       public         heap    airflow    false    4            �            1259    16434    slot_pool_id_seq    SEQUENCE     �   CREATE SEQUENCE public.slot_pool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.slot_pool_id_seq;
       public          airflow    false    4    225                       0    0    slot_pool_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.slot_pool_id_seq OWNED BY public.slot_pool.id;
          public          airflow    false    224                       1259    16826 	   task_fail    TABLE     \  CREATE TABLE public.task_fail (
    id integer NOT NULL,
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    duration integer
);
    DROP TABLE public.task_fail;
       public         heap    airflow    false    4                       1259    16825    task_fail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.task_fail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.task_fail_id_seq;
       public          airflow    false    4    271                       0    0    task_fail_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.task_fail_id_seq OWNED BY public.task_fail.id;
          public          airflow    false    270            
           1259    16763    task_instance    TABLE     N  CREATE TABLE public.task_instance (
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    duration double precision,
    state character varying(20),
    try_number integer,
    max_tries integer DEFAULT '-1'::integer,
    hostname character varying(1000),
    unixname character varying(1000),
    job_id integer,
    pool character varying(256) NOT NULL,
    pool_slots integer NOT NULL,
    queue character varying(256),
    priority_weight integer,
    operator character varying(1000),
    queued_dttm timestamp with time zone,
    queued_by_job_id integer,
    pid integer,
    executor_config bytea,
    updated_at timestamp with time zone,
    external_executor_id character varying(250),
    trigger_id integer,
    trigger_timeout timestamp without time zone,
    next_method character varying(1000),
    next_kwargs json,
    custom_operator_name character varying(1000)
);
 !   DROP TABLE public.task_instance;
       public         heap    airflow    false    4                       1259    16891    task_instance_note    TABLE     n  CREATE TABLE public.task_instance_note (
    user_id integer,
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer NOT NULL,
    content character varying(1000),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 &   DROP TABLE public.task_instance_note;
       public         heap    airflow    false    4                       1259    16841    task_map    TABLE     A  CREATE TABLE public.task_map (
    dag_id character varying(250) NOT NULL,
    task_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer NOT NULL,
    length integer NOT NULL,
    keys json,
    CONSTRAINT ck_task_map_task_map_length_not_negative CHECK ((length >= 0))
);
    DROP TABLE public.task_map;
       public         heap    airflow    false    4            �            1259    16619    task_outlet_dataset_reference    TABLE       CREATE TABLE public.task_outlet_dataset_reference (
    dataset_id integer NOT NULL,
    dag_id character varying(250) NOT NULL,
    task_id character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 1   DROP TABLE public.task_outlet_dataset_reference;
       public         heap    airflow    false    4                       1259    16855    task_reschedule    TABLE     �  CREATE TABLE public.task_reschedule (
    id integer NOT NULL,
    task_id character varying(250) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    try_number integer NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date timestamp with time zone NOT NULL,
    duration integer NOT NULL,
    reschedule_date timestamp with time zone NOT NULL
);
 #   DROP TABLE public.task_reschedule;
       public         heap    airflow    false    4                       1259    16854    task_reschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.task_reschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.task_reschedule_id_seq;
       public          airflow    false    274    4                       0    0    task_reschedule_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.task_reschedule_id_seq OWNED BY public.task_reschedule.id;
          public          airflow    false    273            �            1259    16502    trigger    TABLE     �   CREATE TABLE public.trigger (
    id integer NOT NULL,
    classpath character varying(1000) NOT NULL,
    kwargs json NOT NULL,
    created_date timestamp with time zone NOT NULL,
    triggerer_id integer
);
    DROP TABLE public.trigger;
       public         heap    airflow    false    4            �            1259    16501    trigger_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trigger_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.trigger_id_seq;
       public          airflow    false    4    237                       0    0    trigger_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.trigger_id_seq OWNED BY public.trigger.id;
          public          airflow    false    236            �            1259    16511    variable    TABLE     �   CREATE TABLE public.variable (
    id integer NOT NULL,
    key character varying(250),
    val text,
    description text,
    is_encrypted boolean
);
    DROP TABLE public.variable;
       public         heap    airflow    false    4            �            1259    16510    variable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.variable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.variable_id_seq;
       public          airflow    false    239    4                       0    0    variable_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.variable_id_seq OWNED BY public.variable.id;
          public          airflow    false    238                       1259    16876    xcom    TABLE     f  CREATE TABLE public.xcom (
    dag_run_id integer NOT NULL,
    task_id character varying(250) NOT NULL,
    map_index integer DEFAULT '-1'::integer NOT NULL,
    key character varying(512) NOT NULL,
    dag_id character varying(250) NOT NULL,
    run_id character varying(250) NOT NULL,
    value bytea,
    "timestamp" timestamp with time zone NOT NULL
);
    DROP TABLE public.xcom;
       public         heap    airflow    false    4            ]           2604    16545    ab_permission id    DEFAULT     t   ALTER TABLE ONLY public.ab_permission ALTER COLUMN id SET DEFAULT nextval('public.ab_permission_id_seq'::regclass);
 ?   ALTER TABLE public.ab_permission ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    243    244    244            c           2604    16712    ab_permission_view id    DEFAULT     ~   ALTER TABLE ONLY public.ab_permission_view ALTER COLUMN id SET DEFAULT nextval('public.ab_permission_view_id_seq'::regclass);
 D   ALTER TABLE public.ab_permission_view ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    262    261    262            g           2604    16810    ab_permission_view_role id    DEFAULT     �   ALTER TABLE ONLY public.ab_permission_view_role ALTER COLUMN id SET DEFAULT nextval('public.ab_permission_view_role_id_seq'::regclass);
 I   ALTER TABLE public.ab_permission_view_role ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    268    269    269            a           2604    16596    ab_register_user id    DEFAULT     z   ALTER TABLE ONLY public.ab_register_user ALTER COLUMN id SET DEFAULT nextval('public.ab_register_user_id_seq'::regclass);
 B   ALTER TABLE public.ab_register_user ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    251    252    252            _           2604    16563 
   ab_role id    DEFAULT     h   ALTER TABLE ONLY public.ab_role ALTER COLUMN id SET DEFAULT nextval('public.ab_role_id_seq'::regclass);
 9   ALTER TABLE public.ab_role ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    247    248    248            `           2604    16572 
   ab_user id    DEFAULT     h   ALTER TABLE ONLY public.ab_user ALTER COLUMN id SET DEFAULT nextval('public.ab_user_id_seq'::regclass);
 9   ALTER TABLE public.ab_user ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    250    249    250            d           2604    16731    ab_user_role id    DEFAULT     r   ALTER TABLE ONLY public.ab_user_role ALTER COLUMN id SET DEFAULT nextval('public.ab_user_role_id_seq'::regclass);
 >   ALTER TABLE public.ab_user_role ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    264    263    264            ^           2604    16554    ab_view_menu id    DEFAULT     r   ALTER TABLE ONLY public.ab_view_menu ALTER COLUMN id SET DEFAULT nextval('public.ab_view_menu_id_seq'::regclass);
 >   ALTER TABLE public.ab_view_menu ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    246    245    246            X           2604    16479    callback_request id    DEFAULT     z   ALTER TABLE ONLY public.callback_request ALTER COLUMN id SET DEFAULT nextval('public.callback_request_id_seq'::regclass);
 B   ALTER TABLE public.callback_request ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    232    231    232            W           2604    16468    connection id    DEFAULT     n   ALTER TABLE ONLY public.connection ALTER COLUMN id SET DEFAULT nextval('public.connection_id_seq'::regclass);
 <   ALTER TABLE public.connection ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    230    229    230            N           2604    16396    dag_pickle id    DEFAULT     n   ALTER TABLE ONLY public.dag_pickle ALTER COLUMN id SET DEFAULT nextval('public.dag_pickle_id_seq'::regclass);
 <   ALTER TABLE public.dag_pickle ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    216    217    217            b           2604    16655 
   dag_run id    DEFAULT     h   ALTER TABLE ONLY public.dag_run ALTER COLUMN id SET DEFAULT nextval('public.dag_run_id_seq'::regclass);
 9   ALTER TABLE public.dag_run ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    257    256    257            O           2604    16405 
   dataset id    DEFAULT     h   ALTER TABLE ONLY public.dataset ALTER COLUMN id SET DEFAULT nextval('public.dataset_id_seq'::regclass);
 9   ALTER TABLE public.dataset ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    219    218    219            Q           2604    16416    dataset_event id    DEFAULT     t   ALTER TABLE ONLY public.dataset_event ALTER COLUMN id SET DEFAULT nextval('public.dataset_event_id_seq'::regclass);
 ?   ALTER TABLE public.dataset_event ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    221    220    221            Y           2604    16488    import_error id    DEFAULT     r   ALTER TABLE ONLY public.import_error ALTER COLUMN id SET DEFAULT nextval('public.import_error_id_seq'::regclass);
 >   ALTER TABLE public.import_error ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    234    233    234            \           2604    16525    job id    DEFAULT     `   ALTER TABLE ONLY public.job ALTER COLUMN id SET DEFAULT nextval('public.job_id_seq'::regclass);
 5   ALTER TABLE public.job ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    241    240    241            S           2604    16427    log id    DEFAULT     `   ALTER TABLE ONLY public.log ALTER COLUMN id SET DEFAULT nextval('public.log_id_seq'::regclass);
 5   ALTER TABLE public.log ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    223    222    223            U           2604    16449    log_template id    DEFAULT     r   ALTER TABLE ONLY public.log_template ALTER COLUMN id SET DEFAULT nextval('public.log_template_id_seq'::regclass);
 >   ALTER TABLE public.log_template ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    226    227    227            n           2604    16925 
   session id    DEFAULT     h   ALTER TABLE ONLY public.session ALTER COLUMN id SET DEFAULT nextval('public.session_id_seq'::regclass);
 9   ALTER TABLE public.session ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    278    279    279            T           2604    16438    slot_pool id    DEFAULT     l   ALTER TABLE ONLY public.slot_pool ALTER COLUMN id SET DEFAULT nextval('public.slot_pool_id_seq'::regclass);
 ;   ALTER TABLE public.slot_pool ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    225    224    225            h           2604    16829    task_fail id    DEFAULT     l   ALTER TABLE ONLY public.task_fail ALTER COLUMN id SET DEFAULT nextval('public.task_fail_id_seq'::regclass);
 ;   ALTER TABLE public.task_fail ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    271    270    271            j           2604    16858    task_reschedule id    DEFAULT     x   ALTER TABLE ONLY public.task_reschedule ALTER COLUMN id SET DEFAULT nextval('public.task_reschedule_id_seq'::regclass);
 A   ALTER TABLE public.task_reschedule ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    274    273    274            Z           2604    16505 
   trigger id    DEFAULT     h   ALTER TABLE ONLY public.trigger ALTER COLUMN id SET DEFAULT nextval('public.trigger_id_seq'::regclass);
 9   ALTER TABLE public.trigger ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    237    236    237            [           2604    16514    variable id    DEFAULT     j   ALTER TABLE ONLY public.variable ALTER COLUMN id SET DEFAULT nextval('public.variable_id_seq'::regclass);
 :   ALTER TABLE public.variable ALTER COLUMN id DROP DEFAULT;
       public          airflow    false    238    239    239            �          0    16542    ab_permission 
   TABLE DATA           1   COPY public.ab_permission (id, name) FROM stdin;
    public          airflow    false    244   Ε      �          0    16709    ab_permission_view 
   TABLE DATA           M   COPY public.ab_permission_view (id, permission_id, view_menu_id) FROM stdin;
    public          airflow    false    262   J�      �          0    16807    ab_permission_view_role 
   TABLE DATA           R   COPY public.ab_permission_view_role (id, permission_view_id, role_id) FROM stdin;
    public          airflow    false    269   ��      �          0    16593    ab_register_user 
   TABLE DATA           �   COPY public.ab_register_user (id, first_name, last_name, username, password, email, registration_date, registration_hash) FROM stdin;
    public          airflow    false    252   Ě      �          0    16560    ab_role 
   TABLE DATA           +   COPY public.ab_role (id, name) FROM stdin;
    public          airflow    false    248   �      �          0    16569    ab_user 
   TABLE DATA           �   COPY public.ab_user (id, first_name, last_name, username, password, active, email, last_login, login_count, fail_login_count, created_on, changed_on, created_by_fk, changed_by_fk) FROM stdin;
    public          airflow    false    250   "�      �          0    16728    ab_user_role 
   TABLE DATA           <   COPY public.ab_user_role (id, user_id, role_id) FROM stdin;
    public          airflow    false    264   �      �          0    16551    ab_view_menu 
   TABLE DATA           0   COPY public.ab_view_menu (id, name) FROM stdin;
    public          airflow    false    246   �      �          0    16932    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          airflow    false    280   �      �          0    16476    callback_request 
   TABLE DATA           {   COPY public.callback_request (id, created_at, priority_weight, callback_data, callback_type, processor_subdir) FROM stdin;
    public          airflow    false    232   �      �          0    16465 
   connection 
   TABLE DATA           �   COPY public.connection (id, conn_id, conn_type, description, host, schema, login, password, port, is_encrypted, is_extra_encrypted, extra) FROM stdin;
    public          airflow    false    230   7�      �          0    16454    dag 
   TABLE DATA           �  COPY public.dag (dag_id, root_dag_id, is_paused, is_subdag, is_active, last_parsed_time, last_pickled, last_expired, scheduler_lock, pickle_id, fileloc, processor_subdir, owners, description, default_view, schedule_interval, timetable_description, max_active_tasks, max_active_runs, has_task_concurrency_limits, has_import_errors, next_dagrun, next_dagrun_data_interval_start, next_dagrun_data_interval_end, next_dagrun_create_after) FROM stdin;
    public          airflow    false    228   ��      �          0    16385    dag_code 
   TABLE DATA           T   COPY public.dag_code (fileloc_hash, fileloc, last_updated, source_code) FROM stdin;
    public          airflow    false    215   }�      �          0    16684    dag_owner_attributes 
   TABLE DATA           C   COPY public.dag_owner_attributes (dag_id, owner, link) FROM stdin;
    public          airflow    false    259   ;�      �          0    16393 
   dag_pickle 
   TABLE DATA           K   COPY public.dag_pickle (id, pickle, created_dttm, pickle_hash) FROM stdin;
    public          airflow    false    217   X�      �          0    16652    dag_run 
   TABLE DATA           	  COPY public.dag_run (id, dag_id, queued_at, execution_date, start_date, end_date, state, run_id, creating_job_id, external_trigger, run_type, conf, data_interval_start, data_interval_end, last_scheduling_decision, dag_hash, log_template_id, updated_at) FROM stdin;
    public          airflow    false    257   u�      �          0    16789    dag_run_note 
   TABLE DATA           \   COPY public.dag_run_note (user_id, dag_run_id, content, created_at, updated_at) FROM stdin;
    public          airflow    false    267   ��      �          0    16604    dag_schedule_dataset_reference 
   TABLE DATA           d   COPY public.dag_schedule_dataset_reference (dataset_id, dag_id, created_at, updated_at) FROM stdin;
    public          airflow    false    253   ��      �          0    16674    dag_tag 
   TABLE DATA           /   COPY public.dag_tag (name, dag_id) FROM stdin;
    public          airflow    false    258   ��      �          0    16696    dag_warning 
   TABLE DATA           Q   COPY public.dag_warning (dag_id, warning_type, message, "timestamp") FROM stdin;
    public          airflow    false    260   ٭      �          0    16746    dagrun_dataset_event 
   TABLE DATA           D   COPY public.dagrun_dataset_event (dag_run_id, event_id) FROM stdin;
    public          airflow    false    265   ��      �          0    16402    dataset 
   TABLE DATA           V   COPY public.dataset (id, uri, extra, created_at, updated_at, is_orphaned) FROM stdin;
    public          airflow    false    219   �      �          0    16636    dataset_dag_run_queue 
   TABLE DATA           V   COPY public.dataset_dag_run_queue (dataset_id, target_dag_id, created_at) FROM stdin;
    public          airflow    false    255   0�      �          0    16413    dataset_event 
   TABLE DATA           �   COPY public.dataset_event (id, dataset_id, extra, source_task_id, source_dag_id, source_run_id, source_map_index, "timestamp") FROM stdin;
    public          airflow    false    221   M�      �          0    17009    dimension_cliente 
   TABLE DATA           ;   COPY public.dimension_cliente (nombre_cliente) FROM stdin;
    public          airflow    false    282   j�      �          0    17014    dimension_fecha 
   TABLE DATA           =   COPY public.dimension_fecha (fecha, mes, "año") FROM stdin;
    public          airflow    false    283   ��      �          0    17004    dimension_producto 
   TABLE DATA           =   COPY public.dimension_producto (nombre_producto) FROM stdin;
    public          airflow    false    281   ή      �          0    17019    hechos_ventas 
   TABLE DATA           [   COPY public.hechos_ventas (id_producto, id_cliente, id_fecha, cantidad, total) FROM stdin;
    public          airflow    false    284   ��      �          0    16485    import_error 
   TABLE DATA           M   COPY public.import_error (id, "timestamp", filename, stacktrace) FROM stdin;
    public          airflow    false    234   4�      �          0    16522    job 
   TABLE DATA           �   COPY public.job (id, dag_id, state, job_type, start_date, end_date, latest_heartbeat, executor_class, hostname, unixname) FROM stdin;
    public          airflow    false    241   Q�      �          0    16424    log 
   TABLE DATA           h   COPY public.log (id, dttm, dag_id, task_id, map_index, event, execution_date, owner, extra) FROM stdin;
    public          airflow    false    223   ��      �          0    16446    log_template 
   TABLE DATA           R   COPY public.log_template (id, filename, elasticsearch_id, created_at) FROM stdin;
    public          airflow    false    227   ��      �          0    16908    rendered_task_instance_fields 
   TABLE DATA           z   COPY public.rendered_task_instance_fields (dag_id, task_id, run_id, map_index, rendered_fields, k8s_pod_yaml) FROM stdin;
    public          airflow    false    277   ��      �          0    16533    serialized_dag 
   TABLE DATA           �   COPY public.serialized_dag (dag_id, fileloc, fileloc_hash, data, data_compressed, last_updated, dag_hash, processor_subdir) FROM stdin;
    public          airflow    false    242   w�      �          0    16922    session 
   TABLE DATA           ?   COPY public.session (id, session_id, data, expiry) FROM stdin;
    public          airflow    false    279   ��      �          0    16493    sla_miss 
   TABLE DATA           |   COPY public.sla_miss (task_id, dag_id, execution_date, email_sent, "timestamp", description, notification_sent) FROM stdin;
    public          airflow    false    235   ��      �          0    16435 	   slot_pool 
   TABLE DATA           S   COPY public.slot_pool (id, pool, slots, description, include_deferred) FROM stdin;
    public          airflow    false    225   ��      �          0    16826 	   task_fail 
   TABLE DATA           k   COPY public.task_fail (id, task_id, dag_id, run_id, map_index, start_date, end_date, duration) FROM stdin;
    public          airflow    false    271   %�      �          0    16763    task_instance 
   TABLE DATA           }  COPY public.task_instance (task_id, dag_id, run_id, map_index, start_date, end_date, duration, state, try_number, max_tries, hostname, unixname, job_id, pool, pool_slots, queue, priority_weight, operator, queued_dttm, queued_by_job_id, pid, executor_config, updated_at, external_executor_id, trigger_id, trigger_timeout, next_method, next_kwargs, custom_operator_name) FROM stdin;
    public          airflow    false    266   �      �          0    16891    task_instance_note 
   TABLE DATA           z   COPY public.task_instance_note (user_id, task_id, dag_id, run_id, map_index, content, created_at, updated_at) FROM stdin;
    public          airflow    false    276   ��      �          0    16841    task_map 
   TABLE DATA           T   COPY public.task_map (dag_id, task_id, run_id, map_index, length, keys) FROM stdin;
    public          airflow    false    272   ��      �          0    16619    task_outlet_dataset_reference 
   TABLE DATA           l   COPY public.task_outlet_dataset_reference (dataset_id, dag_id, task_id, created_at, updated_at) FROM stdin;
    public          airflow    false    254   �      �          0    16855    task_reschedule 
   TABLE DATA           �   COPY public.task_reschedule (id, task_id, dag_id, run_id, map_index, try_number, start_date, end_date, duration, reschedule_date) FROM stdin;
    public          airflow    false    274   +�      �          0    16502    trigger 
   TABLE DATA           T   COPY public.trigger (id, classpath, kwargs, created_date, triggerer_id) FROM stdin;
    public          airflow    false    237   H�      �          0    16511    variable 
   TABLE DATA           K   COPY public.variable (id, key, val, description, is_encrypted) FROM stdin;
    public          airflow    false    239   e�      �          0    16876    xcom 
   TABLE DATA           g   COPY public.xcom (dag_run_id, task_id, map_index, key, dag_id, run_id, value, "timestamp") FROM stdin;
    public          airflow    false    275   ��                 0    0    ab_permission_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ab_permission_id_seq', 16, true);
          public          airflow    false    243                       0    0    ab_permission_view_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.ab_permission_view_id_seq', 103, true);
          public          airflow    false    261                       0    0    ab_permission_view_role_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.ab_permission_view_role_id_seq', 236, true);
          public          airflow    false    268                       0    0    ab_register_user_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.ab_register_user_id_seq', 1, false);
          public          airflow    false    251                       0    0    ab_role_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ab_role_id_seq', 5, true);
          public          airflow    false    247                       0    0    ab_user_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ab_user_id_seq', 1, true);
          public          airflow    false    249                       0    0    ab_user_role_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ab_user_role_id_seq', 1, true);
          public          airflow    false    263                       0    0    ab_view_menu_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ab_view_menu_id_seq', 52, true);
          public          airflow    false    245                        0    0    callback_request_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.callback_request_id_seq', 1, false);
          public          airflow    false    231            !           0    0    connection_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.connection_id_seq', 58, true);
          public          airflow    false    229            "           0    0    dag_pickle_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.dag_pickle_id_seq', 1, false);
          public          airflow    false    216            #           0    0    dag_run_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.dag_run_id_seq', 3, true);
          public          airflow    false    256            $           0    0    dataset_event_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.dataset_event_id_seq', 1, false);
          public          airflow    false    220            %           0    0    dataset_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.dataset_id_seq', 1, false);
          public          airflow    false    218            &           0    0    import_error_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.import_error_id_seq', 1, true);
          public          airflow    false    233            '           0    0 
   job_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.job_id_seq', 53, true);
          public          airflow    false    240            (           0    0 
   log_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.log_id_seq', 198, true);
          public          airflow    false    222            )           0    0    log_template_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.log_template_id_seq', 2, true);
          public          airflow    false    226            *           0    0    session_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.session_id_seq', 24, true);
          public          airflow    false    278            +           0    0    slot_pool_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.slot_pool_id_seq', 1, true);
          public          airflow    false    224            ,           0    0    task_fail_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.task_fail_id_seq', 12, true);
          public          airflow    false    270            -           0    0    task_reschedule_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.task_reschedule_id_seq', 1, false);
          public          airflow    false    273            .           0    0    trigger_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.trigger_id_seq', 1, false);
          public          airflow    false    236            /           0    0    variable_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.variable_id_seq', 1, false);
          public          airflow    false    238            �           2606    16549 #   ab_permission ab_permission_name_uq 
   CONSTRAINT     ^   ALTER TABLE ONLY public.ab_permission
    ADD CONSTRAINT ab_permission_name_uq UNIQUE (name);
 M   ALTER TABLE ONLY public.ab_permission DROP CONSTRAINT ab_permission_name_uq;
       public            airflow    false    244            �           2606    16547     ab_permission ab_permission_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.ab_permission
    ADD CONSTRAINT ab_permission_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.ab_permission DROP CONSTRAINT ab_permission_pkey;
       public            airflow    false    244            �           2606    16716 C   ab_permission_view ab_permission_view_permission_id_view_menu_id_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_permission_id_view_menu_id_uq UNIQUE (permission_id, view_menu_id);
 m   ALTER TABLE ONLY public.ab_permission_view DROP CONSTRAINT ab_permission_view_permission_id_view_menu_id_uq;
       public            airflow    false    262    262            �           2606    16714 *   ab_permission_view ab_permission_view_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.ab_permission_view DROP CONSTRAINT ab_permission_view_pkey;
       public            airflow    false    262            �           2606    16814 M   ab_permission_view_role ab_permission_view_role_permission_view_id_role_id_uq 
   CONSTRAINT     �   ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_permission_view_id_role_id_uq UNIQUE (permission_view_id, role_id);
 w   ALTER TABLE ONLY public.ab_permission_view_role DROP CONSTRAINT ab_permission_view_role_permission_view_id_role_id_uq;
       public            airflow    false    269    269            �           2606    16812 4   ab_permission_view_role ab_permission_view_role_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.ab_permission_view_role DROP CONSTRAINT ab_permission_view_role_pkey;
       public            airflow    false    269            �           2606    16600 &   ab_register_user ab_register_user_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.ab_register_user
    ADD CONSTRAINT ab_register_user_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.ab_register_user DROP CONSTRAINT ab_register_user_pkey;
       public            airflow    false    252            �           2606    16949 -   ab_register_user ab_register_user_username_uq 
   CONSTRAINT     l   ALTER TABLE ONLY public.ab_register_user
    ADD CONSTRAINT ab_register_user_username_uq UNIQUE (username);
 W   ALTER TABLE ONLY public.ab_register_user DROP CONSTRAINT ab_register_user_username_uq;
       public            airflow    false    252            �           2606    16567    ab_role ab_role_name_uq 
   CONSTRAINT     R   ALTER TABLE ONLY public.ab_role
    ADD CONSTRAINT ab_role_name_uq UNIQUE (name);
 A   ALTER TABLE ONLY public.ab_role DROP CONSTRAINT ab_role_name_uq;
       public            airflow    false    248            �           2606    16565    ab_role ab_role_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ab_role
    ADD CONSTRAINT ab_role_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ab_role DROP CONSTRAINT ab_role_pkey;
       public            airflow    false    248            �           2606    16947    ab_user ab_user_email_uq 
   CONSTRAINT     T   ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_email_uq UNIQUE (email);
 B   ALTER TABLE ONLY public.ab_user DROP CONSTRAINT ab_user_email_uq;
       public            airflow    false    250            �           2606    16576    ab_user ab_user_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ab_user DROP CONSTRAINT ab_user_pkey;
       public            airflow    false    250            �           2606    16733    ab_user_role ab_user_role_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ab_user_role DROP CONSTRAINT ab_user_role_pkey;
       public            airflow    false    264            �           2606    16735 ,   ab_user_role ab_user_role_user_id_role_id_uq 
   CONSTRAINT     s   ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_user_id_role_id_uq UNIQUE (user_id, role_id);
 V   ALTER TABLE ONLY public.ab_user_role DROP CONSTRAINT ab_user_role_user_id_role_id_uq;
       public            airflow    false    264    264            �           2606    16944    ab_user ab_user_username_uq 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_username_uq UNIQUE (username);
 E   ALTER TABLE ONLY public.ab_user DROP CONSTRAINT ab_user_username_uq;
       public            airflow    false    250            �           2606    16558 !   ab_view_menu ab_view_menu_name_uq 
   CONSTRAINT     \   ALTER TABLE ONLY public.ab_view_menu
    ADD CONSTRAINT ab_view_menu_name_uq UNIQUE (name);
 K   ALTER TABLE ONLY public.ab_view_menu DROP CONSTRAINT ab_view_menu_name_uq;
       public            airflow    false    246            �           2606    16556    ab_view_menu ab_view_menu_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ab_view_menu
    ADD CONSTRAINT ab_view_menu_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ab_view_menu DROP CONSTRAINT ab_view_menu_pkey;
       public            airflow    false    246                       2606    16936 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            airflow    false    280            �           2606    16483 &   callback_request callback_request_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.callback_request
    ADD CONSTRAINT callback_request_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.callback_request DROP CONSTRAINT callback_request_pkey;
       public            airflow    false    232            �           2606    16474     connection connection_conn_id_uq 
   CONSTRAINT     ^   ALTER TABLE ONLY public.connection
    ADD CONSTRAINT connection_conn_id_uq UNIQUE (conn_id);
 J   ALTER TABLE ONLY public.connection DROP CONSTRAINT connection_conn_id_uq;
       public            airflow    false    230            �           2606    16472    connection connection_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.connection
    ADD CONSTRAINT connection_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.connection DROP CONSTRAINT connection_pkey;
       public            airflow    false    230            q           2606    16391    dag_code dag_code_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dag_code
    ADD CONSTRAINT dag_code_pkey PRIMARY KEY (fileloc_hash);
 @   ALTER TABLE ONLY public.dag_code DROP CONSTRAINT dag_code_pkey;
       public            airflow    false    215            �           2606    16690 .   dag_owner_attributes dag_owner_attributes_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.dag_owner_attributes
    ADD CONSTRAINT dag_owner_attributes_pkey PRIMARY KEY (dag_id, owner);
 X   ALTER TABLE ONLY public.dag_owner_attributes DROP CONSTRAINT dag_owner_attributes_pkey;
       public            airflow    false    259    259            s           2606    16400    dag_pickle dag_pickle_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.dag_pickle
    ADD CONSTRAINT dag_pickle_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.dag_pickle DROP CONSTRAINT dag_pickle_pkey;
       public            airflow    false    217            �           2606    16461    dag dag_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.dag
    ADD CONSTRAINT dag_pkey PRIMARY KEY (dag_id);
 6   ALTER TABLE ONLY public.dag DROP CONSTRAINT dag_pkey;
       public            airflow    false    228            �           2606    16661 )   dag_run dag_run_dag_id_execution_date_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.dag_run
    ADD CONSTRAINT dag_run_dag_id_execution_date_key UNIQUE (dag_id, execution_date);
 S   ALTER TABLE ONLY public.dag_run DROP CONSTRAINT dag_run_dag_id_execution_date_key;
       public            airflow    false    257    257            �           2606    16663 !   dag_run dag_run_dag_id_run_id_key 
   CONSTRAINT     f   ALTER TABLE ONLY public.dag_run
    ADD CONSTRAINT dag_run_dag_id_run_id_key UNIQUE (dag_id, run_id);
 K   ALTER TABLE ONLY public.dag_run DROP CONSTRAINT dag_run_dag_id_run_id_key;
       public            airflow    false    257    257            �           2606    16795    dag_run_note dag_run_note_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.dag_run_note
    ADD CONSTRAINT dag_run_note_pkey PRIMARY KEY (dag_run_id);
 H   ALTER TABLE ONLY public.dag_run_note DROP CONSTRAINT dag_run_note_pkey;
       public            airflow    false    267            �           2606    16659    dag_run dag_run_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.dag_run
    ADD CONSTRAINT dag_run_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.dag_run DROP CONSTRAINT dag_run_pkey;
       public            airflow    false    257            �           2606    16678    dag_tag dag_tag_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.dag_tag
    ADD CONSTRAINT dag_tag_pkey PRIMARY KEY (name, dag_id);
 >   ALTER TABLE ONLY public.dag_tag DROP CONSTRAINT dag_tag_pkey;
       public            airflow    false    258    258            �           2606    16702    dag_warning dag_warning_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.dag_warning
    ADD CONSTRAINT dag_warning_pkey PRIMARY KEY (dag_id, warning_type);
 F   ALTER TABLE ONLY public.dag_warning DROP CONSTRAINT dag_warning_pkey;
       public            airflow    false    260    260            �           2606    16750 .   dagrun_dataset_event dagrun_dataset_event_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.dagrun_dataset_event
    ADD CONSTRAINT dagrun_dataset_event_pkey PRIMARY KEY (dag_run_id, event_id);
 X   ALTER TABLE ONLY public.dagrun_dataset_event DROP CONSTRAINT dagrun_dataset_event_pkey;
       public            airflow    false    265    265            x           2606    16421     dataset_event dataset_event_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.dataset_event
    ADD CONSTRAINT dataset_event_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.dataset_event DROP CONSTRAINT dataset_event_pkey;
       public            airflow    false    221            u           2606    16410    dataset dataset_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT dataset_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.dataset DROP CONSTRAINT dataset_pkey;
       public            airflow    false    219            �           2606    16640 -   dataset_dag_run_queue datasetdagrunqueue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.dataset_dag_run_queue
    ADD CONSTRAINT datasetdagrunqueue_pkey PRIMARY KEY (dataset_id, target_dag_id);
 W   ALTER TABLE ONLY public.dataset_dag_run_queue DROP CONSTRAINT datasetdagrunqueue_pkey;
       public            airflow    false    255    255            �           2606    16608 (   dag_schedule_dataset_reference dsdr_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.dag_schedule_dataset_reference
    ADD CONSTRAINT dsdr_pkey PRIMARY KEY (dataset_id, dag_id);
 R   ALTER TABLE ONLY public.dag_schedule_dataset_reference DROP CONSTRAINT dsdr_pkey;
       public            airflow    false    253    253            �           2606    16492    import_error import_error_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.import_error
    ADD CONSTRAINT import_error_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.import_error DROP CONSTRAINT import_error_pkey;
       public            airflow    false    234            �           2606    16529    job job_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.job DROP CONSTRAINT job_pkey;
       public            airflow    false    241            ~           2606    16431    log log_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.log DROP CONSTRAINT log_pkey;
       public            airflow    false    223            �           2606    16453    log_template log_template_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.log_template
    ADD CONSTRAINT log_template_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.log_template DROP CONSTRAINT log_template_pkey;
       public            airflow    false    227            �           2606    16915 @   rendered_task_instance_fields rendered_task_instance_fields_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.rendered_task_instance_fields
    ADD CONSTRAINT rendered_task_instance_fields_pkey PRIMARY KEY (dag_id, task_id, run_id, map_index);
 j   ALTER TABLE ONLY public.rendered_task_instance_fields DROP CONSTRAINT rendered_task_instance_fields_pkey;
       public            airflow    false    277    277    277    277            �           2606    16539 "   serialized_dag serialized_dag_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.serialized_dag
    ADD CONSTRAINT serialized_dag_pkey PRIMARY KEY (dag_id);
 L   ALTER TABLE ONLY public.serialized_dag DROP CONSTRAINT serialized_dag_pkey;
       public            airflow    false    242            �           2606    16929    session session_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.session DROP CONSTRAINT session_pkey;
       public            airflow    false    279                       2606    16931    session session_session_id_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_session_id_key UNIQUE (session_id);
 H   ALTER TABLE ONLY public.session DROP CONSTRAINT session_session_id_key;
       public            airflow    false    279            �           2606    16499    sla_miss sla_miss_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.sla_miss
    ADD CONSTRAINT sla_miss_pkey PRIMARY KEY (task_id, dag_id, execution_date);
 @   ALTER TABLE ONLY public.sla_miss DROP CONSTRAINT sla_miss_pkey;
       public            airflow    false    235    235    235            �           2606    16442    slot_pool slot_pool_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.slot_pool
    ADD CONSTRAINT slot_pool_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.slot_pool DROP CONSTRAINT slot_pool_pkey;
       public            airflow    false    225            �           2606    16444    slot_pool slot_pool_pool_uq 
   CONSTRAINT     V   ALTER TABLE ONLY public.slot_pool
    ADD CONSTRAINT slot_pool_pool_uq UNIQUE (pool);
 E   ALTER TABLE ONLY public.slot_pool DROP CONSTRAINT slot_pool_pool_uq;
       public            airflow    false    225            �           2606    16834    task_fail task_fail_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.task_fail
    ADD CONSTRAINT task_fail_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.task_fail DROP CONSTRAINT task_fail_pkey;
       public            airflow    false    271            �           2606    16897 *   task_instance_note task_instance_note_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.task_instance_note
    ADD CONSTRAINT task_instance_note_pkey PRIMARY KEY (task_id, dag_id, run_id, map_index);
 T   ALTER TABLE ONLY public.task_instance_note DROP CONSTRAINT task_instance_note_pkey;
       public            airflow    false    276    276    276    276            �           2606    16771     task_instance task_instance_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.task_instance
    ADD CONSTRAINT task_instance_pkey PRIMARY KEY (dag_id, task_id, run_id, map_index);
 J   ALTER TABLE ONLY public.task_instance DROP CONSTRAINT task_instance_pkey;
       public            airflow    false    266    266    266    266            �           2606    16848    task_map task_map_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.task_map
    ADD CONSTRAINT task_map_pkey PRIMARY KEY (dag_id, task_id, run_id, map_index);
 @   ALTER TABLE ONLY public.task_map DROP CONSTRAINT task_map_pkey;
       public            airflow    false    272    272    272    272            �           2606    16863 $   task_reschedule task_reschedule_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.task_reschedule
    ADD CONSTRAINT task_reschedule_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.task_reschedule DROP CONSTRAINT task_reschedule_pkey;
       public            airflow    false    274            �           2606    16625 '   task_outlet_dataset_reference todr_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.task_outlet_dataset_reference
    ADD CONSTRAINT todr_pkey PRIMARY KEY (dataset_id, dag_id, task_id);
 Q   ALTER TABLE ONLY public.task_outlet_dataset_reference DROP CONSTRAINT todr_pkey;
       public            airflow    false    254    254    254            �           2606    16509    trigger trigger_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.trigger
    ADD CONSTRAINT trigger_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.trigger DROP CONSTRAINT trigger_pkey;
       public            airflow    false    237            �           2606    16520    variable variable_key_uq 
   CONSTRAINT     R   ALTER TABLE ONLY public.variable
    ADD CONSTRAINT variable_key_uq UNIQUE (key);
 B   ALTER TABLE ONLY public.variable DROP CONSTRAINT variable_key_uq;
       public            airflow    false    239            �           2606    16518    variable variable_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.variable
    ADD CONSTRAINT variable_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.variable DROP CONSTRAINT variable_pkey;
       public            airflow    false    239            �           2606    16883    xcom xcom_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.xcom
    ADD CONSTRAINT xcom_pkey PRIMARY KEY (dag_run_id, task_id, map_index, key);
 8   ALTER TABLE ONLY public.xcom DROP CONSTRAINT xcom_pkey;
       public            airflow    false    275    275    275    275            �           1259    16670    dag_id_state    INDEX     I   CREATE INDEX dag_id_state ON public.dag_run USING btree (dag_id, state);
     DROP INDEX public.dag_id_state;
       public            airflow    false    257    257            �           1259    16950    idx_ab_register_user_username    INDEX     t   CREATE UNIQUE INDEX idx_ab_register_user_username ON public.ab_register_user USING btree (lower((username)::text));
 1   DROP INDEX public.idx_ab_register_user_username;
       public            airflow    false    252    252            �           1259    16945    idx_ab_user_username    INDEX     b   CREATE UNIQUE INDEX idx_ab_user_username ON public.ab_user USING btree (lower((username)::text));
 (   DROP INDEX public.idx_ab_user_username;
       public            airflow    false    250    250            �           1259    16669    idx_dag_run_dag_id    INDEX     H   CREATE INDEX idx_dag_run_dag_id ON public.dag_run USING btree (dag_id);
 &   DROP INDEX public.idx_dag_run_dag_id;
       public            airflow    false    257            �           1259    16671    idx_dag_run_queued_dags    INDEX     {   CREATE INDEX idx_dag_run_queued_dags ON public.dag_run USING btree (state, dag_id) WHERE ((state)::text = 'queued'::text);
 +   DROP INDEX public.idx_dag_run_queued_dags;
       public            airflow    false    257    257    257            �           1259    16672    idx_dag_run_running_dags    INDEX     }   CREATE INDEX idx_dag_run_running_dags ON public.dag_run USING btree (state, dag_id) WHERE ((state)::text = 'running'::text);
 ,   DROP INDEX public.idx_dag_run_running_dags;
       public            airflow    false    257    257    257            �           1259    16762 $   idx_dagrun_dataset_events_dag_run_id    INDEX     k   CREATE INDEX idx_dagrun_dataset_events_dag_run_id ON public.dagrun_dataset_event USING btree (dag_run_id);
 8   DROP INDEX public.idx_dagrun_dataset_events_dag_run_id;
       public            airflow    false    265            �           1259    16761 "   idx_dagrun_dataset_events_event_id    INDEX     g   CREATE INDEX idx_dagrun_dataset_events_event_id ON public.dagrun_dataset_event USING btree (event_id);
 6   DROP INDEX public.idx_dagrun_dataset_events_event_id;
       public            airflow    false    265            y           1259    16422    idx_dataset_id_timestamp    INDEX     e   CREATE INDEX idx_dataset_id_timestamp ON public.dataset_event USING btree (dataset_id, "timestamp");
 ,   DROP INDEX public.idx_dataset_id_timestamp;
       public            airflow    false    221    221            �           1259    16540    idx_fileloc_hash    INDEX     S   CREATE INDEX idx_fileloc_hash ON public.serialized_dag USING btree (fileloc_hash);
 $   DROP INDEX public.idx_fileloc_hash;
       public            airflow    false    242            �           1259    16531    idx_job_dag_id    INDEX     @   CREATE INDEX idx_job_dag_id ON public.job USING btree (dag_id);
 "   DROP INDEX public.idx_job_dag_id;
       public            airflow    false    241            �           1259    16532    idx_job_state_heartbeat    INDEX     Z   CREATE INDEX idx_job_state_heartbeat ON public.job USING btree (state, latest_heartbeat);
 +   DROP INDEX public.idx_job_state_heartbeat;
       public            airflow    false    241    241            �           1259    16673    idx_last_scheduling_decision    INDEX     d   CREATE INDEX idx_last_scheduling_decision ON public.dag_run USING btree (last_scheduling_decision);
 0   DROP INDEX public.idx_last_scheduling_decision;
       public            airflow    false    257            z           1259    16433    idx_log_dag    INDEX     =   CREATE INDEX idx_log_dag ON public.log USING btree (dag_id);
    DROP INDEX public.idx_log_dag;
       public            airflow    false    223            {           1259    16942    idx_log_dttm    INDEX     <   CREATE INDEX idx_log_dttm ON public.log USING btree (dttm);
     DROP INDEX public.idx_log_dttm;
       public            airflow    false    223            |           1259    16432    idx_log_event    INDEX     >   CREATE INDEX idx_log_event ON public.log USING btree (event);
 !   DROP INDEX public.idx_log_event;
       public            airflow    false    223            �           1259    16462    idx_next_dagrun_create_after    INDEX     `   CREATE INDEX idx_next_dagrun_create_after ON public.dag USING btree (next_dagrun_create_after);
 0   DROP INDEX public.idx_next_dagrun_create_after;
       public            airflow    false    228            �           1259    16463    idx_root_dag_id    INDEX     F   CREATE INDEX idx_root_dag_id ON public.dag USING btree (root_dag_id);
 #   DROP INDEX public.idx_root_dag_id;
       public            airflow    false    228            �           1259    16840    idx_task_fail_task_instance    INDEX     o   CREATE INDEX idx_task_fail_task_instance ON public.task_fail USING btree (dag_id, task_id, run_id, map_index);
 /   DROP INDEX public.idx_task_fail_task_instance;
       public            airflow    false    271    271    271    271            �           1259    16875    idx_task_reschedule_dag_run    INDEX     a   CREATE INDEX idx_task_reschedule_dag_run ON public.task_reschedule USING btree (dag_id, run_id);
 /   DROP INDEX public.idx_task_reschedule_dag_run;
       public            airflow    false    274    274            �           1259    16874     idx_task_reschedule_dag_task_run    INDEX     z   CREATE INDEX idx_task_reschedule_dag_task_run ON public.task_reschedule USING btree (dag_id, task_id, run_id, map_index);
 4   DROP INDEX public.idx_task_reschedule_dag_task_run;
       public            airflow    false    274    274    274    274            v           1259    16411    idx_uri_unique    INDEX     H   CREATE UNIQUE INDEX idx_uri_unique ON public.dataset USING btree (uri);
 "   DROP INDEX public.idx_uri_unique;
       public            airflow    false    219            �           1259    16889    idx_xcom_key    INDEX     <   CREATE INDEX idx_xcom_key ON public.xcom USING btree (key);
     DROP INDEX public.idx_xcom_key;
       public            airflow    false    275            �           1259    16890    idx_xcom_task_instance    INDEX     e   CREATE INDEX idx_xcom_task_instance ON public.xcom USING btree (dag_id, task_id, run_id, map_index);
 *   DROP INDEX public.idx_xcom_task_instance;
       public            airflow    false    275    275    275    275            �           1259    16530    job_type_heart    INDEX     T   CREATE INDEX job_type_heart ON public.job USING btree (job_type, latest_heartbeat);
 "   DROP INDEX public.job_type_heart;
       public            airflow    false    241    241            �           1259    16500    sm_dag    INDEX     =   CREATE INDEX sm_dag ON public.sla_miss USING btree (dag_id);
    DROP INDEX public.sm_dag;
       public            airflow    false    235            �           1259    16782 
   ti_dag_run    INDEX     N   CREATE INDEX ti_dag_run ON public.task_instance USING btree (dag_id, run_id);
    DROP INDEX public.ti_dag_run;
       public            airflow    false    266    266            �           1259    16786    ti_dag_state    INDEX     O   CREATE INDEX ti_dag_state ON public.task_instance USING btree (dag_id, state);
     DROP INDEX public.ti_dag_state;
       public            airflow    false    266    266            �           1259    16787 	   ti_job_id    INDEX     E   CREATE INDEX ti_job_id ON public.task_instance USING btree (job_id);
    DROP INDEX public.ti_job_id;
       public            airflow    false    266            �           1259    16785    ti_pool    INDEX     Y   CREATE INDEX ti_pool ON public.task_instance USING btree (pool, state, priority_weight);
    DROP INDEX public.ti_pool;
       public            airflow    false    266    266    266            �           1259    16784    ti_state    INDEX     C   CREATE INDEX ti_state ON public.task_instance USING btree (state);
    DROP INDEX public.ti_state;
       public            airflow    false    266            �           1259    16956    ti_state_incl_start_date    INDEX     y   CREATE INDEX ti_state_incl_start_date ON public.task_instance USING btree (dag_id, task_id, state) INCLUDE (start_date);
 ,   DROP INDEX public.ti_state_incl_start_date;
       public            airflow    false    266    266    266    266            �           1259    16788    ti_state_lkp    INDEX     `   CREATE INDEX ti_state_lkp ON public.task_instance USING btree (dag_id, task_id, run_id, state);
     DROP INDEX public.ti_state_lkp;
       public            airflow    false    266    266    266    266            �           1259    16783    ti_trigger_id    INDEX     M   CREATE INDEX ti_trigger_id ON public.task_instance USING btree (trigger_id);
 !   DROP INDEX public.ti_trigger_id;
       public            airflow    false    266                       2606    16717 8   ab_permission_view ab_permission_view_permission_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES public.ab_permission(id);
 b   ALTER TABLE ONLY public.ab_permission_view DROP CONSTRAINT ab_permission_view_permission_id_fkey;
       public          airflow    false    3493    244    262                       2606    16815 G   ab_permission_view_role ab_permission_view_role_permission_view_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_permission_view_id_fkey FOREIGN KEY (permission_view_id) REFERENCES public.ab_permission_view(id);
 q   ALTER TABLE ONLY public.ab_permission_view_role DROP CONSTRAINT ab_permission_view_role_permission_view_id_fkey;
       public          airflow    false    269    3540    262                       2606    16820 <   ab_permission_view_role ab_permission_view_role_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.ab_role(id);
 f   ALTER TABLE ONLY public.ab_permission_view_role DROP CONSTRAINT ab_permission_view_role_role_id_fkey;
       public          airflow    false    248    269    3501                       2606    16722 7   ab_permission_view ab_permission_view_view_menu_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ab_permission_view
    ADD CONSTRAINT ab_permission_view_view_menu_id_fkey FOREIGN KEY (view_menu_id) REFERENCES public.ab_view_menu(id);
 a   ALTER TABLE ONLY public.ab_permission_view DROP CONSTRAINT ab_permission_view_view_menu_id_fkey;
       public          airflow    false    3497    262    246                       2606    16586 "   ab_user ab_user_changed_by_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES public.ab_user(id);
 L   ALTER TABLE ONLY public.ab_user DROP CONSTRAINT ab_user_changed_by_fk_fkey;
       public          airflow    false    250    3505    250                       2606    16581 "   ab_user ab_user_created_by_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ab_user
    ADD CONSTRAINT ab_user_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES public.ab_user(id);
 L   ALTER TABLE ONLY public.ab_user DROP CONSTRAINT ab_user_created_by_fk_fkey;
       public          airflow    false    250    250    3505                       2606    16741 &   ab_user_role ab_user_role_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.ab_role(id);
 P   ALTER TABLE ONLY public.ab_user_role DROP CONSTRAINT ab_user_role_role_id_fkey;
       public          airflow    false    264    3501    248                       2606    16736 &   ab_user_role ab_user_role_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ab_user_role
    ADD CONSTRAINT ab_user_role_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);
 P   ALTER TABLE ONLY public.ab_user_role DROP CONSTRAINT ab_user_role_user_id_fkey;
       public          airflow    false    3505    264    250                       2606    16691    dag_owner_attributes dag.dag_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dag_owner_attributes
    ADD CONSTRAINT "dag.dag_id" FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.dag_owner_attributes DROP CONSTRAINT "dag.dag_id";
       public          airflow    false    228    3462    259                       2606    16796 !   dag_run_note dag_run_note_dr_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dag_run_note
    ADD CONSTRAINT dag_run_note_dr_fkey FOREIGN KEY (dag_run_id) REFERENCES public.dag_run(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.dag_run_note DROP CONSTRAINT dag_run_note_dr_fkey;
       public          airflow    false    3526    267    257                       2606    16801 #   dag_run_note dag_run_note_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dag_run_note
    ADD CONSTRAINT dag_run_note_user_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);
 M   ALTER TABLE ONLY public.dag_run_note DROP CONSTRAINT dag_run_note_user_fkey;
       public          airflow    false    3505    267    250                       2606    16679    dag_tag dag_tag_dag_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dag_tag
    ADD CONSTRAINT dag_tag_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.dag_tag DROP CONSTRAINT dag_tag_dag_id_fkey;
       public          airflow    false    3462    258    228                       2606    16751 9   dagrun_dataset_event dagrun_dataset_event_dag_run_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dagrun_dataset_event
    ADD CONSTRAINT dagrun_dataset_event_dag_run_id_fkey FOREIGN KEY (dag_run_id) REFERENCES public.dag_run(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.dagrun_dataset_event DROP CONSTRAINT dagrun_dataset_event_dag_run_id_fkey;
       public          airflow    false    3526    257    265                       2606    16756 7   dagrun_dataset_event dagrun_dataset_event_event_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dagrun_dataset_event
    ADD CONSTRAINT dagrun_dataset_event_event_id_fkey FOREIGN KEY (event_id) REFERENCES public.dataset_event(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.dagrun_dataset_event DROP CONSTRAINT dagrun_dataset_event_event_id_fkey;
       public          airflow    false    3448    265    221                       2606    16703    dag_warning dcw_dag_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dag_warning
    ADD CONSTRAINT dcw_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.dag_warning DROP CONSTRAINT dcw_dag_id_fkey;
       public          airflow    false    3462    228    260            
           2606    16646 #   dataset_dag_run_queue ddrq_dag_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset_dag_run_queue
    ADD CONSTRAINT ddrq_dag_fkey FOREIGN KEY (target_dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.dataset_dag_run_queue DROP CONSTRAINT ddrq_dag_fkey;
       public          airflow    false    255    228    3462                       2606    16641 '   dataset_dag_run_queue ddrq_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dataset_dag_run_queue
    ADD CONSTRAINT ddrq_dataset_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.dataset_dag_run_queue DROP CONSTRAINT ddrq_dataset_fkey;
       public          airflow    false    3445    255    219                       2606    16614 /   dag_schedule_dataset_reference dsdr_dag_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dag_schedule_dataset_reference
    ADD CONSTRAINT dsdr_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.dag_schedule_dataset_reference DROP CONSTRAINT dsdr_dag_id_fkey;
       public          airflow    false    3462    253    228                       2606    16609 0   dag_schedule_dataset_reference dsdr_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dag_schedule_dataset_reference
    ADD CONSTRAINT dsdr_dataset_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.dag_schedule_dataset_reference DROP CONSTRAINT dsdr_dataset_fkey;
       public          airflow    false    3445    253    219            #           2606    16916 *   rendered_task_instance_fields rtif_ti_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rendered_task_instance_fields
    ADD CONSTRAINT rtif_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.rendered_task_instance_fields DROP CONSTRAINT rtif_ti_fkey;
       public          airflow    false    266    277    277    277    277    3550    266    266    266                       2606    16835    task_fail task_fail_ti_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.task_fail
    ADD CONSTRAINT task_fail_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;
 E   ALTER TABLE ONLY public.task_fail DROP CONSTRAINT task_fail_ti_fkey;
       public          airflow    false    271    3550    266    266    271    266    271    266    271                       2606    16777 (   task_instance task_instance_dag_run_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.task_instance
    ADD CONSTRAINT task_instance_dag_run_fkey FOREIGN KEY (dag_id, run_id) REFERENCES public.dag_run(dag_id, run_id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.task_instance DROP CONSTRAINT task_instance_dag_run_fkey;
       public          airflow    false    257    266    266    3524    257                       2606    16664 *   dag_run task_instance_log_template_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dag_run
    ADD CONSTRAINT task_instance_log_template_id_fkey FOREIGN KEY (log_template_id) REFERENCES public.log_template(id);
 T   ALTER TABLE ONLY public.dag_run DROP CONSTRAINT task_instance_log_template_id_fkey;
       public          airflow    false    227    257    3460            !           2606    16898 -   task_instance_note task_instance_note_ti_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.task_instance_note
    ADD CONSTRAINT task_instance_note_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.task_instance_note DROP CONSTRAINT task_instance_note_ti_fkey;
       public          airflow    false    266    266    266    266    3550    276    276    276    276            "           2606    16903 /   task_instance_note task_instance_note_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.task_instance_note
    ADD CONSTRAINT task_instance_note_user_fkey FOREIGN KEY (user_id) REFERENCES public.ab_user(id);
 Y   ALTER TABLE ONLY public.task_instance_note DROP CONSTRAINT task_instance_note_user_fkey;
       public          airflow    false    250    3505    276                       2606    16772 +   task_instance task_instance_trigger_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.task_instance
    ADD CONSTRAINT task_instance_trigger_id_fkey FOREIGN KEY (trigger_id) REFERENCES public.trigger(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.task_instance DROP CONSTRAINT task_instance_trigger_id_fkey;
       public          airflow    false    237    3477    266                       2606    16951 $   task_map task_map_task_instance_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.task_map
    ADD CONSTRAINT task_map_task_instance_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.task_map DROP CONSTRAINT task_map_task_instance_fkey;
       public          airflow    false    3550    272    272    272    272    266    266    266    266                       2606    16869 '   task_reschedule task_reschedule_dr_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.task_reschedule
    ADD CONSTRAINT task_reschedule_dr_fkey FOREIGN KEY (dag_id, run_id) REFERENCES public.dag_run(dag_id, run_id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.task_reschedule DROP CONSTRAINT task_reschedule_dr_fkey;
       public          airflow    false    274    257    257    3524    274                       2606    16864 '   task_reschedule task_reschedule_ti_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.task_reschedule
    ADD CONSTRAINT task_reschedule_ti_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.task_reschedule DROP CONSTRAINT task_reschedule_ti_fkey;
       public          airflow    false    266    266    3550    274    274    266    274    266    274                       2606    16631 .   task_outlet_dataset_reference todr_dag_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.task_outlet_dataset_reference
    ADD CONSTRAINT todr_dag_id_fkey FOREIGN KEY (dag_id) REFERENCES public.dag(dag_id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.task_outlet_dataset_reference DROP CONSTRAINT todr_dag_id_fkey;
       public          airflow    false    3462    254    228            	           2606    16626 /   task_outlet_dataset_reference todr_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.task_outlet_dataset_reference
    ADD CONSTRAINT todr_dataset_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.task_outlet_dataset_reference DROP CONSTRAINT todr_dataset_fkey;
       public          airflow    false    219    254    3445                        2606    16884    xcom xcom_task_instance_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.xcom
    ADD CONSTRAINT xcom_task_instance_fkey FOREIGN KEY (dag_id, task_id, run_id, map_index) REFERENCES public.task_instance(dag_id, task_id, run_id, map_index) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.xcom DROP CONSTRAINT xcom_task_instance_fkey;
       public          airflow    false    266    266    266    266    3550    275    275    275    275            �   l   x�m�K
�0Dמ��OOSBV@`+P+���tS�J�͌(	������r�<P:�b��h�5U�scm4�z�oE�%Z�JS���;�Z�Џ�݄�������z � �P9g      �   R  x��ە�0��b������_�j��@Bd���R��q)����v�u��]]�W������{���Cs�pNM$ "p��B��4�O�@nnv�Q,�h��(�1���R������s�5�3���(-� z��Z�l���zf뙭w��g��U�O��7�z��77uO��5T��T�r�
�%7�u�Ҧ��kz8M�C����?��j�c|�����3��&?�C�m�Cn�fa��0{x0a^L�ͼ�:�E�m�l�&z9t1��˥s���\:K��{�7�D��f����_n=.�G�&��41�KU��W^�A;�ay�;�M��$�!�k`      �     x��э�0�7�<X�DR�\�u�k�\��j�,-����1>������T>��ǧ�����o��|���8�X�%x�5��E��Uؖe����o/��������Ʒ�6����vi�ۭ�o?m|�)��R����'�#⋣�W�/R�/J�/Z�/���t𝥃�l|'t&3���\|'u�����{t'U���7u����z�u��}�\/?%�˥�z��\/C�/�_^��7
_�_�_>%��T�j���V�P᫣�WW��R5;��W��WO��?5�^j|���:������U��T��RO�\&|�؇�=���K֭7���z�S^�|�k���W���w;����ͺtg�<6�6���GJ�My��S������T̰y0 x2��h��k@R2�Hh�x����;�cX$l� �,�C�% �(� �@ KX��YݤY��}k��*�H�$��h"��6�x�:�|�� �H�K$@	PD4� �H�#�]�usQ�Jg�������@ �I 4� ��]Ϡ)0-�f�����4`�L� ��Jۼmc�m��6`�Lۀi0m�m����z�Lۀi0m�m�����6`�L������m.�f�A��!Z�-�D���s�z�2`1���� �
�p�v@2�b�����w�r`1���Pf��1\�8�r���@3��G�������i� 8� ����0�&L�?�c�7�cNlo-�ɰ��1��3�|K޸77ɏч���������      �      x������ � �      �   1   x�3�tL����2�(M��L�2��L-O-�2�-R���\1z\\\ �      �   �   x�u��n�0��W�pk��$����H�O1a16�<�>B�4YL1�4�tȵ�б�+�_�M�� �s�"�m����<;\Zy�z�;5>�9y���nZ�� �e�E�����sv��3'�����ki�>ʺ�uJ��5�����`��&�1�ۃ�=؏�d�v�h%b��8���N�ݩ���H?�      �      x�3�4�4����� �X      �   �  x�MRˎ�0<S_�[oE,�y��u�"E�>z(�Pl�j����ߗ�S ���P��ac:����&$�x=$X��Z5`"%�s7���>��T��t����_�O�f	/�+�j糉�38b���"��@�('˝�0;z�]�\��"/���%���ec{��vN�a:���\@����fK8��`�x��(�.'��Q�+�Ae{����~���Pk{�a��Gv��,���͡���+%t�g[�qe�:����n�F�<+�'�畉ъ٤p���]��"�g��>ή�А9�>X5�YQ1xo�(ḭ�7Ky<C�u<���Cw��K����`kկ��L��MK��uQ�ΰ�v2�h`����r����6�h|
)�*
|0��x%�[KV��tyC�r��FXyM�^5�7<9�QT94Cp�?G��G�DU��U�W����7e�B�!�^��*�����      �      x�310MI�06�H2N����� )��      �      x������ � �      �   k  x��Xos��|
��m�c �����!��I C�unz�0\d�'��hz��ݕe�Lr�mB�w�߮��]��Mh W\�傄{���o�`�)D�\�������!t��%[є'�l^�?fh����y���<��8��O��7޻�Jb^���E%^*y�C�^�|��}������P�P��d̊�ԗ4���ѐi�7���ᣛͣ��Z��3?	DdG��ww�h>�N̸�ϋ�Q�2=�#�B2�j:�p�$�Շf�����q��>5��JDcDK�S��%'�M�d�,وef��7|x���f���;�r4so���e<�e}�j'~�	�h�h�sw2��k��L&�*�i� t܍GC�@�������g䜓�I�E,��,�����x���a6��q{�ʦ�t�N����|�(��ܫ�=5nU�g?WPVW���ħJ�h)i)88��>�V�����Q��:�e�p.|�7B���-��5�p�.rr|�,e��ՅT���V���L@1<��$ZN����FӂK�f^��u�!+[�v@I,���Rlh&����۲�k�(g�2����ӄt��;F8���J��IC�-ķ+�C�L6��̈́�-��ƩJ_1*Ki�{h�|p˝V�؂a�5<W��Q<�`<M���?����\�tUމ���:�y��%(��b}�H�-K�G�p!��*E�g�E�������F�1�TB#�)�rz����-���[�����L�5�:3*2�鳨|6�K��8��UƟ33.d�s��`��%,��$
�=�����ƽNnޅ�1<S<�嗠�}����p~p*ו^t>
��y��7d��uGp��l;����G�V���9��3���)H��gE�b�p����ϐ$����nX4�	�A���U.P�1�l"΄����v�^����׿*Xp6CΟ�8�D�U����.���<w�x7Y���*�#�ρ���6��7����G�4��r���S=;Q�ǃ�^�8����)��Egs��ܖ�qkЙ�Ux�1��ȋ�YQ�-���r�P��׎��L�չ�^ta]��_9��p��6����-�b����!�х&`~��I����ZO�}|���[w��Տl���`W��WL�jkbUuM�B�9tl\��~��9MVB�FJ>樲�$# �6�ú�PB��2��K=��p�"����n�p�0_��EBڀz�9Pcx�ӄ�t[ׇGE{��v�>/��!�y��w�MLB�ì�-��mq:d��eZRGm���~<!�_���շ���1�\�f����{�B�̷����q�I��+���ª�o-^���	4�[v��b��u���3C�@��w���⚄"Z�B��]<d��j��9H�`-��VV ��N��_ieF���^�t�D�j͢���[�8z:���y8I�oXH3u1��;l��=�]������sUv8�3٭Gb
����l�g2h�����[�kU�,�J�<�?뒭�5B����̛f��>�B�<q]t�$����o��NF"��2,ū�U��M3�+�|��7��L�u��7y�< �>�A�Z��P�@��s�G�҂�IoM�����5��tK����B�6#�LK��l��k
����w"0A��E����&X%e�f�w�z@������;G�c�v�U�]�|�ۼ?Ɵ瞹1�v'xw��
��B�N���A��b��}A1�7�wZ<�)�X�2���*���"��;DQ��ξ��e�5�t������ �R${[��„Ql��U�ѕU�0����Ҍ���K��.Q���đ�����0e�V�w��Ԧ,=�(G$<��q�o���QشX�H��=�щE@�e0��F� �@���4��f��÷��X>r�>��(�)���E�NB�	,����^G�_⌦�ФT�V#����ל�\[��C��@�Mz-��B�]փtY���a��7�ܩ�s���{m�HH�VR�JC=�<�չo/�]a�^�x�uȎ*[Y!Q���>J9CtɎ-6�R5�D��V��������/��8�z�H��\<��N���^�aL��tFV��i�zv��dKW[�T���LT"il���zv�~p��n��qqq�&	��      �   �   x���M
�@����mQ��(�� t�m7��j� ��#�qz�^�3��PJK�&/�G^I�!YT���I�'1��n�wpԥ�38,rx��'<N����0��1���'�Q+���=������ux4��[H��Qߋ��3�������ylK�l+�7��bC���D���L���������a[�kY��k[�      �   �  x�͗�N�:������?ҲR�B�%R��R��ѻ�1Pdb���ƙ�@����#\�G���q�4Ii%`�}>||��N�f���j�w����v������#����f�����a���w��XRh���l��h�l6v7[oP���p�n4�^�͍M�s��b5��E�\�+C�'Ȍ��$�B�������#*��B��j��L�,i��t��'��ܻn�0�@+*3u�g��#n4�L�	�����@���D8$X"�"2�_�c:�?yG�N�����'���'��Ng�������P`t�%Տ�����ퟞ������w>�x|��Ȋ�T#Aa�ב��<����Ȏ��˴���I-�z��;��?��;�{���IO�$0�P2z��$�7�ݓ��頷L�5����Qg�ڐ�cJG��?�>���y�81��5���ҩ!t�2J�U���؎dչ�,�J��$���Χ�W�����'Dg�O}�Z��[�JD!�\	�'�A���u��[��V׺L���C����q(��V�h�TH�)(���TTYƁ1Vb���a]q�T���4tS�5Ć�2��kا6tB��!$��N#�BU���.�eZ-��>e�3.�V6éO�{�@�$�,�3��00��ς���[���Vz�#����������u̦$� �V� �+�3��(y������֗���?4hY��b㯟��v��e�}a�L-^��d��Q���Ж������hj��V��m]�
�*��n�$�w'��6����g��zJ�ܿ4�I!���һ�I|%Ч���d���mA5�]�T
;�
�9���>#�$򆆴��풊�
��Qo$:������%�V�֥���%Ξ�h������&��v�m>�m dL	F%��Ů�'<���i�2aa��]�[=�Sc}��d��<F\{�1,��[l���,R��]��s_�d"M!�=]�}����0�D�zP*�q���f�l���P:N�fg�J�j�>V�8�R����K�0�.x�<�Nh��$�خ�\�.��d��ʧ�J����ӂ]X����؍��Ҩh#�5#�)�!;S�DLS�b�fzZ���Q��'��O51}T��œ�L����Y�8eI�q1Ґ�f�9�)�oߢ�l�੕�s�Mʙ��~Q___��'��      �      x������ � �      �      x������ � �      �   �   x����j�0D��W�^"V����G����(������k��$Ԕ�������3���>]��ؽ�!^�1�Ͻ��ɯ!+����l�DtS݊���C��#qnA��xL�u��>���CN�1����l�\��*��mR��{M�|
���|M%�\T�̞c����1�vD��%VX^ �RHU���k�Bd�aΪ��,�&�}-nY����x����l����:_��u�Eb���r�1�-�[]U��O�d      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x�s��L�+IU��r��"�(�=... �A
~      �   &   x�3202�50�50�4�4r��`"F"�0�=... /�	�      �      x�(�O)M.�Wp�
�1�Lg�=... 9�      �   '   x�3�4A 2�2�C 2�2�ACS 2������ �6�      �      x������ � �      �   1  x��Y���F=��b�A�E���K��K� �n�#��� ��<J�-o�F+C�/�s��$��cI��||�x|��?~=����e����u�_?>�������ӿ�����=������IH�G�%�K�@���i�"�QM��nmg�&�������t���|����������-�_ο�����!.�T����<=�T��ԙ��DI�B&<��e��m������O緯�/O�y��-_�z��mSp��� ܱie}�(G�^J��F�+V�5Q^Đ(�t�����Ǐ%i$�R�&ɩ%�T�'O��Ć�F�:�B�"j�r���<]Q�:����yc��G�s�R�"%�)�EoH+]V�)�b��w�s-z��65w����:7��uɳyn��U�\���SM��*�<�V#4��tfJ�x@?�t5S�G�M��խ|k�s����q�m���aR�A��sM�ne�N�������i2F껔�E�w� ��RyQ���&�k��ȞO�|)�̦��%�.I][�T0"��#�P�.���<oJT�[̂.S���~D��V���Z誤�)�2h=գ��j��1:�D����#��c�]��Y�F�Uj
Gr�c�*@V�I�m�z:�Z��,�rD1R�Un��
�q�v�&�6^��z�.h�Ej�N-��H��)P�ǃ���p��Y��Fw��^ya:F�[I�.J4��"k�F�m%*Wq-���7,	�0uUEkC�%����+��O��^�a�uhpWS����Ө}BKhk� �#*J~�`�i������ZJ�^F�:o�i�P��ﱔ�X�\��Iݘst�Å4Oi�Ι4-$ ��A�,��%�lupw֙�7��aH���6�P#��t��q�J��<�7�j�3;ʵ�ˠ��V,@c�Â܈u)⧾?�t���7�(�N0T#[Kq,c��;��FS��B�����A��o��6&�j�����PbH#�3!osE�C,�7�.��7�e��֎�K�Bu�}�%@j�Vf�5H���L�`�֋��p9��ls5v<�@��`0M���匚P�����M�	u��QpT���O�6�Q8��n�����M�����P�Ka��5��s�w�,�Z�?����M>9���$@�`�j�O��S��D��<��7�mO̭*���Jͭ�
͍"y�|����ns��E�u����w�=�`uX���NÀ4���Y4RZ��i�ۋ�sm̰ ����ń�h�hi-D�}!���/�}]b����b>K���i��i��y��W԰���;Y�Y��<򶧙Qa��-:kzD�Kb/�n��F7e������.�u {� ��5f��%XL�i��%�̭xg�K;�=������hd-�-�(H C�,�tVkβZ��	���s;�>�k:�Թ%{�����t���E.>�������􎠮�n��\0�Z+�t6�٪�M���
u%[��G�Ne�pr;k�4˪j��Ɠ4�}�}�eN(l�.����[McٟFl�+RK�F�T����
�j���ԑ
�Z�K��2��!��1��gэ��1��c�S���������n�P��UY�ơuw��-%���Z�M��,Y�U��NO�d̶j�N��1�u���g��Ǹ�S��˂�_��+�aI�N�-Z�u��k����Z��К�N��z6�̪aI;�M��$}'D��9�G�kJ��Ɲ��ƥ����DA s�駳��Vi�vҚj��*r����H�ؼ�Y�֕g�TG�S)��u������,��5�]V��/o_�|����|%���/��׍��i|I̅�����-���Ç� 5���      �      x��]mo9����� �nvw&��*�wsؽ�r��������D8��=��������"i���V�XA�H��Q=E�S�bS>��0��^H��BQ�-�����=���ٶ~�67��ƿP�7��Շg�������첼h_�^��h����߿x�ݜ���W�e����՛wW�ݯ�)ί���M����ҫ�_��t�W�����b�b�R�"��j�n~�$�U%eEP��t��J����֘,CtU�jg�R��FeWRN9L�=Ɛu������	�����,KC�P��5n)KR�+4(J���o�=�7my�ރ�Ӧ���0��������O�o�s�\�/������׿���?}��?���P���������Zo�������*���E�>/koG�J��	D�h�I��u:k(�	4jc�����A"�W���S�2)B���n�ț��B)(mABR�g_j0�0�2H	�0J�8�>9GC;��4�����pwF	�p�hu
I2T�:��N��9�X��0Ц��4��P�0]]�|�4Uo��|������#�B���e�>Ci�<�ʂ�	��g(���Ȥ�s8�٪�t�sZ�\g�]o@*F*E��U*N[Fz�2`��A�0�:ȩ��L��o�J�Bj�	�c���ؔX�d=������HUa��l޸X��qQ�G?�y�!w\,�1��Hj��5�U�yU�Q��QZp� �m(�J
�*)g�d��|F�,ݬ�x���e�>o�b�]�)���y������lH.��A��-�f�W�jlS�R:Ѵ3�h0&���@�QJ)�cl����h�� *�@�
��y	W�ʫj�R�j�b��J)}5� �Zt\5��R6����$PBa@��clYw��E愱��*DI%�t�-IJ㣵�%��N�TI�!˔x
�T7u�,fJA��&6%
��S6e��3���))��ڗT�$D�[i�3�h��&D�V�+h�H���RRWs����B��	�X�<d��XiJS;;�\�2�<�W

����Ɯ�qr�͉u}<RUp��7�jmPrTU;Þ���0�x�� el�ސ-@�)���ipF0^�����EY#�G*��c=�@J#�J�4_��0�]i�!Ⱥ�b�[
m��$V��1��C�G	����Zb�Q[�����b�C�~��Y��r����G�!��P����v�,U�yE�5g��b��qȣ��ZB^�4�%1�,��b��`%�@?�d��ʖDW3�z�J�qh@j4)�ל�.I�f zJ�8�QR���̌�2�v�+q�(
Xc�R��ȓ��d],k������`=�CRKt�X�|��ΊF�b3<�qȣtN��6YS�A+N6c=�C�|*d%�<Ɛޠ�d�²ԳW&�HC�j9� �y¸4�扂����a�(O�*5�Ɛ����n���aB�q�J�CcX'�ܖ���f4^ƬS�<RWHm��+�����u[�3��Nab��/d$|s\�mۖ�d��OaB�G������c���3}����:
#�����q<x�u����H��G�QP^�a��%��c�����0
��v(,ˏ,�KpU�V��0e=�DR�9M"^�a5�F����,�z�<J[Xad�P'�@Ȇ�K3e��^�
�
CJ$�H��Zg*�k����RU(p*�?0n}Mc۰�wn1֍H�ԅ����ȺAe爏}֍P�}��Tb��)ߞ����}p{�����+`!���@%m��x#��p3�3b5*	���<?��Tَ��e�.�:��NXc2�����x���b�9�!J�{�5���Q���'y���	xQ�)�Ԓq���QYi�Mid7i��I�4�P�\^=I��j�`�\42a4Ҋ�fa�u�UDUgT������0�~yQ2yu��_�vuU�E���0��P	�cX�R�xuv�nF#��q�4�P������А`
�&s��AߏA����-59��r���N����ܥ�1%� �/�:'�Gגcoi�o��=YJ �:N�򄇫%ڦ��#p1{�J,@9�3[Ϫ�t�j��S�	\s?ϗ~_����/�%@�4�}�p'b����o��3��ܼ-7�V\�g�M���f��,c��f����m�/|k泟~���u�7{����~��s'ë�����˘��/�߉믷g�[���}���_��	X<V��a���;��r���<cr�ˡ���|]n��lss����/��h|����7CԷ��9;�d�����]�ܷ߾�q?no�fݷ������������Oys'���?oT	�����-��	.חo?�m|q�'~��s� X��s`8����<&�H@>�]�f�c����}��}`&��ߵ���+���|t�Mlt�ҥ�NM6���Ɉ��t8��8��<�E���i�9���RDz|�5
��T�{��jn�뫯�����ͼ	�'5'k44��~Ҁ�"!�$B���N�c?����J)D�A����;�W�	Y؏�u�7�o�m?�شl���>���V�i��rH	���*��0�<_����ޔ緼����.�pi��__*�F��/55�v���c�G#I�Av^��COn0�"E�[�"��f�d!�� I�8Rj·��2=��Hj_�Q�DS'��S�� #�4� aēJM�� �D�-O��l�<�H,i_#� �fI߀P=�DR���!p�|o�r�"]8 Az����� ���a�PS��}I�a7�t!� ���ʭ�����9�"ca��=�w�2�x����͵���� ���]���֗M���a�'Q�j����C��V�����Ed�|j����	�~s0	mLn�<���ph����G�"��[�9�i����#�h|MYk2O*Y;.�B6��l�q�v$!R���p�x?�>��H���� �����#�����;�������2	`��h��-�z	y�!8p�ţf?��laA�X2��|�;�o8��s����/Y�W��s�*g!M���Z�Q���h% ��F�A$���C��6sW�r�1*��@	����;�D��g`�4��g�ϨH0���<�D:��<g��E��gT$]�7�Ɯ�g���t�M^����ϚtB2�:{����A'�!��iA����3���$���V�G�)I�PAy�X �|D�Ф�T�@��&�ow�K�b����@��P�������I�~�?����Ca5|%N���Z�;�7�.�=��	?G�Aw�s�T8�>�����B!���a����˜:?����35u�e/�]]v��E&���/������|�����ͦ^�y��޴�E�rs��2���z�Vۛ�n����ŧ��;T:���τ��-73�aa����[V̝6e��F���l׿��/_]���l���7F-����v��(����Pw1L��<E���DF`(�����m��:�M4Um�I0T��6��w�;�i�\(�P��C�B�����?y#�Yco6��<���B]�� ��������N��|���Ak��l �
�b�8:q?��P���<��ټ��m����G�<���U���*|T�)RL�o�*IO�gDN#EJ��<w����D����[];}h7遽�W��p�����n,o�8��}���gP��F�(?}R|���¿*~˂�^A������.��2<}���%��Kiw`�|�J�"�m��do��6(%m!4�خ��J�R��$��Т���q��,Ҍ�o;����mt�F�i��%��h�#٨|��?j�� ��8#T����8� �w<�]m�~e�\n�
���t�F�7����:��6�M$���[�-#��Σ;�_ʯ�J�NG�FtOޑ���X҂u��Ka���� P���G
O��%����6��N�>~�}O�dހĒ��vw�q���z��y�*�dp��OJ~;N����*��	��ؔ1�X9}B�	�����r+�'7�6����#Ü�NM�lB���!���E�����w��2��[�i�����:@B"2���8������m5M !  �Wxw��$��t��q~���'?�A��ţ�U���'����H� tb>���Y(8.�.d>:�1h��:;u��v۬��  �I�Ѩ��_��j�������� �*�e���k5��Y�r�b�i���o�v��k�49vF9��ơ�q�X��J ����O�I��En�k:��;��a��:�gI�v�Z��^����ϗGQ���k˺�8�����`]u�L�-?l�|�a����;y��5����6M�g_�_f^��G����U΅y�s���� ǖ�      �   �   x����� ���\<5Z���$M-ԐV4���݋�j�^��~0�3)��^2%�s�0�=�@��龺�փ�Y�����d�J��Uk&����ls�`���!&{��9I����cH@�Gc��^pF<���#��#�xÔr@g�0��&��!ؤ�9n��CW����7����B�K!|�g��      �   �   x�͓�
�0���SȮ:��M�sxS)��nصcm�a�ݭ����'���^��X��XjgЇ"�LU�2�V\�
�EbD���Xp�(�&t��tOi>�r�$ِ>�X7,�E�8_('�j������^�Y臁<�"�=�E	�a5�.��:�ҏI~�K
ԇqՠ��l�X�-ݭY�R����y�A�M����츎��h��      �   i  x��WKS�0>�_�1ǖ�8���B����vz(�FX�D�by$H3��ݕ��<�1���)־����k'�f��qv��tm��ޡ��!��P���0��W�^v<����hx<H���踷��c�.�h�<������g jL��W(�_.�"&3(x��묷�8��'}]=����܀3��:-� �[��$�'�g�-*�N���W�-����ITHJ�$�94(-���FV.���|U��(8F�meT���>5A����:I``e�= ����9�"���]��ljt]�Z�#�Oe��T
y�V8S*���I��Z�\+��=զ�:��R5���t��O����L*a�=u�8J,��͐I�R�\zI�`�ѢΝ��鶼7N�$ �����|���Zf(�y^b/�����J�cL��]]Yg��7]�4\ ��t/O����T��?�a�(gͤ �e�N��"]>�,���-S��z��khԾ��O���~<��9X�)�ԲB+F{g�Ȝ2�i/�Lx3��\ ��KAM]��r0����5�ld�u�X����z��:�5"�ػ!�����ޞ�}8*&0�)i�������N��>��:��=�|p(���|=���]��A=״�[����>��7�b�!l*D�;��Y�7?����'<~���dF7R��n"�ŗG+!���mZA�ô��.���n�m��_��.�/���K�&�[�|��X-W� �Z�D�'B�>�6k��NOt�U:m���������AN���#���c��J@E@�yH=����۸ꝿ��I::H&i��I��$i?N���Y�����!�4M�0�����8�ĸC��w�������      �   �  x��ZYv9��<�\���� Yg�s���@J^����;��Hz����@ �Tk��\�d/ʪ��dIj��6�^��Ç���R���O=�rk{e�l��FvZ��j�u&UPch�6m�Z���$I�bED�OD�DQ�7��������3�L�mm$���G�f;f��J���D��*V"XU��J�f�mG	v=���5��c�hi%�>ά)���_ԟ*O�G���V�K�9r�N��QӘ�R�y6l����	V�L�����*@ܤ��� b��LD�?�O=J[��ⓢ�	�@ҾunX����Jѯ�n����mo�e�X�/��b����0w�c�+�)�o����%�!uދ}���/��՜\�~K���U�t"��g�7���j@%�H�͟*f� ��)���|�%;��iZ�b���kD�-ߢ`}�>T�f]�-�u?��I�P�T9m;)�F�����vu"����h� ;�.��F�葃 �h%L�흂�9?�<�=��_�R2���%��9�LI[?�~� sٴ����rK{g��g�_���`��h�ep+�p'=�R|$d���~�c����VZ��]������d?�q���[�D)���"�� ���5;%�u��6Ɂ�\6�8�2��R����맵}�U���K͵CI���/8���C��ӫ;|���A��K����u�G��	�+�l���S���� �J�������r �s�t�T �6����t���] ;L�КL/�yp4� ��M*�9 ����WJ���?����Z�䝴�	�K�:GC�t�[���t�F\ ��|sLs�0����ڽmܮr1�W�������HBPT�$�����>𢈥iذ4�rҜ��,���ۊ?��� ���J`��>^�hc�.�=SS;NJs*�O��q���S]W��A]�v�#q�A��Ǖ���R�������jNZ�I�P(O�+R���L�(�rM�`x*�|۹���^<�u0�g�.�
�.��)�6�t��pi�FO��\�fMϛ�ح��/"�>ZVRDzZ���p�I�tKj'�tԑ���B�[��[��[~��Ѥa���n�6�%C�i=RmO�����(h�w>�������g��\Y:�����6�B8R͹��m5�ǀ簭7�[/�߾D������JeQ��g��<\��6R;N���:������l�+K$��J�DZ�!��nW껒���pY�d��~s,��`��7D���Bgl tN[F��#�n�q��3��)�x�z�؅�iȚv]���m.�\�^���;�!���Ce��n��3�B'���3�N3md[����o�:~��<�<�+t�J��3�y �in�k�`0J'����������������r�O�]f���/`�MR�͓!�zN8~��nI��(7g��G�O��4��ȡT�^}�_��s�Ưj��Z����@���L�5Z������q)�Dߡ�IFa����	��������\���K[�ggU��P��,��"pi��m��U�^�S��{�q��k֣�\{��: �YO�n[X�Њa�=��z�i��P�wXg+|�]Fp��+p����N��U�G��yʌUc�e���e_no9,�ƚ)8;5®��4{��kO�/�{��h��w�����v��;��Z���g���l�c����>_�~�[��!��,O�GS���,=#�ֽ������ƞ��TZ�m��9)q� �����om=�\r��Lq�Ds�K�HY��c���I	�^qd��r^��e�@�MZq���5"��u���/�o���I�f��y��ݩ�L(�G��`ђ��IBR����ם�ꢷ �gn��͸�.8�R�!in<�����Ϩ�A�A4�t�7��{� %�w���@\�͘����0V���{w��l�M��RT��u]��7Ҧ      �      x������ � �      �   '   x�3�LIMK,�)�/����44��t�(�Ҹb���� �u�      �   �   x���ˊ� ���)f?D��v��1˂�q�@')�0�_��nⶑ������c�x�o���O���x�R?�7s��aL��L)o���,��x/@�������W5Voh���@����� �K�`VL�~Sl�'�8	 #�^�����b�(��f���7ŝE�\�Ms��ݍNl��ش�
K�m�9Ľl`��>i͌@�;R�A��Wf��>��+EN����V��jw�r�����      �   �  x���Mo�0���W�}Uk<����{��C��P���D	J�v��w z0$��BDc4�ǯ�4m^�Y��oy=-�6�~�u�W�&��[��Xn���N�>�{@zxܭ����Ag� �@|�E���j�='�h�QȚMQĦ�_:��E=[V�˯���|�l��ZJ��8{z_���ױ�۪�����?@�㉬��o��ԯɞ��=��E���E\��.x�"c�)��(�IS�GA�����O���f�y�@��S�L�糝W��f�ۦ���iJ	DN��4籘W����̛ۓ4�`�#0$HJ���RE�HZ�p���� �)�8 R2j��=H�Av8��#e9��]D�&��(�"A�v�� �Q��DiyP�R�#��Eyd���rS��]�	�����
�����q�`����$7�LPA{b�����{����/���pJ�b |���#��'��d�5ؐ�W�h�d&��M�������e�N���4.�U���:e�� +�.+�n��s�UZѨ=ش#J�;����cI����pi����Î4��CD�%��X�#��u��+��}j��hPH�~�0b?`F ��C���H����FS�ue�[�D�_�{����y܎���(+A��;�^����Kn�>m ��M��ԗ�r��jz�S�A7��E狚L&��F��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     