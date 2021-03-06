-- Licensed to the Apache Software Foundation (ASF) under one or more
-- contributor license agreements.  See the NOTICE file distributed with
-- this work for additional information regarding copyright ownership.
-- The ASF licenses this file to You under the Apache License, Version 2.0
-- (the "License"); you may not use this file except in compliance with
-- the License.  You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

DROP TABLE IF EXISTS `x_service_version_info`;

CREATE TABLE `x_service_version_info` (
`id` bigint(20) NOT NULL AUTO_INCREMENT,
`service_id` bigint(20) NOT NULL,
`policy_version` bigint(20) NOT NULL DEFAULT 0,
`policy_update_time` datetime NULL DEFAULT NULL,
`tag_version` bigint(20) NOT NULL DEFAULT 0,
`tag_update_time` datetime NULL DEFAULT NULL,
primary key (`id`),
CONSTRAINT `x_service_version_info_FK_service_id` FOREIGN KEY (`service_id`) REFERENCES `x_service` (`id`) 
);
CREATE INDEX x_service_version_info_IDX_service_id ON x_service_version_info(service_id);

