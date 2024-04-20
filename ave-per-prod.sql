SELECT tarrif.ProductCode, ProductDescription, ROUND(AVG(MaxAve), 4) AS 'Average-AVE'
FROM dbo.[DOM-Tariffs] tarrif
LEFT JOIN dbo.[Product-List-DR] prod
ON tarrif.ProductCode = prod.ProductCode
GROUP BY tarrif.ProductCode, ProductDescription
ORDER BY 'Average-AVE' Desc