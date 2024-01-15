package io.rizwan.quizapp.dao;

import io.rizwan.quizapp.entity.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Integer> {

    @Query(value = "SELECT * FROM question WHERE category ILIKE ?1 AND difficulty ILIKE ?2 ORDER BY RANDOM() LIMIT ?3",
            nativeQuery = true)
    List<Question> findByCategoryDifficultyLimitBy(String category, String difficulty, int quantity);
}
