CREATE EXTERNAL TABLE 'telegram' (
	'message_id' bigint,
	'user_id' bigint,
	'user_is_bot' boolean,
	'user_first_name' string,
	'chat_id' bigint,
	'chat_type'string,
	'text' string,
	'date' bigint)
PARTITIONED BY (
	'context_date' date)
ROW FORMAT SERDE
	'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
	'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat'
OUTPUT FORMAT 
	'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION 
	's3://<bucket-enriquecido>/'
