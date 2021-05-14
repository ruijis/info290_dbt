-- checking if extra buildings crept in
-- or buildings with same count
SELECT count(*)
FROM {{ref('bldg')}} as b having count(*) > 1