/*Find the largest country (by area) in each continent, show the continent, the name and the area:*/

SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)
