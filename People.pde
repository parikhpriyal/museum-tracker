class People
{
  //variables
  float x;
  float y;
  float speedX= 2.8;
  float speedY= 2.3;
  
  //constructor
  People(float x_, float y_){
    x=x_;
    y=y_;
  }
  
  //methods
  void display(){
    noStroke();
    ellipse(x,y,10,10);
  }
  
  void update(){
    x+=speedX;
    y+=speedY;
  }
  
  //move points around
  void move(){
    ////////////////////////////////////////////////////
    //Main box 
    //4 boundaries
    if(x>1000){
      speedX=speedX*-1;
    }
    if(y>600){
     speedY=speedY*-1;
    }
    if(x<30){
     speedX=speedX*-1;
    }
    if(y<30){
     speedY=speedY*-1;
    }    
    ////////////////////////////////////////////////////
    //1 - worked
     if((x>300 && x<312) && (y>12 && y<262)){
       speedX=speedX*-1;
     }
    //2 - worked
    if ((x>800 && x<1000) && (y>400 && y<410))
    {
      speedY=speedY*-1;
    }
    //3 - worked
    if((x>960 && x<970) && (y>410 && y<600))
    {
      speedX=speedX*-1;
    }
    //4
    if((x>960 && x<970) && (y>100 && y<300))
    {
      speedX=speedX*-1;
    }
    //5
    if((x>400 && x<800) && (y>50 && y<60))
    {
      speedY=speedY*-1;
    }
    //6 - worked
    if((x>500 && x<700) && (y>250 && y<260))
    {
      speedY=speedY*-1;
    }
    //7
    if((x>50 && x<60) && (y>250 && y<450))
    {
      speedX=speedX*-1;
    }
    //8
    if((x>100 && x<200) && (y>60 && y<70))
    {
      speedY=speedY*-1;
    }
    //9
    if((x>10 && x<200) && (y>560 && y<570))
    {
      speedY=speedY*-1;
    }
    //exit lift
    if((x>470 && x<630) && y>600)
    {
      speedX=0;
      speedY=0;
    }
  }
}