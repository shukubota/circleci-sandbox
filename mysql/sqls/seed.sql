create table member_tokens (
    id varchar(255) primary key,
    deleted_at datetime
);

alter table member_tokens add column member_id varchar(255) not null;

create index member_tokens_member_id_index on member_tokens (member_id);
