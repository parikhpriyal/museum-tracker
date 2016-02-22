//global variables
//arrays
PVector[] points = new PVector [9];
//defining layout shape
PShape layout; 
People p1;
People p2;
People p3;

//time variables
int se;
int mi;
int ho;
PFont myFont;
  
void setup()
{
  size(1290, 640);
  background(0);
  smooth();
  myFont=loadFont("Avenir-Book-48.vlw");
  floorLayout();
  p1 = new People(350,600);
  p2 = new People(440,590);
  p3 = new People(750,600);
  fill(0,170,160);
  rect(1070,284,20,20);
  textFont(myFont,20);
  fill(255);
  text("34ba12987ffa",1100,300);
  fill(255,120,90);
  rect(1070,325,20,20);
  textFont(myFont,20);
  fill(255);
  text("436752ffa45a",1100,344);
  fill(70,32,102);
  rect(1070,375,20,20);
  textFont(myFont,20);
  fill(255);
  text("436752ffa45a",1100,390);
 }

void draw()
{
  fill(0);
  stroke(255);
  strokeWeight(1);
  rect(1050,130,200,40);
  timeShow();
  fill(0,170,160,50);
  p1.update();
  p1.display();
  p1.move();
  fill(255,120,90,50);
  p2.update();
  p2.display();
  p2.move();
  fill(70,32,102,50);
  p3.update();
  p3.display();
  p3.move();
}

//void mousePressed()
//{
  
//}

void timeShow()
{
  textFont(myFont,30);
  fill(255);
  se=second();
  mi=minute();
  ho=hour();
  String s = String.valueOf(se);
  text(": "+s, 1190,160);
  s = String.valueOf(mi);
  text(": "+s, 1120,160);
  s = String.valueOf(ho);
  text(s, 1070,160);
  text("Time of Record", 1048,110);
}

//musuem layout setup
void floorLayout()
{
  //museum layout
  layout = createShape();
  layout.beginShape();
  layout.fill(250,250,250);
  layout.vertex(10, 10);
  layout.vertex(10, 600);
  layout.vertex(300, 600);
  layout.vertex(700,600);
  layout.vertex(1000,600);
  layout.vertex(1000, 10);
  layout.endShape();
  shape(layout,10,10);
  //display signs
  textFont(myFont,20);
  fill(0);
  //1
  text("D",320,80);
  text("i",323,100);
  text("s",320,120);
  text("p",320,140);
  text("l",323,170);
  text("a",320,190);
  text("y",320,210);
  //2
  text("Display",850,430);
  //3
  text("D",980,450);
  text("i",983,470);
  text("s",980,490);
  text("p",980,510);
  text("l",983,540);
  text("a",980,560);
  text("y",980,580);
  //4
  text("D",980,140);
  text("i",983,160);
  text("s",980,180);
  text("p",980,200);
  text("l",983,230);
  text("a",980,250);
  text("y",980,270);
  //5
  text("Display",550,40);
  //6
  text("Display",570,240);
  //7
  text("D",40,290);
  text("i",43,310);
  text("s",40,330);
  text("p",40,350);
  text("l",43,380);
  text("a",40,400);
  text("y",40,420);
  //8
  text("Display",120,50);
  //9
  text("Display",120,590);
  //exit
  text("Lift",540,600);
  text("Stairs 1",390,600);
  text("Stairs 2",660,600);
  //display borders
  fill(0);
  noStroke();
  //1
  rect(300,12,10,250);
  //2
  rect(800,400,210,10);
  //3
  rect(960,410,10,200);
  //4
  rect(960,100,10,200);
  //5
  rect(400,50,400,10);
  //6
  rect(500,250,200,10);
  //7
  rect(60,250,10,200);
  //8
  rect(100,60,100,10);
  //9
  rect(100,560,100,10);
  //exit
  fill(200,200,200);
  rect(350,600,400,10);
  fill(100,100,100);
  rect(480,600,150,10);
}