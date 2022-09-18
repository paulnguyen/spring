package com.example.springstarbucksclient.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/*

    Autoconfiguring Spring Security

    REF:  Securing Spring | Spring in Action, Sixth Edition

    What does this barebones security configuration do for you? Not much, actually.
    The main thing it does is declare a PasswordEncoder bean, which we’ll use both
    when creating new users and when authenticating users at login.

    In this case, we’re using BCryptPasswordEncoder, one of a handful of password
    encoders provided by Spring Security, including the following:

        * BCryptPasswordEncoder—Applies bcrypt strong hashing encryption
        * NoOpPasswordEncoder—Applies no encoding
        * Pbkdf2PasswordEncoder—Applies PBKDF2 encryption
        * SCryptPasswordEncoder—Applies Scrypt hashing encryption
        * StandardPasswordEncoder—Applies SHA-256 hashing encryption

    No matter which password encoder you use, it’s important to understand that the
    password in the database is never decoded. Instead, the password that the user
    enters at login is encoded using the same algorithm, and it’s then compared with
    the encoded password in the database. That comparison is performed in the
    PasswordEncoder’s matches() method.

 */

@Configuration
public class SecurityConfig {

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

}