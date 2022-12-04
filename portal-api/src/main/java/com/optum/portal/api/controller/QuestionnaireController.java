package com.optum.portal.api.controller;

import com.optum.portal.api.model.Questionnaire;
import com.optum.portal.api.model.Result;
import com.optum.portal.api.service.QuestionnaireService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@CrossOrigin(origins = "http://localhost:8081")
@RestController
@RequestMapping("/questionnaire")
public class QuestionnaireController {

    @Autowired
    private QuestionnaireService questionnaireService;

    @PostMapping("/create")
    public ResponseEntity<Result> create(@RequestBody Questionnaire questionnaire) {
        Result result = new Result();
        try {
            Questionnaire newQuestionnaire = new Questionnaire(questionnaire.getQuestion(), questionnaire.getAnswer());
            newQuestionnaire = questionnaireService.save(newQuestionnaire);
            result.setResult(Result.SUCCESS);
            result.setMessage("Questionnaire creation successful : " + newQuestionnaire.getQuestion());
            return new ResponseEntity<>(result, HttpStatus.OK);
        } catch (DataIntegrityViolationException e) {
            result.setResult(Result.FAILED);
            result.setMessage("Questionnaire creation failed : " + questionnaire.getQuestion()+ "." +
                    " Reason: The Questionnaire given already exists, please try another Questionnaire name");
            return new ResponseEntity<>(result, HttpStatus.INTERNAL_SERVER_ERROR);
        } catch (Exception e) {
            result.setResult(Result.FAILED);
            result.setMessage("Questionnaire creation failed: " + questionnaire.getQuestion()+ "." +
                    " Reason: "+e.getCause());
            return new ResponseEntity<>(result, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping
    public ResponseEntity<List<Questionnaire>> getQuestionnaire() {
        try {
            List<Questionnaire> questionnaires = questionnaireService.listQuestionnaires();
            if (questionnaires == null) {
                return new ResponseEntity<>(new ArrayList<>(), HttpStatus.CREATED);
            }
            return new ResponseEntity<>(questionnaires, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
