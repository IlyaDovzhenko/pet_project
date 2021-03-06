package com.letscode.messager.controller;

import com.letscode.messager.domain.User;
import com.letscode.messager.repos.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class AdminController {

    private UserRepository userRepository;

    @GetMapping("/admin")
    public String admin(Map<String, Object> model) {
        Iterable<User> allUsers = userRepository.findAll();
        model.put("user", allUsers);
        return "admin";
    }


    @Autowired
    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }
    //todo: Add PostMapping and and some logic

}
