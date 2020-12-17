SELECT
  country,
  sum(expected_deaths) as total_expected_deaths,
  sum(excess_deaths) as total_excess_deaths,
  (sum(excess_deaths)+sum(expected_deaths))/sum(expected_deaths)*100 as percentage_of_typ
  
  
  FROM `bigquery-public-data.covid19_nyt.excess_deaths` 
  GROUP BY country
  ORDER BY percentage_of_typ DESC
  LIMIT 50
