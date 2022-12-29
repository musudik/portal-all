import { Component, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';

@Component({
  selector: 'app-activities',
  templateUrl: './activities.component.html',
  styleUrls: ['./activities.component.css']
})
export class ActivitiesComponent implements OnInit {

  public msg:string;
  techList = [
      {id: 101, lang: 'Java'},
      {id: 102, lang: 'Angular'},
      {id: 103, lang: 'Hibernate'}
    ];
  techForm = this.formBuilder.group({
    selectedTech: ''
  });

  constructor(private formBuilder: FormBuilder) {
    this.msg = '';
  }

  onFormSubmit() {
    console.log(this.techForm.get('selectedTech').value);
  }

  ngOnInit() {
  }
}
