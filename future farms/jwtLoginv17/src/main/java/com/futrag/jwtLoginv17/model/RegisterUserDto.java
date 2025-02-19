package com.futrag.jwtLoginv17.model;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class RegisterUserDto {
    private String email;

    private String password;

    private String username;

}