# Evolution-of-Phones-Database
A look into the evolution of Smartphones between 2000 - 2010 using mySQL

## Detailed Description
This project will demonstrate, in chronological order, how mobile phones evolved between the years 2000 and 2010. I will look at how phone sizes have changed over time, as well as the reasons for the changes. I will not only examine the physical changes in these phones over time, but I will also examine the technological changes over time. Operating systems, CPUs, security, and battery life are a few examples. I will also discuss the transition from 3G to 4G. A shift away from traditional button input and toward touchscreen technologies will also be observed.

# Database Analysis

## Logical Design
The database holds various specifications on smartphones released between the years 2000-2010. I chose to focus on smartphone technology within this timeframe so that I can analyze the evolution of mobile technology during the era where smartphones had their most exponential growth. The data available for these phones was also very easy to find as the website GSMArena.com held a massive collection of accurate data on multiple phones released during this time. 
![image](https://user-images.githubusercontent.com/101474440/218368190-1d8cadc3-cbff-4b51-86be-973d33c8e8ec.png)

## Physical Database
  - Phones feature a phone’s name, price, release date and foreign keys to connect to other tables with brand_id, os_id, cpu_id, security_id and camera_id as well as a       primary key phone_id. 
  - Camera holds camera_id and resolutions in Megapixels.
  - CPU_Brands holds cpu_ids and the CPU’s name.
  - Operating systems hold the os_id, operating system name and associated app store.
  - Brands includes the brand_id, Phone Brand name, and the number of models that brand made in the timeframe. 
  - Security includes the security_id and the type of security feature prominent on that device (PIN number, Slide to Unlock, Password, etc.)
  - Displays include the display_id and the display type name (TFT screen, IPS, AMOLED).
  - Finally the linking table phones_phone_technology holds phone_ids and tech_ids, linking to the phone_technology table with a tech_id, screen resolution, battery size     and max storage capacity as well as a foreign key.

## Views and Queries
“_Less_than_300_” is a view that groups all phones in the database that are less than $300 USD at the time of release. This may be interesting to people that wish to research how budgetary restraints affect the purchase rate of smartphones at this time. 
“_large _battery_phones_” gives phones with over 1000mAh capabilities which is not only a feature that would be important to people concerned with battery life, but also to those that wish to see the evolution of battery power over the past 15 years.
“High_storage_phones” gives phones with at least 1GB capacity or more within the database sorted by Brand name. Like the last table, seeing the evolution of another critical aspect to smartphones could be something interesting to researchers and users of our table. Also being able to see which brands featured phones with higher storage capacities at the time may be interesting.
“Os_security_by_brand” showcases the most popular security feature used by each brand based on the number of phones with said feature. This shows how new touchscreen technology encouraged companies to put new features like slide-to-unlock on most of their new phones, maybe as a way to market new technologies to interested customers.
“phone_best _camera” features the best or highest megapixel camera phone of each brand and also lists the phone name with that camera. Seeing how important cameras are to general consumers these days showcasing the capabilities of smartphones at this time could be an interesting view to have.
Finally, “price_average_by_brand” aggregates the average price of all phones released by each brand within the database. Price is the first thing anyone sees when purchasing something, especially a smartphone. Seeing how companies accommodated this through price, especially in a time when this was an emerging market is very important.
![image](https://user-images.githubusercontent.com/101474440/218368436-6796e932-61eb-460d-85e9-056f758978c0.png)

## *DATA WAS GATHERED FROM GSMArena.com*
https://www.gsmarena.com/
