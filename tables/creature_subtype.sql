-- Table: dnd-mini.creature_subtype

-- DROP TABLE IF EXISTS "dnd-mini".creature_subtype;

CREATE TABLE IF NOT EXISTS "dnd-mini".creature_subtype
(
    creature_subtype_code integer NOT NULL,
    subtype_name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    subtype_description character varying(1000) COLLATE pg_catalog."default",
    creature_type_code integer NOT NULL,
    CONSTRAINT creature_subtype_pkey PRIMARY KEY (creature_subtype_code),
    CONSTRAINT fk_creature_type_code FOREIGN KEY (creature_type_code)
        REFERENCES "dnd-mini".creature_type (creature_type_code) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "dnd-mini".creature_subtype
    OWNER to postgres;