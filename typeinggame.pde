//Mathew's code
//Max fixed timer code and score reset 
int s=0;
int l=97; // l=random 
PFont font;
String time = "10";
int t;
int interval = 10;
boolean redo=true;
boolean stopgame=false;
int timeDif = 0;
void setup() {
  restart();
  size(900, 700);
}

void draw() {

  if (stopgame) {
  } else {
    background(s*2, s*2, s*2);
    char c=char(l); //Datatype for characters
    textSize(32);
    text("Type this letter: "+c, 350, 1500*.2);
    text("This is your score " +s, width/100, height/9);
    if (millis()< 30000&&key==c)//30 seconds
    {
      l=int(random(97, 122));
      s++;
    } //score gets added! s++

    t = interval-int((millis()/1000) - (timeDif/1000));
    time = nf(t, 3);
    if (t == 0) {
      fill(255);
      background(0);
      fill(#FC0505);
      text("GAME OVER", 350, 1500*.2);
      text("Score:  "+str(s)+" Letters", 310, 1670*.2);
      text("Press SHIFT to RESTART", 260, 1850*.2);
      stopgame=true;
    }
    fill(#8E8E8E);
    rect(5, 8, 350, 80);
    fill(255);
    text("This is your score " +s, width/100, height/9);
    text(time, width/9, height/17);
    text("Time:", width/100, height/17);
  }
}

void checkdead() {
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == SHIFT) {
      restart();
    }
  }
}

void restart() {
  stopgame=false;
  interval = 10;
  timeDif = millis();
  s = 0;
}
