  void setup()
  {
      size(300,300);
      noLoop();
      bob = new Die(10,10);
  }
  Die bob;
  void draw()
  {
    background(0);
    bob.show();
      //your code here
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
     //member variable declarations here
      int myX,myY,num;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
         roll();
      }
  }
      void roll()
      {
        num = (int)(Math.random()*6)+1;
          //your code here
      }
      void show()
      {
        fill(220, 0, 0);
        stroke(0,255,0);
        rect(myX,myY,35,35,10);
        if(num == 1) {
         ellipse(myX,myY,10,10);
        } else if (num == 2) {
          ellipse(myX - 2.5,myY,10,10);
          ellipse(myX + 2.5,myY,10,10);
      }   else if (num == 3) {
          ellipse(myX - 2.5,myY,10,10);
          ellipse(myX + 2.5,myY,10,10);
      }  else if (num == 4) {
          ellipse(myX - 2.5,myY,10,10);
          ellipse(myX + 2.5,myY,10,10);
      }  else if (num == 5) {
          ellipse(myX - 2.5,myY,10,10);
          ellipse(myX + 2.5,myY,10,10);
      }  else {
          ellipse(myX - 2.5,myY,10,10);
          ellipse(myX + 2.5,myY,10,10);
      }
  }
