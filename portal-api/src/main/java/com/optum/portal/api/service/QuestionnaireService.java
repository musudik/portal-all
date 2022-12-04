package com.optum.portal.api.service;

import com.optum.portal.api.model.Questionnaire;
import com.optum.portal.api.repository.IQuestionnaireRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class QuestionnaireService {

    @Autowired
    private IQuestionnaireRepository questionnaireRepository;

    /**
     * save questionnaire
     * @param questionnaire
     * @return
     */
    public Questionnaire save(Questionnaire questionnaire) {
        if(questionnaire.getQuestionnaireId() != null) {
            questionnaire.setUpdatedDate(new Date());
            questionnaire.setUpdatedBy("System");
        } else {
            questionnaire.setCreatedDate(new Date());
            questionnaire.setCreatedBy("System");
        }
        return questionnaireRepository.save(questionnaire);
    }

    /**
     * list all Questionnaire
     * @return
     */
    public List<Questionnaire> listQuestionnaires() { return questionnaireRepository.findAll(); }

}
