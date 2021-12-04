package com.example.springcybersource;

import java.util.Arrays;
import org.aspectj.lang.ProceedingJoinPoint;

import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
//import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class TracingAspect {

    // @Pointcut("execution(* com.example.springcybersource.CyberSourceAPI.*(..))")
    // public void tracingMethods() {
    // }
    
    // @Around("tracingMethods()")
    // public Object aroundAdvice(final ProceedingJoinPoint joinPoint) throws Throwable {
    //     System.out.println("ASPECT ==> Arguments passed to method are: " + Arrays.toString(joinPoint.getArgs()));
    //     final Object result = joinPoint.proceed();
    //     System.out.println("ASPECT ==> Result from method is: " + result);
    //     return result;
    // }

    @Around("@annotation(com.example.springcybersource.TraceMe)")
    public Object aroundAdvice(final ProceedingJoinPoint joinPoint) throws Throwable {
        System.out.println("ASPECT ==> Arguments passed to method are: " + Arrays.toString(joinPoint.getArgs()));
        final Object result = joinPoint.proceed();
        System.out.println("ASPECT ==> Result from method is: " + result);
        return result;
    }

}
