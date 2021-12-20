-- Table: dnd-mini.miniature

-- DROP TABLE IF EXISTS "dnd-mini".miniature;

CREATE TABLE IF NOT EXISTS "dnd-mini".miniature
(
    model_id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    model_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    model_type character varying(50) COLLATE pg_catalog."default" NOT NULL,
    origin character varying(100) COLLATE pg_catalog."default" NOT NULL,
    set_number integer,
    set_number_variant character(1) COLLATE pg_catalog."default",
    creature_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    creature_type_code integer NOT NULL,
    creature_subtype_code integer,
    creature_size character varying(20) COLLATE pg_catalog."default" NOT NULL,
    base_diameter_inches double precision NOT NULL,
    num_owned integer NOT NULL,
    CONSTRAINT miniature_pkey PRIMARY KEY (model_id),
    CONSTRAINT fk_creature_subtype_code FOREIGN KEY (creature_subtype_code)
        REFERENCES "dnd-mini".creature_subtype (creature_subtype_code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_creature_type_code FOREIGN KEY (creature_type_code)
        REFERENCES "dnd-mini".creature_type (creature_type_code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "dnd-mini".miniature
    OWNER to postgres;