create or replace function get_age(age_person integer)
   returns text as $$
declare 
     names text default '';
	 rec record;
	 cur_age cursor(p_year integer)
		 for select name
		 from persons
		 where age = age_person;
begin
   open cur_age(age_person);
	
   loop
      fetch cur_age into rec;
      exit when not found;

      if rec.name like 'I%' then
         names := names || rec.name || ' ';
      end if;
   end loop;

   close cur_age;

   return names;
end$$

language plpgsql;
select get_age(79);