create table calendar_items (
    id number primary key,
    title varchar2(250 char),
    description clob,
    type varchar2(10 char), -- [E]vent, [T]ask
    location varchar2(1000 char),
    is_all_day char(1 char),
    start_time timestamp,
    end_time timestamp,
    repeat_interval_id number, --fk to intervals / null means does not repeat
    is_private char(1 char), -- Y or N
    color_id number, -- fk to colors 
    created_by varchar2(100 char) not null,
    created_at timestamp not null,
    modified_by varchar2(100 char),
    modified_at timestamp,
    is_deleted char(1 char)
)