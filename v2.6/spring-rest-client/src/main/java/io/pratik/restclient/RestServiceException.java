/**
 * 
 */
package io.pratik.restclient;

import org.springframework.http.HttpStatus;

/**
 * @author pratikdas
 *
 */
public class RestServiceException extends RuntimeException {

	 
	private static final long serialVersionUID = 1L;
	
	private final String serviceName;
	private final HttpStatus statusCode;
	private final String error;
	public RestServiceException(String serviceName, HttpStatus statusCode, String error) {
		super();
		this.serviceName = serviceName;
		this.statusCode = statusCode;
		this.error = error;
	}
	public String getServiceName() {
		return serviceName;
	}
	public HttpStatus getStatusCode() {
		return statusCode;
	}
	public String getError() {
		return error;
	}

	

}

