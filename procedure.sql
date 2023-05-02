CREATE OR REPLACE PROCEDURE get_procedure_person()
LANGUAGE plpgsql
AS $$
DECLARE
per RECORD;
BEGIN
FOR per IN SELECT * FROM person LOOP
    RAISE NOTICE 'Name: %, Age: %', per.name, per.age;
END LOOP;
END;
$$;

call get_procedure_person();