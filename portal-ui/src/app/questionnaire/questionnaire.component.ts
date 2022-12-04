import { Component, OnInit } from '@angular/core';
import { QuestionnaireService } from '../_services/questionnaire.service';
import { Questionnaire } from "../model/questionnaire.model";

@Component({
  selector: 'app-questionnaire',
  templateUrl: './questionnaire.component.html',
  styleUrls: ['./questionnaire.component.css']
})
export class QuestionnaireComponent implements OnInit {
  public questionnaire: Questionnaire[];
  public msg:string;

  constructor(private questionnaireService: QuestionnaireService) {
    this.questionnaire = [];
    this.msg = '';
  }

  ngOnInit() {
        // (3) Subscribe
        this.questionnaireService.getQuestionnaire().subscribe((data) => {
        console.log('response==>', data);
        // (4) Store
        this.questionnaire = data;
      });
       console.log('questionnaires ====>', this.questionnaire);
  }
}
