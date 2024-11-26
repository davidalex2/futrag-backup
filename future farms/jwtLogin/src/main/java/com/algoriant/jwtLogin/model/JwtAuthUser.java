package com.algoriant.jwtLogin.model;

import com.algoriant.jwtLogin.model.JwtAuthUser;
import com.sun.istack.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.sql.Date;
import java.util.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "user")
public class JwtAuthUser implements UserDetails {

    @Id
    @NotNull
    @Column(name = "username")
    private String username;

    @NotNull
    @Column(name = "password")
    private String password;


    @Column(name = "first_name",nullable = true)
    private String firstName;
    @Column(name = "last_name",nullable = true)
    private String lastName;
    @Column(name = "email",nullable = true)
    private String email;
    @Column(name = "subscription_id",nullable = true)
    private String subscription;
    @Column(name = "expiry_date",nullable = true)
    private Date expires;
//    private Integer userId;
//    private String firstName;
//    private String lastName;
//    private String email;
//    private String username;
//    private String userReferenceId;
//    private Boolean isVerified;
//    private String company;
//    private String phone;
//    private String address;
//    private String timezone;
//    private String status;
//    private Boolean isFirstLoggedIn;


//    public static JwtAuthUser toEntity(JwtUserDto jwtUserDto){
//        JwtAuthUser jwtAuthUser = new JwtAuthUser();
//        jwtAuthUser.setUsername(jwtUserDto.getUsername());
//        jwtAuthUser.setPassword(jwtUserDto.getPassword());
//        return jwtAuthUser;
//    }
    public static JwtAuthUser toEntity( JwtUserDto jwtUserDto){
        JwtAuthUser user = new JwtAuthUser();
        user.setUsername(jwtUserDto.getUsername());
        user.setPassword(jwtUserDto.getPassword());
        return user;
    }



    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<SimpleGrantedAuthority> authorities = new ArrayList<>();
        return authorities;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }


    @Override
    public boolean isAccountNonLocked() {
        return true;
    }


    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }


    @Override
    public boolean isEnabled() {
        return true;
    }

}
