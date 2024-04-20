SELECT tarrif.PartnerCountry, Country, ROUND(AVG(MinAve), 4) AS 'Average-AVE'
FROM dbo.[DOM-Tariffs] tarrif
LEFT JOIN dbo.[country-codes] country
ON tarrif.PartnerCountry = country.NumCode
WHERE Country IS NOT NULL
GROUP BY tarrif.PartnerCountry, Country
ORDER BY 'Average-AVE' DESC
