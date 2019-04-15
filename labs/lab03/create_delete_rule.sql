--Reference used: http://shuber.io/porting-activerecord-soft-delete-behavior-to-postgres/

CREATE OR REPLACE FUNCTION set_inactive() RETURNS trigger AS $$
    DECLARE
    BEGIN
        UPDATE venues SET active = false WHERE venues.venue_id = OLD.venue_id;
        RAISE NOTICE 'MARKED VENUE WITH ID #% AS INACTIVE', OLD.venue_id;
        RETURN NULL;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_inactive 
    BEFORE DELETE ON venues
    FOR EACH ROW EXECUTE PROCEDURE set_inactive();

        RAISE NOTICE 'MARKED VENUE WITH ID #% AS INACTIVE', OLD.venue_id;
