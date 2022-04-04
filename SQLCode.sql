SELECT client,string_agg(protocol,', ') as protocol FROM 
(SELECT  client,protocol, (traffic_in+traffic_out) AS all_traffic FROM traffic
ORDER BY all_traffic DESC) AS filtered
GROUP BY client
ORDER BY client ASC;