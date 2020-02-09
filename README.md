#SpringBoot Crud for Person Entity

	#Objective
	 Create a rest api for storing,deleting, updating and retriviing person entities
	
	Technologies used
	1.Spring boot
	2.Thymeleaf 
	3.Spring Data Jpa
	4.H2 in memory database

To run the project do the following steps:
	


	1.First clone the repo from this repo
			git clone https://github.com/durga1729/RestApi.git
	2.The code works with h2 database hence no extra configuration is needed
	3.To run the code-
		go inside the RestApi folder and run './mvnw spring-boot:run' (for unix system)
		or  mvnw spring-boot:run(for windows operating system)

	Doing so will start the application on http://localhost:8080/crud/home
	If 8080 is not available then navigate to src/main/resources/application.properties 
	and add the following line
			server.port=<the-port-number>
	 
	
Api Details			


	POST http://localhost:8080/crud/api/persons -- adding new person entity 		
	GET http://localhost:8080/crud/api/persons	--get all the person entity from the database
	PUT http://localhost:8080/crud/api/persons/<personId> --update a person entity
	GET http://localhost:8080/crud/api/persons/<personId> --get a person by id
	DELETE http://localhost:8080/crud/api/persons/<personId> --delete a person by id

Rest clients like postman or curl can be used for calling the rest api.


UI details:
	
	
	http://localhost:8080/crud/home --- gives you a table containing all the users in the database
	

	The addUser button is at the extreme left at the bottom of the table
	Each row has a button for edit and delete . 
	Clicking on the edit button takes you to http://localhost:8080/crud/edit/<personId>
	Change the necessary details and click on Add/Save user button which redirects to the http://localhost:8080/crud/home
	To delete a user click on the delete user button present on each row . 


H2(in-memory db) details-

	login to h2-console :
		http://localhost:8080/h2

	and run queries on the person table 
	
	'select * from person ' to verify whether the data added to the ui is getting persisted in the database.


	Example Person JSON:
	
	{
	"firstName":"durga",
	"lastName":"guthula",
	"favouriteColour":"green",
	"hobby":"chess",
	"age":"32"
	}

	Example SQL:
	
	DROP TABLE IF EXISTS person;
		
	CREATE TABLE person (
  	id INT AUTO_INCREMENT  PRIMARY KEY,
  	first_name VARCHAR(250) NOT NULL,
  	last_name VARCHAR(250) NOT NULL,
  	favourite_colour VARCHAR(250) NOT NULL,
  	age int,
  	hobby VARCHAR(250) NOT NULL
	);
 
	INSERT INTO person (first_name, last_name, favourite_colour, age,hobby) VALUES
  	('Aliko', 'Dangote', 'Green',23,'Chess,Acting'),
  	('Bill', 'Gates', 'Yellow',32,'Gardening,,Stamp-collection'),
  	('Folrunsho', 'Alakija', 'Pink','45','StampCollection , Loitering');
  

		


