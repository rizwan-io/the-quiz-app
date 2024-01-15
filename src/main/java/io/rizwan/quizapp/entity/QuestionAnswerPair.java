package io.rizwan.quizapp.entity;

public class QuestionAnswerPair {
    private int questionId;
    private String answer;

    public int getQuestionId() {
        return questionId;
    }

    public String getAnswer() {
        return answer;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }
}
