-- Table: dnd-mini.creature_type

-- DROP TABLE IF EXISTS "dnd-mini".creature_type;

CREATE TABLE IF NOT EXISTS "dnd-mini".creature_type
(
    creature_type_code integer NOT NULL,
    type_name character varying(20) COLLATE pg_catalog."default" NOT NULL,
    type_description character varying(1000) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT creature_type_pkey PRIMARY KEY (creature_type_code)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "dnd-mini".creature_type
    OWNER to postgres;