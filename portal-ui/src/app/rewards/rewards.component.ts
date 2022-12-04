import { Component, OnInit } from '@angular/core';
import { RewardService } from '../_services/reward.service';
import { Reward } from "../model/reward.model";

@Component({
  selector: 'app-rewards',
  templateUrl: './rewards.component.html',
  styleUrls: ['./rewards.component.css']
})
export class RewardsComponent implements OnInit {

  public rewards: Reward[];

  constructor(private rewardService: RewardService) {
      this.rewards = [];
    }

    ngOnInit() {
          this.rewardService.getRewards().subscribe((data) => {
          console.log('response==>', data);
          this.rewards = data;
        });
         console.log('rewards ====>', this.rewards);
    }
}
