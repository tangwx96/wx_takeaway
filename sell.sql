create table product_info(
<<<<<<< HEAD
     product_id varchar(32) not null,
     product_name varchar(64) not null comment '��Ʒ����',
     product_price decimal(8,2) not null comment '����',
     product_stock int not null comment '���',
     product_description varchar(64) comment '����',
     product_icon varchar(512) comment 'Сͼ',
     category_type int not null comment '��Ŀ���',
     create_time timestamp not null default current_timestamp comment '����ʱ��',
     update_time timestamp not null default current_timestamp on update current_timestamp comment '�޸�ʱ��',
     primary key (product_id)
)comment '��Ʒ��';
=======
     product_id varchar(32) not null;
     product_name varchar(64) not null comment '商品名称',
     product_price decimal(8,2) not null comment '单价',
     product_stock int not null comment '库存',
     product_description varchar(64) comment '描述';
     product_icon varchar(512) comment '小图';
     category_type int not null comment '类目编号';
     create_time timestamp not null default current_timestamp comment '创建时间';
     update_time timestamp not null default current_timestamp on update current_timestamp comment '修改时间';
     primary key ('product_id')
)comment '商品表';
>>>>>>> 4a529453d14a65680607a884660f8fe38dae0455

create table product_category(
<<<<<<< HEAD
   category_id int not null auto_increment,
   category_name varchar(64) not null comment '��Ŀ����',
   category_type int not null comment '��Ŀ���',
   create_time timestamp not null default current_timestamp comment '����ʱ��',
   update_time timestamp not null default current_timestamp on update current_timestamp comment '�޸�ʱ��',
   primary key(category_id),
   unique key(category_type)
)comment '��Ʒ��Ŀ��';

create table order_master(
     order_id varchar(32) not null,
     buyer_name varchar(32) not null comment '�������',
     buyer_phone varchar(32) not null comment '��ҵ绰',
     buyer_address varchar(128) not null comment '��ҵ�ַ',
     buyer_openid varchar(64) not null comment '���΢��openid',
     order_amount  decimal(8,2) not null comment '�����ܽ��',
     order_status tinyint(3) not null default 0 comment '����״̬��Ĭ��0���µ�',
     pay_status tinyint(3) not null default 0 comment '֧��״̬��Ĭ��0δ֧��',
     create_time timestamp not null default current_timestamp comment '����ʱ��',
     update_time timestamp not null default current_timestamp on update current_timestamp comment '�޸�ʱ��',
 primary key (order_id),
 key (buyer_openid)
)comment '������';
=======
   'category_id' int not null auto_increment,
   'category_name' varchar(64) not null comment '类目名字',
   'category_type' int not null comment '类目编号',
   create_time timestamp not null default current_timestamp comment '创建时间';
   update_time timestamp not null default current_timestamp on update current_timestamp comment '修改时间';
   primary key ('category_id'),
   unique key 'uqe_category_type' ('category_type')


)comment '';

create table order_master(
     order_id varchar(32) not null,
     buyer_name varchar(32) not null comment '买家名字';
     buyer_phone varchar(32) not null comment '买家电话';
     buyer_address varchar(128) not null comment '买家地址';
     buyer_openid varchar(64) not null comment '买家微信openid';
     order_amount  decimal(8,2) not null comment '订单总金额';
     order_status tinyint(3) not null default 0 comment '订单状态，默认0新下单';
     pay_status tinyint(3) not null default 0 comment '支付状态，默认0未支付';
     create_time timestamp not null default current_timestamp comment '创建时间';
     update_time timestamp not null default current_timestamp on update current_timestamp comment '修改时间';
 primary key ('order_id')
 key 'idx_buyer_openid' ('buyer_openid')

)comment '订单表';
>>>>>>> 4a529453d14a65680607a884660f8fe38dae0455

create table order_detail(
detail_id varchar(32) not null,
  order_id varchar(32) not null,
<<<<<<< HEAD
   product_id varchar(32) not null,
    product_name varchar(64) not null comment '��Ʒ����',
     product_price decimal(8,2) not null comment '��Ʒ�۸�',
      product_quantity int not null comment '��Ʒ����',
           product_icon varchar(512) comment 'Сͼ',
       create_time timestamp not null default current_timestamp comment '����ʱ��',
     update_time timestamp not null default current_timestamp on update current_timestamp comment '�޸�ʱ��',
      primary key (detail_id),
      key (order_id)
)comment '���������';
=======
   product_id varchar(32) not null;
    product_name varchar(64) not null comment '商品名称',
     product_price decimal(8,2) not null comment '商品价格',
      product_quantity int not null comment '商品数量',
           product_icon varchar(512) comment '小图',
       create_time timestamp not null default current_timestamp comment '创建时间';
     update_time timestamp not null default current_timestamp on update current_timestamp comment '修改时间';
      primary key ('detail_id'),
      key 'idx_order_id' ('order_id')
)comment '订单详情表';


>>>>>>> 4a529453d14a65680607a884660f8fe38dae0455
