create table product_info(
     product_id varchar(32) not null;
     product_name varchar(64) not null comment '商品名称',
     product_price decimal(8,2) not null comment '单价',
     product_stock int not null comment '库存',
     product_description varchar(64) comment '描述';
     product_icon varchar(512) comment '小图';
     category_type int not null comment '';
     create_time timestamp not null default current_timestamp comment '创建时间';
     update_time timestamp not null default current_timestamp on update current_timestamp comment '修改时间';
     primary key ('product_id')
)comment '商品表';


create table product_category(
   'category_id' int not null auto_increment,
   'category_name' varchar(64) not null comment '',
   'category_type' int not null comment '',
   create_time timestamp not null default current_timestamp comment '创建时间';
   update_time timestamp not null default current_timestamp on update current_timestamp comment '修改时间';
   primary key ('category_id')
   unique key 'uqe_category_type' ('category_type')


)comment '';

create table order_master(
     order_id varchar(32) not null,
     buyer_name varchar(32) not null comment '';
     buyer_phone varchar(32) not null comment '';
     buyer_address varchar(32) not null comment '';
     buyer_openid varchar(32) not null comment '';
     order_amount  decimal(8,2) not null comment '';
     order_status tinyint(3) not null default 0 comment '';
     pay_status tinyint(3) not null default 0 comment '';
     create_time timestamp not null default current_timestamp comment '创建时间';
     update_time timestamp not null default current_timestamp on update current_timestamp comment '修改时间';
 primary key ('order_id')
 key idx_buyer_openid ('buyer_id')

)comment '订单表';

create table order_detail(
detail_id varchar(32) not null,
  order_id varchar(32) not null,
   product_id varchar(32) not null;
    product_name varchar(64) not null comment '商品名称',
     product_price decimal(8,2) not null comment '单价',
      product_quantity int not null comment '数量',
           product_icon varchar(512) comment '小图';
       create_time timestamp not null default current_timestamp comment '创建时间';
     update_time timestamp not null default current_timestamp on update current_timestamp comment '修改时间';
      primary key ('detail_id'),
      key 'idx_order_id' ('order_id')
)comment '';


