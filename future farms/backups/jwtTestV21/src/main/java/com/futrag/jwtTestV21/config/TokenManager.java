package com.futrag.jwtTestV21.config;


import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;

@Component
public class TokenManager {

    public static final long TOKEN_VALIDITY = 10 * 60 * 60;

    @Value("${secret}")
    private String jwtSecret;

    // Generates a token on successful authentication by the user
    public String generateJwtToken(UserDetails userDetails) {
        Map<String, Object> claims = new HashMap<>();
        return Jwts
                .builder()
                .setClaims(claims)  // set the claims
                .setSubject(userDetails.getUsername())  // set the username as subject in payload
                .setIssuedAt(new Date(System.currentTimeMillis()))
                .setExpiration(new Date(System.currentTimeMillis() + TOKEN_VALIDITY * 1000))
                .signWith(getKey(), SignatureAlgorithm.HS256)  // signature part
                .compact();
    }

    // Validates the token
    public Boolean validateJwtToken(String token, UserDetails userDetails) {
        final String username = getUsernameFromToken(token);
        final Claims claims = Jwts
                .parserBuilder()
                .setSigningKey(getKey())
                .build()
                .parseClaimsJws(token).getBody();
        Boolean isTokenExpired = claims.getExpiration().before(new Date());
        return (username.equals(userDetails.getUsername())) && !isTokenExpired;
    }

    // get the username by checking subject of JWT Token
    public String getUsernameFromToken(String token) {
        final Claims claims = Jwts
                .parserBuilder()
                .setSigningKey(getKey())
                .build()
                .parseClaimsJws(token).getBody();
        return claims.getSubject();
    }

    // create a signing key based on secret
    private Key getKey() {
        byte[] keyBytes = Decoders.BASE64.decode(jwtSecret);
        Key key = Keys.hmacShaKeyFor(keyBytes);
        return key;
    }
}
