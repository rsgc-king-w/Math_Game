import controlP5.*;

//Math Flash Cards

//Global Variable integers
int x1; //random variable 1
int x2; //random variable 2
int y1; // correct answer
int y2; // answer inputed
// counts the amount of keys pressed
int counter;
// the array that holds all the numbers pressed
char pressed[];
 

void setup() {
  //Make Canvas
  pressed = new char[10];
  size(600, 600);
   x1= (int)random(1, 12);
  x2= (int)random(1, 12);
}


void draw() {
background(0);
  textSize(80);
  // get the two random numbers
 

  //Tells the user if the answer is right
  if (x1*x2 ==y2) {
    x1= (int)random(1, 12);
    x2= (int)random(1, 12);
  }
// Shows the text on the screen
  text(" "+x2, 400, 300);
  text(""+x1, 120, 300);
  text("X", 260, 300);
}

// Click on the window to give it focus,
// and press the 'B' key.



void keyPressed()
{

  if (key == ENTER) {
    // holds data from keys pressed in the sting, puts all characters in new string
    String buff = new String(pressed);
    
    //trying to seperate the int (integer) from the string. Also makes 8 and 1 (81)
    y2 = Integer.parseInt(trim(buff));
    
    // the incriments of the array, resets the counter of keys pressed
    counter = 0;
    
    // resets all the keys pressed and deletes previous characters. The 10 limits the number of key strokes
    pressed = new char[10];
    
    // prints out keys pressed to console
    println(y2);
    
    // Tells the user if the answer is wrong
    if (x1*x2 != y2) {
      textSize(80);
      text("Wrong Answer", 300, 300);
      noLoop();
    }
    //Else= if statement incorect 
    // if statement says if key is "r"
  }else if(key == 'r')
  {
    loop();
   setup(); 
  }
  
  else
  {
    //stores each key pressed, and puts each number into the array.
    pressed[counter] = key; 
    counter++;
  }
}