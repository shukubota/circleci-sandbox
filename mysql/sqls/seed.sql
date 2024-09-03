create table tokens2 (
    id varchar(255) not null,
    deleted_at datetime
);

###########################thread1###########################

insert into tokens2(id)
values
    ('9cebe7ab-d43c-4a28-9caf-571a79ee7e3a'),
    ('9cebe7ab-d43c-4a28-9caf-571a79ee7e3b'),
    ('9cebe7ab-d43c-4a28-9caf-571a79ee7e3c'),
    ('9cebe7ab-d43c-4a28-9caf-571a79ee7e3d'),
    ('9cebe7ab-d43c-4a28-9caf-571a79ee7e3e'),
    ('9cebe7ab-d43c-4a28-9caf-571a79ee7e3f');


create index tokens2_id_idx
    on tokens2 (id);

start transaction;

update tokens2 set deleted_at = now()
where id = '9cebe7ab-d43c-4a28-9caf-571a79ee7e3a';

insert into tokens2(id)
values
    ('9cebe7ab-d43c-4a28-9caf-571a79ee7e3g');

rollback;
###########################

#################thread2#################
start transaction;
update tokens2 set deleted_at = now()
where id = '9cebe7ab-d43c-4a28-9caf-571a79ee7e3d';

insert into tokens2(id)
values
    ('9cebe7ab-d43c-4a28-9caf-571a79ee7e3h');

rollback;
#################