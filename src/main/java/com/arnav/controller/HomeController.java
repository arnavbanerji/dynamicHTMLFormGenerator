package com.arnav.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Optional;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @PostMapping("/saveDetails")
    public String saveDetails(@RequestParam("textButton") Optional<String> textButton,
                              @RequestParam("radioButton") Optional<String> radioButton,
                              @RequestParam("checkbox") Optional<String> checkbox,
                              @RequestParam("fileInput") Optional<String> fileInput,
                              @RequestParam("submit") Optional<String> submit,
                              ModelMap modelMap) {

        modelMap.put("textButton", textButton.map(Object::toString).orElse(null));
        modelMap.put("radioButton", radioButton.map(Object::toString).orElse(null));
        modelMap.put("checkbox", checkbox.map(Object::toString).orElse(null));
        modelMap.put("fileInput", fileInput.map(Object::toString).orElse(null));
        modelMap.put("submit", submit.map(Object::toString).orElse(null));
        return "viewForm";
    }
}
