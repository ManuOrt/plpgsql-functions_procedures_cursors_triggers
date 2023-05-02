CREATE TABLE person_log (
                            id SERIAL PRIMARY KEY,
                            name VARCHAR(50),
                            age INT,
                            updated_at TIMESTAMP DEFAULT NOW()
);

CREATE OR REPLACE FUNCTION person_update_trigger_function()
RETURNS TRIGGER AS $$
BEGIN
UPDATE person_log SET name = NEW.name, age = NEW.age, updated_at = NOW() WHERE id = NEW.id;

RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER person_update_trigger
    AFTER UPDATE ON person
    FOR EACH ROW
    EXECUTE FUNCTION person_update_trigger_function();
