create table product_info(
<<<<<<< HEAD
     product_id varchar(32) not null,
     product_name varchar(64) not null comment '商品名称',
     product_price decimal(8,2) not null comment '单价',
     product_stock int not null comment '库存',
     product_description varchar(64) comment '描述',
     product_icon varchar(512) comment '小图',
     category_type int not null comment '类目编号',
     create_time timestamp not null default current_timestamp comment '创建时间',
     update_time timestamp not null default current_timestamp on update current_timestamp comment '修改时间',
     primary key (product_id)
)comment '商品表';
=======
     product_id varchar(32) not null;
     product_name varchar(64) not null comment '鍟嗗搧鍚嶇О',
     product_price decimal(8,2) not null comment '鍗曚环',
     product_stock int not null comment '搴撳瓨',
     product_description varchar(64) comment '鎻忚堪';
     product_icon varchar(512) comment '灏忓浘';
     category_type int not null comment '绫荤洰缂栧彿';
     create_time timestamp not null default current_timestamp comment '鍒涘缓鏃堕棿';
     update_time timestamp not null default current_timestamp on update current_timestamp comment '淇敼鏃堕棿';
     primary key ('product_id')
)comment '鍟嗗搧琛�';
>>>>>>> 4a529453d14a65680607a884660f8fe38dae0455

create table product_category(
<<<<<<< HEAD
   category_id int not null auto_increment,
   category_name varchar(64) not null comment '类目名字',
   category_type int not null comment '类目编号',
   create_time timestamp not null default current_timestamp comment '创建时间',
   update_time timestamp not null default current_timestamp on update current_timestamp comment '修改时间',
   primary key(category_id),
   unique key(category_type)
)comment '商品类目表';

create table order_master(
     order_id varchar(32) not null,
     buyer_name varchar(32) not null comment '买家名字',
     buyer_phone varchar(32) not null comment '买家电话',
     buyer_address varchar(128) not null comment '买家地址',
     buyer_openid varchar(64) not null comment '买家微信openid',
     order_amount  decimal(8,2) not null comment '订单总金额',
     order_status tinyint(3) not null default 0 comment '订单状态，默认0新下单',
     pay_status tinyint(3) not null default 0 comment '支付状态，默认0未支付',
     create_time timestamp not null default current_timestamp comment '创建时间',
     update_time timestamp not null default current_timestamp on update current_timestamp comment '修改时间',
 primary key (order_id),
 key (buyer_openid)
)comment '订单表';
=======
   'category_id' int not null auto_increment,
   'category_name' varchar(64) not null comment '绫荤洰鍚嶅瓧',
   'category_type' int not null comment '绫荤洰缂栧彿',
   create_time timestamp not null default current_timestamp comment '鍒涘缓鏃堕棿';
   update_time timestamp not null default current_timestamp on update current_timestamp comment '淇敼鏃堕棿';
   primary key ('category_id'),
   unique key 'uqe_category_type' ('category_type')


)comment '';

create table order_master(
     order_id varchar(32) not null,
     buyer_name varchar(32) not null comment '涔板鍚嶅瓧';
     buyer_phone varchar(32) not null comment '涔板鐢佃瘽';
     buyer_address varchar(128) not null comment '涔板鍦板潃';
     buyer_openid varchar(64) not null comment '涔板寰俊openid';
     order_amount  decimal(8,2) not null comment '璁㈠崟鎬婚噾棰�';
     order_status tinyint(3) not null default 0 comment '璁㈠崟鐘舵�侊紝榛樿0鏂颁笅鍗�';
     pay_status tinyint(3) not null default 0 comment '鏀粯鐘舵�侊紝榛樿0鏈敮浠�';
     create_time timestamp not null default current_timestamp comment '鍒涘缓鏃堕棿';
     update_time timestamp not null default current_timestamp on update current_timestamp comment '淇敼鏃堕棿';
 primary key ('order_id')
 key 'idx_buyer_openid' ('buyer_openid')

)comment '璁㈠崟琛�';
>>>>>>> 4a529453d14a65680607a884660f8fe38dae0455

create table order_detail(
detail_id varchar(32) not null,
  order_id varchar(32) not null,
<<<<<<< HEAD
   product_id varchar(32) not null,
    product_name varchar(64) not null comment '商品名称',
     product_price decimal(8,2) not null comment '商品价格',
      product_quantity int not null comment '商品数量',
           product_icon varchar(512) comment '小图',
       create_time timestamp not null default current_timestamp comment '创建时间',
     update_time timestamp not null default current_timestamp on update current_timestamp comment '修改时间',
      primary key (detail_id),
      key (order_id)
)comment '订单详情表';
=======
   product_id varchar(32) not null;
    product_name varchar(64) not null comment '鍟嗗搧鍚嶇О',
     product_price decimal(8,2) not null comment '鍟嗗搧浠锋牸',
      product_quantity int not null comment '鍟嗗搧鏁伴噺',
           product_icon varchar(512) comment '灏忓浘',
       create_time timestamp not null default current_timestamp comment '鍒涘缓鏃堕棿';
     update_time timestamp not null default current_timestamp on update current_timestamp comment '淇敼鏃堕棿';
      primary key ('detail_id'),
      key 'idx_order_id' ('order_id')
)comment '璁㈠崟璇︽儏琛�';


>>>>>>> 4a529453d14a65680607a884660f8fe38dae0455
