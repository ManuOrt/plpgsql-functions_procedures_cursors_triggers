## PL/PGSQL FUNCTIONS & PROCEDURES & CURSORS & TRIGGERS

### DDL
- We created a table person with an id, name and an age.
- The id will be a primary key
- The name will be a varchar of 50
- The age will be an int

### DML
- We insert some data into the table.

### function.sql
- We have created a function to calculate the average age of the people we have in the person table.
- We declare three variables.
- total_age Is where we will add up all the ages and store it in this variable.
- num_records Number of people to perform the division.
- average_age Operation to get the average age between all the people.
- With the SELECT we collect all the sums of the ages and the total number of records.

- To call the function and to be able to execute it:
```
SELECT get_average_age();
```
![function_photo](/img/Screenshot_1.png "function_photo")

### procedure.sql
- We have created a procedure that will go through all the records in our person table
- With the RAISE NOTICE instruction we can print the name and age of each person.
- In the declare we have created a variable called "per of type RECORD that will iterate each record in our loop.
- We use a for loop to print each name and age of each person.

- To call the procedure and to be able to execute it:
```
CALL get_procedure_person()
```
![procedure_photo](/img/Screenshot_2.png "procedure_photo")

### cursors.sql
- We have created a function get_age(integer) that will print the people that are in the table with a specific age that we give it by parameter.
- We use the cursor to be able to go through all the rows and to be able to make the concatenation of the name and the age of the person.
![cursor_photo](/img/Screenshot_4.png "cursor_photo")

### trigger.sql
- We create a function called person_update_trigger_function that will be executed each time an update is made in the person_log table
- The function updates the person_log table with the values: name, age, and update_at.
- With the AFTER UPDATE we specify that the trigger will be executed after an update has been performed on the table.
- With the FOR EACH ROW we say that it must be executed for each row contained in the table.
