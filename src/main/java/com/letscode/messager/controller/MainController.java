package com.letscode.messager.controller;

import com.letscode.messager.domain.Message;
import com.letscode.messager.repos.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainController {

    private MessageRepository messageRepository;

    @GetMapping("/")
    public String greeting(Map<String, Object> model) {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(Map<String, Object> model) {
        Iterable<Message> allMessages = messageRepository.findAll();
        model.put("messages", allMessages);
        return "main";
    }

    @PostMapping("/main")
    public String addMessage(@RequestParam String newMessage, @RequestParam String tag, Map<String, Object> model) {

        Message message = new Message(newMessage, tag);
        messageRepository.save(message);

        Iterable<Message> allMessages = messageRepository.findAll();
        model.put("messages", allMessages);

        return "main";
    }

    @PostMapping("/filter")
    public String filter(@RequestParam String filter, Map<String, Object> model) {
        Iterable<Message> messages;

        if (filter != null && !filter.isEmpty()) {
            messages = messageRepository.findByTag(filter);
        } else {
            messages = messageRepository.findAll();
        }

        model.put("messages", messages);

        return "main";
    }

    @Autowired
    public void setMessageRepository(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }

}
