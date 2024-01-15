package io.rizwan.quizapp.service;

import io.rizwan.quizapp.dao.AnswerRepository;
import io.rizwan.quizapp.entity.Answer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnswerService {
    private AnswerRepository repository;

    @Autowired
    public AnswerService(AnswerRepository repository) {
        this.repository = repository;
    }

    public int calculateScore(List<Integer> questionIds, List<String> selectedAnswers) {
        List<Answer> actualAnswers = repository.findByQuestionIdIn(questionIds);

        int score = 0;
        for (int i = 0; i < actualAnswers.size(); i++) {
            if(selectedAnswers.get(i).equals(actualAnswers.get(i).getAnswer()))
                score++;
        }
        return score;

    }
}
