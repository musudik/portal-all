import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Questionnaire, QuestionnaireAdapter } from "../model/questionnaire.model";
import { map } from "rxjs/operators";

const API_URL = 'http://localhost:8888/questionnaire/';

const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};

@Injectable({
  providedIn: 'root'
})
export class QuestionnaireService {
  constructor(private http: HttpClient, private adapter: QuestionnaireAdapter) { }

   //get all questionnaire
   getQuestionnaire(): Observable<any> {
     return this.http.get(API_URL, { });
   }
}
