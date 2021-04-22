import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-homepage',
  templateUrl: './homepage.component.html',
  styleUrls: ['./homepage.component.css']
})
export class HomepageComponent implements OnInit {

  images = [
    {path:"assets/images/pizza1.jpg"},
    {path:"assets/images/pizza2.jpg"},
    {path:"assets/images/pizza3.jpg"},
    {path:"assets/images/pizza4.jpg"},
    {path:"assets/images/pizza5.jpg"},
    {path:"assets/images/pizza6.jpg"},
    {path:"assets/images/pizza7.jpg"},
  ]

  constructor() { }

  ngOnInit(): void {
  }

}
