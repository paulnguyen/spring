-------------------------------------------------------
## Spring Starbucks API
-------------------------------------------------------


### Version 1.0

* Initial Implementation of Starbucks REST API
* Has support for JPA with H2 In-Memory Database


### Version 2.0

* Added Support for Orders


### Version 2.1

* Modifications to JPA config to use MySQL Database


### Version 3.0

* Added Spring Profiles Support


### Version 3.1

* Updated for CMPE 172 Starbucks Project



-------------------------------------------------------
## Spring Starbucks Client
-------------------------------------------------------


### Version 1.0

* Initial Implementation of Starbucks REST API Client
* Hard Coded to Localhost Port 8080


### Version 2.0

* Implementation of Starbucks REST API Client
* Configured Endpoints and Port to Localhost Port 80 with API Keys (i.e. for use with Kong)


### Version 3.0 

* Add Spring Security Spring Boot Starter
* Default Authentication Web Form Injected 
	* Default User Name:  user
	* Default User Password: (look for generated password during startup logs)

By doing nothing more than adding the security starter to the project build, you get the following security features:

	* All HTTP request paths require authentication.
	* No specific roles or authorities are required.
	* Authentication is prompted with a simple login page.
	* There’s only one user; the username is user.


### Version 3.1 

* Add Spring Security Bare Bones Configuration Class










