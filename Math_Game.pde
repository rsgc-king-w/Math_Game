import controlP5.*;

//Math Flash Cards

//Global Variable integers
int x1; //random variable 1
int x2; //random variable 2
int y1; // correct answer
int y2; // answer inputed
int counter;
String input; 

void setup() {
  //Make Canvas
  size(600, 600);
  
}


void draw() {

  // get the two random numbers
  x1= (int)random(1, 12);
  x2= (int)random(1, 12);

  //Tells the user if the answer is right
  if (x1*x2 ==y2) {
    x1= (int)random(1, 12);
    x2= (int)random(1, 12);
  }

  // Tells the user if the answer is wrong
  if (x1*x2 != y2) {
    textSize(80);
    //text("Wrong Answer", 300, 300);
    noLoop();
  }
  text(" "+x2, 400,300);
  text(""+x1,120,300);
  text("X", 260, 300);
  
}

// Click on the window to give it focus,
// and press the 'B' key.



void keyPressed()
{
  if (key == ENTER) {
     y2 = Integer.parseInt(input);
     
     println(y2);
    }
    else if(counter == 0)
    {
     input = String(key); 
    }else
    {
     input += key; 
    }
}