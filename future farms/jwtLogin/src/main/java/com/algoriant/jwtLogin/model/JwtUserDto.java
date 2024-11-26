package com.algoriant.jwtLogin.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class JwtUserDto {

    private String username;
    private  String password;

    public static JwtUserDto toDto(JwtAuthUser user){
        JwtUserDto jwtUserDto = new JwtUserDto();
        jwtUserDto.setUsername(user.getUsername());
        jwtUserDto.setPassword(user.getPassword());
        return jwtUserDto;
    }
}
