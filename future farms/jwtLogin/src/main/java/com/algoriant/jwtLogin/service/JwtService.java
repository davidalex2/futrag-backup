package com.algoriant.jwtLogin.service;

import com.algoriant.jwtLogin.config.JwtTokenUtil;
import com.algoriant.jwtLogin.model.JwtAuthUser;
import com.algoriant.jwtLogin.model.JwtUserDto;
import io.jsonwebtoken.Claims;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;

@Service
public class JwtService {

    @Autowired
    AuthenticationManager authManager;

    @Autowired
    JwtTokenUtil jwtUtil;

    public JwtUserDto login(JwtUserDto jwtRequest) {
        Authentication authentication = authManager.authenticate( new UsernamePasswordAuthenticationToken(jwtRequest.getUsername(), jwtRequest.getPassword()));

        JwtAuthUser user = (JwtAuthUser) authentication.getPrincipal();
        String accessToken = jwtUtil.generateAccessToken(user);

        return new JwtUserDto();
    }

    public String validateToken(String token) {
        Boolean validated =  jwtUtil.validateAccessToken(token);
        if (validated == true) {
            return "Validate Token!";
        }
        return "Invalid Token!";
    }

    public Claims parseClaim(String token) {
        return jwtUtil.parseClaims(token);
    }
}
