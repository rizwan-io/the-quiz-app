package io.rizwan.quizapp.service;

import io.rizwan.quizapp.dao.QuestionRepository;
import io.rizwan.quizapp.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {
    private final QuestionRepository repository;

    @Autowired
    public QuestionService(QuestionRepository repository) {
        this.repository = repository;
    }

    public List<Question> getAllQuestionByCategoryDifficulty(String category, String difficulty, int limit) {
        return repository.findByCategoryDifficultyLimitBy(category, difficulty, limit);
    }
}
