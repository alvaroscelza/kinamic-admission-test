1)
select p.name, p.document
from person p
where p.age > 25
and p.id not in (select person_id from employee);

2)
select o.* 
from order o
inner join employee e on e.id = o.employee_id
where e.boss_id = null;

Nota:
Se asume que una persona es jefe de una empresa cuando en la tabla Employee la fila correspondiente a la persona no tiene boss_id.