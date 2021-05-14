-- checking for division against 0
SELECT  bec.energy_consumption_kwh / bre.bldg_asf as EUI_kWh_sf
FROM {{ref('bldg_energy_consumption')}} as bec, {{ref('bldg_real_estate')}} as bre where bre.bldg_asf = 0