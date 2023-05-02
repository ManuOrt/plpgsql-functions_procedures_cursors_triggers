CREATE OR REPLACE FUNCTION get_average_age()
RETURNS NUMERIC AS
$$
DECLARE
total_age INTEGER;
  num_records INTEGER;
  average_age NUMERIC;
BEGIN
SELECT SUM(age), COUNT(*) INTO total_age, num_records FROM person;
IF num_records > 0 THEN
    average_age = total_age / num_records;
ELSE
    average_age = 0;
END IF;
RETURN average_age;
END;
$$
LANGUAGE plpgsql;

SELECT get_average_age();