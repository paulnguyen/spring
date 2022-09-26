# Spring Gumball

### Version 3.0

* Implementation of HMAC HASH version
* With JPA/MySQL Database Support
* Project Ported over to Spring Boot 2.7
* With Spring Security Added
* Default Spring Security Login Form Enabled
* Default CSRF Protection Enabled

### Version 3.1 

* Port of 3.0 from Spring Boot 2.6 to 2.7

	* Implementation of HMAC HASH version
	* With JPA/MySQL Database Support
	* With Spring Security Added
	* Default Spring Security Login Form Enabled

* Added Spring Security Bare Bones Configuration Class
* Added In-Memory User Config for Authentication
* Disabled CSRF Protection for POST Processing

Spring Security:
	
* https://docs.spring.io/spring-security/reference/servlet/authentication/passwords/storage.html
	
Storage Mechanisms
	
Each of the supported mechanisms for reading a username and password can leverage any of 
the supported storage mechanisms:
	
* Simple Storage with In-Memory Authentication
* Relational Databases with JDBC Authentication
* Custom data stores with UserDetailsService
* LDAP storage with LDAP Authentication


### Version 3.2

* Added Support for CSRF Protection
* Added Home Controller (Redirects to Console)
* Added Login Controller & Custom Login Page

Cross Site Request Forgery (CSRF)

* https://docs.spring.io/spring-security/reference/features/exploits/csrf.html
* https://docs.spring.io/spring-security/reference/servlet/exploits/csrf.html

Custom Login Form Example

* https://docs.spring.io/spring-security/reference/servlet/authentication/passwords/form.html
* https://codepen.io/khadkamhn/pen/ZGvPLo










