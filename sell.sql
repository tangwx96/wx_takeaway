create table product_info(
<<<<<<< HEAD
     product_id varchar(32) not null,
     product_name varchar(64) not null comment 'ÉÌÆ·Ãû³Æ',
     product_price decimal(8,2) not null comment 'µ¥¼Û',
     product_stock int not null comment '¿â´æ',
     product_description varchar(64) comment 'ÃèÊö',
     product_icon varchar(512) comment 'Ð¡Í¼',
     category_type int not null comment 'ÀàÄ¿±àºÅ',
     create_time timestamp not null default current_timestamp comment '´´½¨Ê±¼ä',
     update_time timestamp not null default current_timestamp on update current_timestamp comment 'ÐÞ¸ÄÊ±¼ä',
     primary key (product_id)
)comment 'ÉÌÆ·±í';
=======
     product_id varchar(32) not null;
     product_name varchar(64) not null comment 'å•†å“åç§°',
     product_price decimal(8,2) not null comment 'å•ä»·',
     product_stock int not null comment 'åº“å­˜',
     product_description varchar(64) comment 'æè¿°';
     product_icon varchar(512) comment 'å°å›¾';
     category_type int not null comment 'ç±»ç›®ç¼–å·';
     create_time timestamp not null default current_timestamp comment 'åˆ›å»ºæ—¶é—´';
     update_time timestamp not null default current_timestamp on update current_timestamp comment 'ä¿®æ”¹æ—¶é—´';
     primary key ('product_id')
)comment 'å•†å“è¡¨';
>>>>>>> 4a529453d14a65680607a884660f8fe38dae0455

create table product_category(
<<<<<<< HEAD
   category_id int not null auto_increment,
   category_name varchar(64) not null comment 'ÀàÄ¿Ãû×Ö',
   category_type int not null comment 'ÀàÄ¿±àºÅ',
   create_time timestamp not null default current_timestamp comment '´´½¨Ê±¼ä',
   update_time timestamp not null default current_timestamp on update current_timestamp comment 'ÐÞ¸ÄÊ±¼ä',
   primary key(category_id),
   unique key(category_type)
)comment 'ÉÌÆ·ÀàÄ¿±í';

create table order_master(
     order_id varchar(32) not null,
     buyer_name varchar(32) not null comment 'Âò¼ÒÃû×Ö',
     buyer_phone varchar(32) not null comment 'Âò¼Òµç»°',
     buyer_address varchar(128) not null comment 'Âò¼ÒµØÖ·',
     buyer_openid varchar(64) not null comment 'Âò¼ÒÎ¢ÐÅopenid',
     order_amount  decimal(8,2) not null comment '¶©µ¥×Ü½ð¶î',
     order_status tinyint(3) not null default 0 comment '¶©µ¥×´Ì¬£¬Ä¬ÈÏ0ÐÂÏÂµ¥',
     pay_status tinyint(3) not null default 0 comment 'Ö§¸¶×´Ì¬£¬Ä¬ÈÏ0Î´Ö§¸¶',
     create_time timestamp not null default current_timestamp comment '´´½¨Ê±¼ä',
     update_time timestamp not null default current_timestamp on update current_timestamp comment 'ÐÞ¸ÄÊ±¼ä',
 primary key (order_id),
 key (buyer_openid)
)comment '¶©µ¥±í';
=======
   'category_id' int not null auto_increment,
   'category_name' varchar(64) not null comment 'ç±»ç›®åå­—',
   'category_type' int not null comment 'ç±»ç›®ç¼–å·',
   create_time timestamp not null default current_timestamp comment 'åˆ›å»ºæ—¶é—´';
   update_time timestamp not null default current_timestamp on update current_timestamp comment 'ä¿®æ”¹æ—¶é—´';
   primary key ('category_id'),
   unique key 'uqe_category_type' ('category_type')


)comment '';

create table order_master(
     order_id varchar(32) not null,
     buyer_name varchar(32) not null comment 'ä¹°å®¶åå­—';
     buyer_phone varchar(32) not null comment 'ä¹°å®¶ç”µè¯';
     buyer_address varchar(128) not null comment 'ä¹°å®¶åœ°å€';
     buyer_openid varchar(64) not null comment 'ä¹°å®¶å¾®ä¿¡openid';
     order_amount  decimal(8,2) not null comment 'è®¢å•æ€»é‡‘é¢';
     order_status tinyint(3) not null default 0 comment 'è®¢å•çŠ¶æ€ï¼Œé»˜è®¤0æ–°ä¸‹å•';
     pay_status tinyint(3) not null default 0 comment 'æ”¯ä»˜çŠ¶æ€ï¼Œé»˜è®¤0æœªæ”¯ä»˜';
     create_time timestamp not null default current_timestamp comment 'åˆ›å»ºæ—¶é—´';
     update_time timestamp not null default current_timestamp on update current_timestamp comment 'ä¿®æ”¹æ—¶é—´';
 primary key ('order_id')
 key 'idx_buyer_openid' ('buyer_openid')

)comment 'è®¢å•è¡¨';
>>>>>>> 4a529453d14a65680607a884660f8fe38dae0455

create table order_detail(
detail_id varchar(32) not null,
  order_id varchar(32) not null,
<<<<<<< HEAD
   product_id varchar(32) not null,
    product_name varchar(64) not null comment 'ÉÌÆ·Ãû³Æ',
     product_price decimal(8,2) not null comment 'ÉÌÆ·¼Û¸ñ',
      product_quantity int not null comment 'ÉÌÆ·ÊýÁ¿',
           product_icon varchar(512) comment 'Ð¡Í¼',
       create_time timestamp not null default current_timestamp comment '´´½¨Ê±¼ä',
     update_time timestamp not null default current_timestamp on update current_timestamp comment 'ÐÞ¸ÄÊ±¼ä',
      primary key (detail_id),
      key (order_id)
)comment '¶©µ¥ÏêÇé±í';
=======
   product_id varchar(32) not null;
    product_name varchar(64) not null comment 'å•†å“åç§°',
     product_price decimal(8,2) not null comment 'å•†å“ä»·æ ¼',
      product_quantity int not null comment 'å•†å“æ•°é‡',
           product_icon varchar(512) comment 'å°å›¾',
       create_time timestamp not null default current_timestamp comment 'åˆ›å»ºæ—¶é—´';
     update_time timestamp not null default current_timestamp on update current_timestamp comment 'ä¿®æ”¹æ—¶é—´';
      primary key ('detail_id'),
      key 'idx_order_id' ('order_id')
)comment 'è®¢å•è¯¦æƒ…è¡¨';


>>>>>>> 4a529453d14a65680607a884660f8fe38dae0455
