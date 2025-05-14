-- 1. Check total countries
 SELECT COUNT(*) AS total_countries
FROM fintech.countries;
--R/ 244

-- 2. Count of all issuers that operates in New Zeland and USA
SELECT COUNT(country_code) FROM fintech.issuers AS total_issuers
WHERE country_code IN ('NZ','US');
--R/ 9470
 
-- 3. Get the clients that firs_name starts with A and end in o
-- only the first 5 records;
 SELECT *
FROM fintech.clients
WHERE first_name ILIKE 'A%o'
LIMIT 5;
--R/  "CL-985679262427076"	"Alfonso"		    "Salinas"	"Female"	"1971-03-24"	"donatofusterSierradolor47878@outlook.com"	"+34 928 07 84 64"	 "Ronda Estela Fabregat 60, Málaga, 46418"
    --"CL-764211056727665"	"Anacleto"		    "Peláez"	"Male"	    "1980-12-29"	"nazaret15Juárezratione44299@clientzone.co"	"+34 944345379"	     "Calle Nayara Cantón 9 Apt. 10 , Alicante, 18875"
    --"CL-985645073024573"	"Alberto"		    "Neira"	    "Other"	    "1961-03-20"	"herminiosilvaVerdúincidunt80794@myapp.io"	"+34844 66 37 32"	 "Calle Arsenio Ibañez 553, Segovia, 20091"
    --"CL-182254851466238"	"Abilio"	"Amor"	"Pareja"	"Female"	"1992-12-25"	"cayetana07Cuéllarquo98238@securemail.net"	"+34979327328"	     "Camino Marcia Tormo 70 Apt. 34 , Valladolid, 24765"
    --"CL-601418524468473"	"Amando"		    "Andres"	"Male"	    "1982-03-16"	"xtejeraPinillaquasi94759@mailpro.tech"	    "+34 842 85 85 71"	 "Vial de África Sola 6 Piso 6 , Álava, 50204"

-- 4. List the first 10 merchant_locations that in categories like
-- Corner, Gallery, Warehouse and Market. Also, exclude all countries
-- except Colombia.
SELECT *
FROM fintech.merchant_locations
WHERE category IN ('Corner', 'Gallery', 'Warehouse', 'Market')
  AND country_code = 'CO'
LIMIT 10;
--R/3649	"Happy Treatment Boutique"	"Warehouse"	 "Ourense"	        "CO"	-15.032137	68.251909
  --5720	"Modern Heavy Mart"	        "Gallery"	 "Sellersburgh"	    "CO"	-29.914918	107.181638
  --5807	"Happy Somebody Corner"	    "Corner"	 "Veľký Šariš"	    "CO"	81.572744	-60.400185
  --6098	"Urban He Depot"	        "Corner"	 "Horodnic de Sus"	"CO"	-58.909261	-57.500539
  --7279	"Green Friend Gallery"	    "Warehouse"	 "West Agnese"	    "CO"	-89.661156	-150.256689
  --7895	"Modern Political Stand"	"Gallery"	"Austinmouth"	    "CO"	49.017786	-63.127043
  --8301	"Golden Friend Corner"	    "Market"	"New Donaldport"	"CO"	47.574143	-130.229357
  --9754	"Happy Drive Stand"	        "Corner"	"Jessicafort"	    "CO"	60.387209	-129.739967
  --10794	"Urban Somebody Shop"	    "Corner"	"Connerfurt"	    "CO"	-17.568272	-25.301687
  --10813	"Urban Challenge Stand"	    "Gallery"	"Garyhaven"	        "CO"	56.645883	149.881466

 
-- 5. Count credit cards issued by this franquise '886287'alfa2024*
SELECT COUNT(*) AS total_cards
FROM fintech.credit_cards
WHERE franchise_id = '886287';
--R/ 2
 