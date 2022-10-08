  void setup()
  {
      size(500,500);
      noLoop();
  }
      int total = 0;
      int num;
      Die bob; 
  void draw()
  {
    background(0);
      //your code here
     for(int y = 0; y <= 400; y = y+50){
     for (int x = 0; x <= 450; x = x+50){
     bob = new Die(x,y);
     bob.show();
     if (num == 1){
     total = total + 1;
     }
     if (num == 2){
     total = total + 2;
     }
     if (num == 3){
     total = total + 3;
     }
     if (num == 4){
     total = total + 4;
     }
     if (num == 5){
     total = total + 5;
     }
     if (num == 6){
     total = total + 6;
     }
     }
     }
     fill(255,255,255);
     text("Total: " + total, 225, 475, 100, 100);
     
     }
  void mousePressed()
  {
      redraw();
      total = 0;
  }
  class Die //models one single dice cube
  {
     //member variable declarations here
      int myX,myY;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
      }
      void roll()
      {
          //your code here
      }
      void show()
      {
        num = (int)(Math.random()*6)+1;
        fill(220, 0, 0);
        stroke(0,255,0);
        rect(myX,myY,50,50,10);
        if (num == 1){
        fill(0);
        ellipse(myX+25,myY+25,10,10);
        }
        if (num == 2){
        fill(0);
        ellipse(myX+18,myY+25,10,10);
        ellipse(myX+32,myY+25,10,10);
        }
        if (num == 3){
        fill(0);
        ellipse(myX+15,myY+13,10,10);
        ellipse(myX+25,myY+23,10,10);
        ellipse(myX+35,myY+33,10,10);
        }
        if (num == 4){
        fill(0);
        ellipse(myX+18,myY+18,10,10);
        ellipse(myX+18,myY+32,10,10);
        ellipse(myX+32,myY+18,10,10);
        ellipse(myX+32,myY+32,10,10);
        }
        if (num == 5){
        fill(0);
        ellipse(myX+15,myY+15,10,10);
        ellipse(myX+15,myY+35,10,10);
        ellipse(myX+35,myY+15,10,10);
        ellipse(myX+35,myY+35,10,10);
        ellipse(myX+25,myY+25,10,10);
        }
        if (num == 6){
        fill(0);
        ellipse(myX+18,myY+15,10,10);
        ellipse(myX+32,myY+15,10,10);
        ellipse(myX+18,myY+25,10,10);
        ellipse(myX+32,myY+25,10,10);
        ellipse(myX+18,myY+35,10,10);
        ellipse(myX+32,myY+35,10,10);
        }
     }
     }
