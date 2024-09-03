create table members (
    member_id varchar(255) not null,
    deleted_at datetime
);

create index member_id_idx
    on members (member_id);

alter table members drop index member_id_idx;

start transaction;

update members set deleted_at = now()
where member_id not in ('9cebe7ab-d43c-4a28-9caf-571a79ee7e3g');

insert into members(member_id)
values
    ('9cebe7ab-d43c-4a28-9caf-571a79ee7e3g');

rollback;
###########################

#################
start transaction;
update members set deleted_at = now()
where member_id not in ('9cebe7ab-d43c-4a28-9caf-571a79ee7e3h');

insert into members(member_id)
values
    ('9cebe7ab-d43c-4a28-9caf-571a79ee7e3h');

rollback;
#################