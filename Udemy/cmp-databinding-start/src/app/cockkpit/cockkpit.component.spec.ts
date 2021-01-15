import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CockkpitComponent } from './cockkpit.component';

describe('CockkpitComponent', () => {
  let component: CockkpitComponent;
  let fixture: ComponentFixture<CockkpitComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CockkpitComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CockkpitComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
