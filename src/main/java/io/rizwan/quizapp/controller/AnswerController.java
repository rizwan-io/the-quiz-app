package io.rizwan.quizapp.controller;

import io.rizwan.quizapp.service.AnswerService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

@Controller
@RequestMapping("/quiz/score")
public class AnswerController {
    private final AnswerService service;

    @Autowired
    public AnswerController(AnswerService service) {
        this.service = service;
    }

    @PostMapping
    public String showScore(HttpServletRequest httpServletRequest, Model model) {
        Enumeration<String> parameterNames = httpServletRequest.getParameterNames();
        List<Integer> questionIds = new ArrayList<>();
        List<String> answers = new ArrayList<>();

        while (parameterNames.hasMoreElements()) {
            String question = parameterNames.nextElement();
            String answer = httpServletRequest.getParameter(question);
            int questionId = Integer.parseInt(question);

            questionIds.add(questionId);
            answers.add(answer);
        }

        int score = service.calculateScore(questionIds, answers);
        model.addAttribute("score", score);

        return "showScore";
    }
}
