CREATE EXTENSION file_fdw;

CREATE SERVER mydatasrv FOREIGN DATA WRAPPER file_fdw;

create foreign table mydata (x INTEGER, y INTEGER)
    SERVER mydatasrv
    OPTIONS (filename '/home/postgres/data.csv', format 'csv');

select * from mydata;
