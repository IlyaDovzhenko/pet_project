package com.letscode.messager.controller;

import com.letscode.messager.domain.User;
import com.letscode.messager.repos.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class AdminController {

    //todo: Change to constructor injection
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/admin")
    public String admin(Map<String, Object> model) {
        Iterable<User> allUsers = userRepository.findAll();
        model.put("user", allUsers);
        return "admin";
    }

    //todo: Add PostMapping and and some logic

}
