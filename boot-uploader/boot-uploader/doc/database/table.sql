-- 文件表
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info`
(
    `id`             bigint(18) unsigned NOT NULL,
    `filename`       varchar(100)        DEFAULT NULL COMMENT '文件名',
    `identifier`     varchar(100)        NOT NULL COMMENT '文件标识',
    `total_size`     varchar(100)        DEFAULT NULL COMMENT '文件大小',
    `type`           varchar(100)        DEFAULT NULL COMMENT '文件类型',
    `location`       varchar(100)        DEFAULT NULL COMMENT '文件路径',
    PRIMARY KEY (`id`)
) ENGINE = INNODB
  DEFAULT CHARSET = utf8 COMMENT = '文件信息';

-- 分块表
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info`
(
    `id`               bigint(18) unsigned NOT NULL,
    `chunkNumber`      int                 NOT NULL COMMENT '当前文件块，从1开始',
    `chunkSize`        bigint              NOT NULL COMMENT '分块大小',
    `currentChunkSize` bigint              NOT NULL COMMENT '当前分块大小',
    `totalSize`        bigint              NOT NULL COMMENT '整个文件总大小',
    `identifier`       varchar(100)        NOT NULL COMMENT '文件标识',
    `filename`         varchar(100)        DEFAULT NULL COMMENT '文件名',
    `relativePath`     varchar(100)        DEFAULT NULL COMMENT '相对路径',
    `totalChunks`      int                 NOT NULL COMMENT '总块数',
    `type`             varchar(100)        DEFAULT NULL COMMENT '文件类型',
    PRIMARY KEY (`id`)
) ENGINE = INNODB
  DEFAULT CHARSET = utf8 COMMENT = '文件分块信息';