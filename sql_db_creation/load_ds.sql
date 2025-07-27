COPY malicious_web
FROM 'C:\University\personal projects\SQL-Project\data\malicious_web_ds.csv'
DELIMITER ',' CSV HEADER
NULL 'NA'

ALTER TABLE malicious_web
ALTER COLUMN WHOIS_REGDATE TYPE DATE USING to_timestamp(WHOIS_REGDATE, 'DD/MM/YYYY HH24:MI');
