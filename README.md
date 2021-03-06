# ETL_Project

# Managram: Shuffling Magic: The Gathering Cards into The Modern Economy
![alt text](https://github.com/Razzy415/ETL_Project/blob/master/Extra%20Content/MTG.png)

# Background
A strategy card game created by Dr. Richard Garfield, a mathematics professor and game designer, in 1993. Since it’s first core set, Alpha, Magic: The Gathering (MTG) now holds seven total world records and currently played in eleven languages globally with over 35 million players worldwide as of December 2018 according to Business Insider. 

Catering to collectors and hobbyists, to start a game of Magic, a player would have a minimum of 60 cards per deck. The player can pick what goes into their deck from 70 expansion sets that contain up to 300+ cards each set. Buying and trading then happens until a deck composition is achieved either for casually playing with friends or competitively in tournaments.

# Data
![alt text](https://github.com/Razzy415/ETL_Project/blob/master/Extra%20Content/EER%20Diagram.png)
- Gathered every card ever printed in the history of magic and created a core card table with unique oracle_id for each card.
- This oracle_id served as a foreign key for the set description table that contained set specific desciptors for a specific card printed in that set.
- Created a separate prices table that will contain various price listings obtained via API calls for each unique card identified via productid. Prices needs to be in a separate dynamic table due to fluctuations in prices on a daily basis to minimize altering the static tables such as core card and set description tables.

# Challenges
- Deleting duplicate entries to maintain a unique oracle_id, and productid while matching producid with a specific oracle_id to obtain prices via API calls.
- API calls for 40000+ rows took the most amount of time, approx 30mins and only 6000 productid information was obtain due to API call limitation.

# Future Considerations
- For anything more than 6000 productid, we have to do batch API calls. For this specific dataset, we could have cut the dataframe that holds productid and create 7 batches.
- Create a flask app that runs the API call script on a specific schedule and load to database to update prices table.
