/*This first query will return all of the tables in the database you are querying.*/
SELECT
  	TABLE_NAME
FROM
  	INFORMATION_SCHEMA.TABLES
    
/*The second query will return a list of all the columns and tables in the database you are querying*/

SELECT  	TABLE_NAME,
COLUMN_NAME
FROM
  	INFORMATION_SCHEMA.COLUMNS

/*Or, you can also query for just the COLUMNS from a specific table and return the column names from the specific table ‘Album’ in our database.*/
SELECT
	COLUMN_NAME
FROM
  	INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_NAME = 'Album'
  
 /*With this next query you can find out whether or not there is a TABLE in the data source that matches some kind of search parameters.*/
 IF EXISTS(
SELECT
  			*
  		FROM
  			INFORMATION_SCHEMA.TABLES
  		WHERE
  			TABLE_NAME = 'Album'
			)
SELECT 'found' AS search_result ELSE SELECT 'not found' AS search_result;


/*View definitions are stored in the information schema:*/

SELECT VIEW_DEFINITION FROM INFORMATION_SCHEMA.VIEWS
   WHERE TABLE_NAME = 'yourviewname'
