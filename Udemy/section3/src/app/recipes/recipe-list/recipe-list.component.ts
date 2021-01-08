import { Component, OnInit } from '@angular/core';
import { Recipe } from '../recipe.model';

@Component({
  selector: 'app-recipe-list',
  templateUrl: './recipe-list.component.html',
  styleUrls: ['./recipe-list.component.css']
})
export class RecipeListComponent implements OnInit {
  recipes: Recipe[] = [
    new Recipe('Test Recipe 1', 'Zucchini', 'https://www.inspiredtaste.net/wp-content/uploads/2018/12/Sauteed-Zucchini-Recipe-1-1200.jpg'),
   new Recipe('Test Recipe 2', 'Cake Balls', 'https://www.dinneratthezoo.com/wp-content/uploads/2018/08/cake-balls-5.jpg')
  ];

  constructor() { }

  ngOnInit(): void {
  }

}
