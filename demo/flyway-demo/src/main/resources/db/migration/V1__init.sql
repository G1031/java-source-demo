DROP TABLE IF EXISTS `jjjfood_admin_user`;
CREATE TABLE `jjjfood_admin_user`
(
    `admin_user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
    `user_name`     varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
    `salt`          varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐值',
    `password`      varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录密码',
    `create_time`   timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time`   timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (`admin_user_id`) USING BTREE,
    INDEX           `user_name`(`user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10002 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '超管用户记录表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of jjjfood_admin_user
-- ----------------------------
INSERT INTO `jjjfood_admin_user`
VALUES (10001, 'admin', 'b251dd', '4250df939fa1ed8635a68f09f8efd3a99ba5671ad325c4e167cce275c36d2ad7',
        '2022-06-24 11:44:02', '2022-06-24 12:02:54');
