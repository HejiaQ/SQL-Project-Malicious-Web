/*What is the mean, max, min, and variance of the number of special characters for benign websites and for malicious websites?*/

SELECT type, AVG(number_special_characters), MAX(number_special_characters), MIN(number_special_characters), VARIANCE(number_special_characters)
FROM malicious_web
GROUP BY type;

/*What is the mean, max, min, and variance of the number of tcp packets exchanged for benign websites and for malicious websites?*/

SELECT type, AVG(tcp_conversation_exchange), MAX(tcp_conversation_exchange), MIN(tcp_conversation_exchange), VARIANCE(tcp_conversation_exchange)
FROM malicious_web
GROUP BY type;

/*What is the mean, max, min, and variance of the number of DNS packets generated during the communication between the honeypot and the server for benign websites and for malicious websites?*/
SELECT type, AVG(dns_query_times), MAX(dns_query_times), MIN(dns_query_times), VARIANCE(dns_query_times)
FROM malicious_web
GROUP BY type;

/*What are the top 3 server used for benign websites? */
SELECT server, count(*)
FROM malicious_web
WHERE server IS NOT NULL AND type = 0
GROUP BY server
ORDER BY count(*) DESC
LIMIT 3;

/*What are the top 3 server used for malicious websites? */
SELECT server, count(*)
FROM malicious_web
WHERE server IS NOT NULL AND type = 1
GROUP BY server
ORDER BY count(*) DESC
LIMIT 3;

/*What is the average of the total number of IPs connected to the honeypot, and how many website has that number above the average for benign website and for malicious website */
SELECT type, ips_above_avg, total, CAST(ips_above_avg AS FLOAT) / total AS ratio
FROM (
    SELECT type, count(*) AS ips_above_avg
    FROM malicious_web
    WHERE remote_ips > (SELECT AVG(remote_ips) FROM malicious_web)
    GROUP BY type
)
NATURAL JOIN (SELECT type, count(*) AS Total FROM malicious_web GROUP BY type);

