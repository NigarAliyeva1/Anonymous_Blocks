--1. **Basic Structure**
--- Task: Write an anonymous block that declares a variable 
  --  `v_greeting` and initializes it with "Hello, World!". The block should then output the value of `v_greeting`.
set serveroutput on

declare
     v_greeting VARCHAR2(50) := 'Hello, World!';
begin
      dbms_output.put_line(v_greeting);

end;

--2. **ariable Assignment**
--    - Task: Declare two number variables, `v_num1` and `v_num2`. Initialize `v_num1` with 10. 
--    Within the block, assign `v_num2` the value of `v_num1` multiplied by 5 and then output it.

declare
    v_num1 number :=10;
    v_num2 number ;

begin
  v_num2:=v_num1*5;
  DBMS_OUTPUT.PUT_LINE(v_num2);
end;

--3. **Using Arithmetic Operators**
  --  - Task: Declare two variables, `v_length` and `v_width`, and initialize them with 5 and 10 respectively. 
    --Calculate the area of a rectangle using these and output the result.
declare
    v_length number:=5;
    v_width number:=10;
begin
      DBMS_OUTPUT.PUT_LINE(v_length*v_width);
end;

--4. **Date Operations**
--    - Task: Declare a date variable `v_today` and initialize it with the current date. Add 7 days to this date and output the result.
declare
    v_today date:= sysdate;
begin
      DBMS_OUTPUT.PUT_LINE(v_today+7);

end;

--5. **Concatenation in Strings**
    -- Task: Declare two string variables, `v_firstName` and `v_lastName`.
    --Initialize them with your first and last name. Concatenate them to display a full name and then output it.

declare
    v_firstName varchar2(20):= 'Nigar';
    v_lastName varchar2(20):= 'Aliyeva';

begin
      DBMS_OUTPUT.PUT_LINE(concat(v_firstName,v_lastName));

end;


--6. **IF Statement in Block**
 --   - Task: Declare a number variable `v_age`. If `v_age` is greater than 18, print "Adult". Otherwise, print "Minor".
 
declare
    v_age number:=5;
begin
if v_age>18 then
      DBMS_OUTPUT.PUT_LINE('Adult');
else  DBMS_OUTPUT.PUT_LINE('Minor');
end if;
end; 

--7. **Using Loops**
--    - Task: Declare a number variable `v_counter` and initialize it with 1. Write a loop that outputs the numbers from 1 to 5 using this variable.
declare
    v_counter number:=1;
begin
for v_counter in 1..5 loop
      DBMS_OUTPUT.PUT_LINE(v_counter);
end loop;
end;

--8. **Handling Exceptions**
--    - Task: Declare a number variable `v_dividend` and `v_divisor`. Initialize `v_divisor` with 0. 
--    Try dividing `v_dividend` by `v_divisor` and handle any exceptions to print "Cannot divide by zero".
declare
    v_dividend number:=10;
    v_divisor number:=0;
    v_result number;
begin
    v_result:=v_dividend/v_divisor;
    DBMS_OUTPUT.PUT_LINE(v_result);
exception
   when zero_divide then
    DBMS_OUTPUT.PUT_LINE('Cannot divide by zero');

end;


--9. **Using Built-in Functions**
--    - Task: Declare a string variable `v_text` and initialize it with "oracle". Convert the string to uppercase and then output the result.

declare
    v_text varchar2(50):='oracle';
begin

    DBMS_OUTPUT.PUT_LINE(upper(v_text));
end; 


--10. **Nested Blocks**
-- Task: Write an anonymous block that declares a number variable `v_outerVar` and initializes it with 100. 
--Within this block, declare another nested anonymous block that declares a variable `v_innerVar` and initializes it with 200. Output both 
--variables from the inner block.
declare
  v_outerVar number:=100;
begin
  declare
    v_innerVar number:=200;
  begin
  DBMS_OUTPUT.PUT_LINE(v_outerVar || ' and ' || v_innerVar);
  end;
end;
