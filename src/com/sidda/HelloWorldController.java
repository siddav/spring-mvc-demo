package com.sidda;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

    // need a controller method to show the initial form
    @RequestMapping("/showForm")
    public String showForm() {
        return "helloworld-form";
    }

    //method to process form
    @RequestMapping("/processForm")
    public String processForm() {
        return "helloworld";
    }

    @RequestMapping("/processFormVersionTwo")
    public String letsShoutDude(HttpServletRequest request, Model model) {
        String studentName = request.getParameter("studentName");
        studentName = studentName.toUpperCase();
        model.addAttribute("message", "YO! " + studentName);
        return "helloworld";
    }

    @RequestMapping("/processFormVersionThree")
    public String processFormVersionThree(@RequestParam("studentName") String studentName, Model model) {
        studentName = studentName.toUpperCase();
        model.addAttribute("message", "Hey my friend from v3! " + studentName);
        return "helloworld";
    }
}
