package com.futrag.jwtLoginv17.model;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class LoginUserDto {
    private String email;

    private String password;

    // getters and setters here...
}
