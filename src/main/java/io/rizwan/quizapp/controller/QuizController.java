package io.rizwan.quizapp.controller;

import io.rizwan.quizapp.entity.Question;
import io.rizwan.quizapp.entity.QuizRequestBody;
import io.rizwan.quizapp.entity.QuizResponseBody;
import io.rizwan.quizapp.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/")
public class QuizController {
    private final QuestionService service;

    @Autowired
    public QuizController(QuestionService service) {
        this.service = service;
    }

    @GetMapping
    public String showForm(Model model) {
        model.addAttribute("quizRequestBody", new QuizRequestBody());
        return "index";
    }

    @PostMapping("/quiz")
    public String showForm(@ModelAttribute("quizRequestBody") QuizRequestBody quizRequestBody, Model model) {
        List<Question> questions = service.getAllQuestionByCategoryDifficulty(
                quizRequestBody.getCategory(), quizRequestBody.getDifficulty(), quizRequestBody.getQuantity());
        System.out.println(questions);

        model.addAttribute("questions", questions);
        model.addAttribute("quizResponseBody", new QuizResponseBody());

        return "index";
    }
}
