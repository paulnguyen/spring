package com.example.springpayments;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import com.example.springcybersource.* ;

@SpringBootTest
class SpringPaymentsApplicationTests {

	@Test
	void authTest() {

      	CyberSourceAPI api = new CyberSourceAPI() ;
		AuthRequest auth = new AuthRequest() ;
		auth.reference = "Order Number: 12345" ;
		auth.billToFirstName = "John" ;
		auth.billToLastName = "Doe" ;
		auth.billToAddress = "123 N. Main St." ;
		auth.billToCity = "New York" ;
		auth.billToState = "NY" ;
		auth.billToZipCode = "10001" ;
		auth.billToPhone = "(212) 123-9876" ;
		auth.billToEmail = "john.doe@email.com" ;
		auth.transactionAmount = "33.00" ;
		auth.transactionCurrency = "USD" ;
		auth.cardNumnber = "4111-1111-1111-1111" ;
		auth.cardExpMonth = "10" ;
		auth.cardExpYear = "2024" ;
		auth.cardCVV = "123" ;
		auth.cardType = "001" ;
		boolean authValid = false ;
		AuthResponse authResponse = new AuthResponse() ;
		System.out.println("\n\nAuth Request: " + auth.toJson() ) ;
		authResponse = api.authorize(auth) ;			
		if (authResponse.status.equals("AUTHORIZED")) 
			authValid = true ;
		System.out.println("\n\nAuth Response: " + authResponse.toJson() ) ;	

		boolean captureValid = false ;
		CaptureRequest capture = new CaptureRequest() ;
		CaptureResponse captureResponse = new CaptureResponse() ;
		if ( authValid ) {
			capture.reference = "Order Number: 12345" ;
			capture.paymentId = authResponse.id ;
			capture.transactionAmount = "33.00" ;
			capture.transactionCurrency = "USD" ;
			System.out.println("\n\nCapture Request: " + capture.toJson() ) ;
			captureResponse = api.capture(capture) ;
			if (captureResponse.status.equals("PENDING")) 
				captureValid = true ;
			System.out.println("\n\nCapture Response: " + captureResponse.toJson() ) ;
		}

		RefundRequest refund = new RefundRequest() ;
		RefundResponse refundResponse = new RefundResponse() ;		
		boolean refundValid = false ;

		if ( captureValid ) {
			refund.reference = "Order Number: 12345" ;
			refund.captureId = captureResponse.id ;
			refund.transactionAmount = "33.00" ;
			refund.transactionCurrency = "USD" ;
			System.out.println("\n\nRefund Request: " + refund.toJson() ) ;
			refundResponse = api.refund(refund) ;
			if (refundResponse.status.equals("PENDING")) 
				refundValid = true ;
			System.out.println("\n\nRefund Response: " + refundResponse.toJson() ) ;
		}

	}

}
