package io.rizwan.quizapp.entity;

import java.util.List;

public class QuizResponseBody {
    private List<QuestionAnswerPair> answers;

    public List<QuestionAnswerPair> getAnswers() {
        return answers;
    }

    public void setAnswers(List<QuestionAnswerPair> answers) {
        this.answers = answers;
    }
}
