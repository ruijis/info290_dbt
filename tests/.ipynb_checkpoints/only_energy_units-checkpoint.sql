-- checking for non energy units that 
-- we know exist
SELECT bm.* 
FROM {{ref('bldg_energy_metadata')}} as bm
WHERE bm.units not in ('kwh', 'Kwh', 'kWh', 'kwH', 'KWh', 'KwH', 'kWH', 'KWH', 'kw', 'Kw', 'kW', 'KW')