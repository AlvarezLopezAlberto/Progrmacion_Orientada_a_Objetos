int screen      = 0;
int buttonSizeX = 0;
int buttonSizeY = 0;
int textSizeB   = 0;
int moveX       = 0;
int moveY       = 0;
int check       = 0;
int i           = 0;
int hp          = 0;
int atk         = 0;
int hp2         = 0;
int atk2        = 0;
int P1          = 0;
int P2          = 0;
int turn        = 0;
float bonus     = 0;

character Summar;
character Nois;
character Rang;
character Ezyr;
character Skull;
character Neva;

void setup(){
  size(1280,720);
  Summar = new character(20,3,"Summar",1);
  Nois   = new character(18,4,"Nois",2);
  Rang   = new character(25,2,"Rang",3);
  Ezyr   = new character(15,6,"Ezyr",4);
  Skull  = new character(15,5,"Skull",5);
  Neva   = new character(10,6,"Neva",6);
}

void draw(){
  if(screen==0){
    startScreen();
  }
  if(screen==1){
    instructionsScreen();
  }
  if(screen==2){
    characterScreen();
    animationButton();
      pushMatrix();
      scale(0.2);
      translate(200,2500);
      Summar.display();
      popMatrix();
      
      pushMatrix();
      scale(0.2);
      translate(5850,2500);
      Summar.display();
      popMatrix();
      
      pushMatrix();
      scale(0.2);
      translate(400,2400);
      Nois.display();
      popMatrix();
      
      pushMatrix();
      scale(0.2);
      translate(5450,2400);
      Nois.display();
      popMatrix();
      
      pushMatrix();
      scale(0.2);
      translate(800,2400);
      Rang.display();
      popMatrix();
      
      pushMatrix();
      scale(0.2);
      translate(5250,2400);
      Rang.display();
      popMatrix();
      
      pushMatrix();
      scale(0.2);
      translate(1050,2400);
      Ezyr.display();
      popMatrix();
      
      pushMatrix();
      scale(0.2);
      translate(4900,2400);
      Ezyr.display();
      popMatrix();
      
      pushMatrix();
      scale(0.2);
      translate(1380,2400);
      Skull.display();
      popMatrix();
      
      pushMatrix();
      scale(0.2);
      translate(4650,2400);
      Skull.display();
      popMatrix();
      
      pushMatrix();
      scale(0.2);
      translate(1680,2400);
      Neva.display();
      popMatrix();
      
      pushMatrix();
      scale(0.2);
      translate(4380,2400);
      Neva.display();
      popMatrix();
  }
  
  if(screen==3){
    figthScreen();
    fight();
  }
  if(screen==4){
    finalScreen();
  }
}

void startScreen(){
  background(0);
  BGS();
  fill(255);
  textSize(60);
  textAlign(RIGHT);
  text("MEDIEVAL",610,150);
  textSize(16);
  textAlign(CENTER);
  text("X_________________________________________________",410,170);
  textSize(16);
  textAlign(CENTER);
  text("_________________________________________________X",810,120);
  textSize(60);
  textAlign(LEFT);
  text("CHRONICLES",610,175);
  startButton();
}

void startButton(){
  fill(#E5C20E);
  rect(560,500,155+(buttonSizeX),55+(buttonSizeY),3,6,12,18);
  fill(0);
  textSize(18+textSizeB);
  text("START",615-(moveX),530+(moveY));
  
  if ((mouseX >= 560 & mouseX <= 715) & (mouseY >= 500 & mouseY <= 555)) {
    buttonSizeX= 10;
    buttonSizeY= 15;
    textSizeB  = 10;
    moveX      = 10;
    moveY      = 15;
  }
    else {
      buttonSizeX= 0;
      buttonSizeY= 0;
      textSizeB  = 0;
      moveX      = 0;
      moveY      = 0;
    }
    
    
  if ((mouseX >= 560 & mouseX <= 715) & (mouseY >= 500 & mouseY <= 555)){
    check=1;
    if (check==1){
      if(mouseButton==LEFT){
        screen=1;
      }
    }
  }
}

void instructionsScreen(){
  fill(255,10);
  rect(100,150,1080,340);
  textSize(18);
  fill(0,100);
  textSize(30);
  text("Rules",610,200);
  textSize(13);
  text("Two players.",200,250);
  text("Each character have their own abilities, press “(click)” to see them.",200,270);
  text("Once you find a character you´d like to play with, press “(key)” to  choose him/her",200,290);
  text("Each player has to choose one character",200,310);
  text("Once on  screen fight  player 1 will start the battle, he has to choose between attack or rest.",200,330);
  text("A rest means that attack and defense levels will increase.",200,350);
  text("Player 2 will start when Player 1 has already chosen an option.",200,370);
  text("The Batlle ends when a player´s HP is reduced to 0.",200,390);
  text("The winner is the player who kept his character alive.",200,410);
  textSize(15);
  text("Press  ENTER  to continue",900,480);
  if(key==ENTER){
    screen=2;
  }
}

void characterScreen(){
  
  backgroundP();
  fill(0,150);
  rect(0,0,1280,720);
  fill(10,150,200);
  quad(0,720,1280,720,1200,670,80,670);
  textSize(80);
  fill(255);
  text("SELECT YOUR CHARACTER",150,650);
  fill(#FFDA05,150);
  rect(10,335,200,30);
  fill(0);
  rect(10,50,400,60);
  
  fill(#FFDA05,150);
  rect(1068,335,200,30);
  fill(0);
  rect(880,50,400,60);
  
  noStroke();
  
  fill(22,22,200);
  rect(50,500,50,50,7);
  
  //fill(44,91,164);
  rect(110,500,50,50,7);
  
  //fill(242,232,33);
  rect(170,500,50,50,7);
  
  //fill(0,152,56);
  rect(230,500,50,50,7);
  
  //fill(0);
  rect(290,500,50,50,7);
  
  //fill(255);
  rect(350,500,50,50,7);
  
  fill(204,22,26);
  rect(1180,500,50,50,7);
  
  //fill(44,91,164);
  rect(1120,500,50,50,7);
  
  //fill(242,232,33);
  rect(1060,500,50,50,7);
  
  //fill(0,152,56);
  rect(1000,500,50,50,7);
  
  //fill(0);
  rect(940,500,50,50,7);
  
  //fill(255);
  rect(880,500,50,50,7);
  
}

void animationButton(){
  selectFuntion();
  if ((mouseX >= 50 & mouseX <= 100) & (mouseY >= 500 & mouseY <= 550)){
    
    noFill();
    strokeWeight(3);
    stroke(#FAEE0A); 
    rect(50,500,50,50,7);
    pushMatrix();
    scale(1.3);
    translate(150,80);
    Summar.display();
    popMatrix();
    textSize(15);
    fill(255);
    text("HP:20",50,200);
    text("ATTK:3",50,230);
    
    fill(0);
    text("Press      To Select",50,360);
    textSize(25);
    text("Q",93,360);
    textSize(60);
    
    fill(255);
    text("SUMMAR",50,100);
  }
  if ((mouseX >= 100 & mouseX <= 170) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#ED1111); 
    rect(110,500,50,50,7);
    pushMatrix();
    scale(1.1);
    translate(120,60);
    Nois.display();
    popMatrix();
    textSize(15);
    fill(255);
    text("HP:18",50,200);
    text("ATTK:4",50,230);
    
    fill(0);
    text("Press      To Select",50,360);
    textSize(25);
    text("W",93,360);
    textSize(60);
    
    fill(255);
    text("NOIS",50,100);
  }
  if ((mouseX >= 170 & mouseX <= 230) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#ED1111); 
    rect(170,500,50,50);
    pushMatrix();
    scale(1.2);
    translate(180,60);
    Rang.display();
    popMatrix();
    textSize(15);
    fill(255);
    text("HP:25",50,200);
    text("ATTK:2",50,230);
    
    fill(0);
    text("Press      To Select",50,360);
    textSize(25);
    text("E",93,360);
    textSize(60);
    
    fill(255);
    text("RANG",50,100);
  }
  if ((mouseX >= 230 & mouseX <= 290) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#ED1111); 
    rect(230,500,50,50);
    pushMatrix();
    scale(1.2);
    translate(180,60);
    Ezyr.display();
    popMatrix();
    textSize(15);
    fill(255);
    text("HP:15",50,200);
    text("ATTK:6",50,230);
    
    fill(0);
    text("Press      To Select",50,360);
    textSize(25);
    text("R",93,360);
    textSize(60);
    
    fill(255);
    text("EZYR",50,100);
  }
  if ((mouseX >= 290 & mouseX <= 350) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#ED1111); 
    rect(290,500,50,50);
    pushMatrix();
    scale(1.2);
    translate(180,60);
    Skull.display();
    popMatrix();
    textSize(15);
    fill(255);
    text("HP:15",50,200);
    text("ATTK:5",50,230);
    
    fill(0);
    text("Press      To Select",50,360);
    textSize(25);
    text("T",93,360);
    textSize(60);
    
    fill(255);
    text("SKULL",50,100);
  }
  if ((mouseX >= 350 & mouseX <= 400) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#ED1111); 
    rect(350,500,50,50);
    pushMatrix();
    scale(1.2);
    translate(180,40);
    Neva.display();
    popMatrix();
    textSize(15);
    fill(255);
    text("HP:10",50,200);
    text("ATTK:6",50,230);
    
    fill(0);
    text("Press      To Select",50,360);
    textSize(25);
    text("Y",93,360);
    textSize(60);
    
    fill(255);
    text("NEVA",50,100);
  }
  
  
  
  
  
  if ((mouseX >= 1180 & mouseX <= 1230) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#364BFF); 
    rect(1180,500,50,50,7);
    pushMatrix();
    scale(1.3,1.3);
    translate(500,80);
    Summar.display();
    popMatrix();
    textSize(15);
    fill(255);
    text("HP:20",1160,200);
    text("ATTK:3",1160,230);
    fill(0);
    text("Press      To Select",1100,360);
    textSize(25);
    text("A",1144,360);
    textSize(60);
    
    fill(255);
    text("SUMMAR",980,100);
  }
  if ((mouseX >= 1120 & mouseX <= 1170) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#FAEE0A); 
    rect(1120,500,50,50,7);
    pushMatrix();
    scale(1.1);
    translate(550,60);
    Nois.display();
    popMatrix();
    textSize(15);
    fill(255);
    text("HP:18",1160,200);
    text("ATTK:4",1160,230);
    fill(0);
    text("Press      To Select",1100,360);
    textSize(25);
    text("S",1144,360);
    textSize(60);
    
    fill(255);
    text("NOIS",980,100);
  }
  if ((mouseX >= 1060 & mouseX <= 1110) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#364BFF); 
    rect(1060,500,50,50,7);
    pushMatrix();
    scale(1.1);
    translate(550,60);
    Rang.display();
    popMatrix();
    textSize(15);
    fill(255);
    text("HP:25",1160,200);
    text("ATTK:2",1160,230);
    fill(0);
    text("Press      To Select",1100,360);
    textSize(25);
    text("D",1144,360);
    textSize(60);
    
    fill(255);
    text("RANG",980,100);
  }
  if ((mouseX >= 1000 & mouseX <= 1050) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#364BFF); 
    rect(1000,500,50,50,7);
    pushMatrix();
    scale(1.1);
    translate(550,60);
    Ezyr.display();
    popMatrix();
    textSize(15);
    fill(255);
    text("HP:11",1160,200);
    text("ATTK:18",1160,230);
    fill(0);
    text("Press      To Select",1100,360);
    textSize(25);
    text("F",1144,360);
    textSize(60);
    
    fill(255);
    text("EZYR",980,100);
  }
  if ((mouseX >= 940 & mouseX <= 990) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#364BFF); 
    rect(940,500,50,50,7);
    pushMatrix();
    scale(1.1);
    translate(550,60);
    Skull.display();
    popMatrix();
    textSize(15);
    fill(255);
    text("HP:15",1160,200);
    text("ATTK:5",1160,230);
    fill(0);
    text("Press      To Select",1100,360);
    textSize(25);
    text("G",1144,360);
    textSize(60);
    
    fill(255);
    text("SKULL",980,100);
  }
  if ((mouseX >= 880 & mouseX <= 930) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#364BFF);
    rect(880,500,50,50,7);
    pushMatrix();
    scale(1.1);
    translate(580,50);
    Neva.display();
    popMatrix();
    textSize(15);
    fill(255);
    text("HP:10",1160,200);
    text("ATTK:6",1160,230);
    fill(0);
    text("Press      To Select",1100,360);
    textSize(25);
    text("H",1144,360);
    textSize(60);
    
    fill(255);
    text("NEVA",980,100);
  }
    
  }


void selectFuntion(){
  if(key=='q'){
    pushMatrix();
    scale(1.3);
    translate(150,80);
    Summar.display();
    popMatrix();
    fill(#E00505);
    rect(400,20,100,30);
    fill(255);
    textSize(30);
    text("Ready",410,45);
    hp=Summar.hp;
    atk=Summar.attk;
    P1=1;
  }
  if(key=='w'){
    pushMatrix();
    scale(1.1);
    translate(120,60);
    Nois.display();
    popMatrix();
    fill(#E00505);
    rect(400,20,100,30);
    fill(255);
    textSize(30);
    text("Ready",410,45);
    hp=Nois.hp;
    atk=Nois.attk;
    P1=2;
  }
  if(key=='e'){
    pushMatrix();
    scale(1.2);
    translate(180,60);
    Rang.display();
    popMatrix();
    fill(#E00505);
    rect(400,20,100,30);
    fill(255);
    textSize(30);
    text("Ready",410,45);
    hp=Rang.hp;
    atk=Rang.attk;
    P1=3;
  }
  if(key=='r'){
    pushMatrix();
    scale(1.2);
    translate(180,60);
    Ezyr.display();
    popMatrix();
    fill(#E00505);
    rect(400,20,100,30);
    fill(255);
    textSize(30);
    text("Ready",410,45);
    hp=Ezyr.hp;
    atk=Ezyr.attk;
    P1=4;
  }
  if(key=='t'){
    pushMatrix();
    scale(1.2);
    translate(180,60);
    Skull.display();
    popMatrix();
    fill(#E00505);
    rect(400,20,100,30);
    fill(255);
    textSize(30);
    text("Ready",410,45);
    hp=Skull.hp;
    atk=Skull.attk;
    P1=5;
  }
  if(key=='y'){
    pushMatrix();
    scale(1.2);
    translate(180,60);
    Neva.display();
    popMatrix();
    fill(#E00505);
    rect(400,20,100,30);
    fill(255);
    textSize(30);
    text("Ready",410,45);
    hp=Neva.hp;
    atk=Neva.attk;
    P1=6;
  }
 
  
  
  
  if(key=='a'){
    pushMatrix();
    scale(1.3);
    translate(500,80);
    Summar.display();
    popMatrix();
    rect(790,20,100,30);
    fill(255);
    textSize(30);
    text("Ready",800,45);
    hp2=Summar.hp;
    atk2=Summar.attk;
    P2=1;
  }
  if(key=='s'){
    pushMatrix();
    scale(1.1);
    translate(550,60);
    Nois.display();
    popMatrix();
    rect(790,20,100,30);
    fill(255);
    textSize(30);
    text("Ready",800,45);
    hp2=Nois.hp;
    atk2=Nois.attk;
    P2=2;
  }
  if(key=='d'){
    pushMatrix();
    scale(1.1);
    translate(550,60);
    Rang.display();
    popMatrix();
    rect(790,20,100,30);
    fill(255);
    textSize(30);
    text("Ready",800,45);
    hp2=Rang.hp;
    atk2=Rang.attk;
    P2=3;
  }
  if(key=='f'){
    pushMatrix();
    scale(1.1);
    translate(550,60);
    Ezyr.display();
    popMatrix();
    rect(790,20,100,30);
    fill(255);
    textSize(30);
    text("Ready",800,45);
    hp2=Ezyr.hp;
    atk2=Ezyr.attk;
    P2=4;
  }
  if(key=='g'){
    pushMatrix();
    scale(1.1);
    translate(550,60);
    Skull.display();
    popMatrix();
    rect(790,20,100,30);
    fill(255);
    textSize(30);
    text("Ready",800,45);
    hp2=Skull.hp;
    atk2=Skull.attk;
    P2=5;
    
  }
  if(key=='h'){
    pushMatrix();
    scale(1.1);
    translate(550,60);
    Neva.display();
    popMatrix();
    rect(790,20,100,30);
    fill(255);
    textSize(30);
    text("Ready",800,45);
    hp2=Neva.hp;
    atk2=Neva.attk;
    P2=6;
  }
    
    
  if(key==BACKSPACE){
    characterScreen();
  }
  
  if((hp!=0)&&(hp2!=0)){
    screen=3;
  }
  
}

void figthScreen(){
  backgroundP();
  
  if(P1==1){
    fill(0,100);
    ellipse(200,570,200,20);
    pushMatrix();
    translate(400,300);
    scale(-1,1);
    Summar.display();
    popMatrix();
   

  }
  
  if(P1==2){
    fill(0,100);
    ellipse(450,570,200,20);
    pushMatrix();
    translate(200,200);
    scale(1,1);
    Nois.display();
    popMatrix();
    
  }
  if(P1==3){
    fill(0,100);
    ellipse(380,560,200,20);
    pushMatrix();
    translate(200,200);
    scale(1,1);
    Rang.display();
    popMatrix();
  }
  if(P1==4){
    fill(0,100);
    ellipse(400,570,200,20);
    pushMatrix();
    translate(200,200);
    scale(1,1);
    Ezyr.display();
    popMatrix();
  }
  if(P1==5){
    fill(0,100);
    ellipse(400,570,200,20);
    pushMatrix();
    translate(600,200);
    scale(-1,1);
    Skull.display();
    popMatrix();
  }
  if(P1==6){
     fill(0,100);
    ellipse(400,570,200,20);
    pushMatrix();
    translate(200,190);
    scale(1,1);
    Neva.display();
    popMatrix();
  }
  
  
  if(P2==1){
    
    fill(0,100);
    ellipse(1000,570,200,20);
    pushMatrix();
    translate(800,300);
    Summar.display();
    popMatrix();
  }
  if(P2==2){
    fill(0,100);
    ellipse(1050,570,200,20);
    pushMatrix();
    translate(800,200);
    Nois.display();
    popMatrix();
  }
  if(P2==3){
    fill(0,100);
    ellipse(1000,560,200,20);
    pushMatrix();
    scale(-1,1);
    translate(-1200,200);
    Rang.display();
    popMatrix();
  }
  if(P2==4){
    fill(0,100);
    ellipse(1000,570,200,20);
    pushMatrix();
    translate(800,200);
    Ezyr.display();
    popMatrix();
  }
  if(P2==5){
    fill(0,100);
    ellipse(1000,570,200,20);
    pushMatrix();
    translate(800,200);
    Skull.display();
    popMatrix();
  }
  if(P2==6){
    fill(0,100);
    ellipse(1000,570,200,20);
    pushMatrix();
    translate(800,200);
    Neva.display();
    popMatrix();
  }
  
}

void fight(){
  fill(#CEB387);
  rect(25,80,300,80);
  fill(0,255,0);
  rect(50,100,hp*10,10);
  fill(0);
  textSize(12);
  text("HP",50,100);
if(turn==0){
   textSize(22);
   text("Z",110,130);
   textSize(15);
   text("Press     to attack",70,130);
   
    
    if(key=='z'){
     
      hp2=hp2-atk;
      if(hp2<=0){
        screen=4;
      }else{
        turn=1;
        println(hp);
      }
    }
  }

  
  
  
  fill(#CEB387);
  rect(1225,80,-300,80);
  fill(0,255,0);
  rect(1200,100,hp2*-10,10);
  fill(0);
  textSize(12);
  text("HP",1180,100);
  
  
  if(turn==1){
   textSize(22);
   text("C",1020,130);
   textSize(15);
   text("Press     to attack",980,130);
    if(key=='c'){
      hp=hp-atk2;
      if(hp<=0){
        screen=4;
      }else{
        turn=0;
        println(hp);
      }
    }
  }
}
  

void finalScreen(){
  background(0);
  BGS();
  if(hp<=0){
    textSize(30);
    fill(255);
    text("Player 2 Won!!!",550,500);
    textSize(15);
  }
  if(hp2<=0){
    textSize(30);
    fill(255);
    
    text("Player 1 Won!!!",550,500);
    textSize(15);
   
  }
  
}























































class character{
  int hp;
  int attk;
  String name;
  int  dis;
  
  character(int hp_, int attk_, String name_, int dis_){
    hp=hp_;
    attk=attk_;
    name=name_;
    dis=dis_;
  }
  
  void display(){
    if(dis==1){
      
      
      noStroke();
      fill(249,180,145);
      beginShape();
      vertex(30,126);
      vertex(73,138);
      vertex(109,179);
      vertex(112,182);
      vertex(118,218);
      vertex(111,274);
      vertex(140,220);
      vertex(158,222);
      vertex(169,236);
      vertex(183,280);
      vertex(183,228);
      vertex(204,222);
      vertex(210,230);
      vertex(222,233);
      vertex(220,270);
      vertex(237,224);
      vertex(278,241);
      vertex(292,270);
      vertex(279,229);
      vertex(272,222);
      vertex(282,192);
      vertex(259,159);
      vertex(245,160);
      vertex(229,155);
      vertex(220,148);
      vertex(202,148);
      vertex(191,159);
      vertex(189,163);
      vertex(177,162);
      vertex(170,160);
      vertex(162,137);
      vertex(161,129);
      vertex(148,107);
      vertex(123,93);
      vertex(108,89);
      vertex(105,70);
      vertex(95,73);
      vertex(89,81);
      vertex(80,85);
      vertex(60,87);
      vertex(57,90);
      vertex(48,93);
      vertex(58,108);
      vertex(46,122);
      vertex(30,126);
      endShape();
      
      
      fill(238,211,202);
      stroke(238,211,202);
      beginShape();
      vertex(58,108);
      vertex(46,122);
      vertex(30,126);
      vertex(73,138);
      vertex(109,179);
      vertex(118,191);
      vertex(118,201);
      vertex(140,220);
      vertex(158,222);
      vertex(137,209);
      vertex(150,150);
      vertex(158,132);
      vertex(131,108);
      vertex(103,102);
      vertex(80,105);
      vertex(58,108);
      vertex(46,122);
      endShape();
      beginShape();
      vertex(183,228);
      vertex(227,212);
      vertex(225,207);
      vertex(240,172);
      vertex(219,180);
      vertex(200,177);
      vertex(200,196);
      vertex(185,213);
      endShape();
      
      fill(88,30,22);
      stroke(88,30,22);
      beginShape();
      vertex(46,122);
      vertex(58,108);
      vertex(48,93);
      vertex(32,93);
      vertex(32,109);
      vertex(22,121);
      vertex(25,124);
      vertex(46,122);
      endShape();
      
      fill(72,11,13);
      stroke(72,11,13);
      beginShape();
      vertex(32,93);
      vertex(32,109);
      vertex(22,121);
      vertex(12,100);
      vertex(22,93);
      endShape();
      
      fill(83,168,185);
      stroke(83,168,185);
      beginShape();
      vertex(48,93);
      vertex(57,90);
      vertex(60,87);
      vertex(80,85);
      vertex(89,81);
      vertex(81,77);
      vertex(60,79);
      vertex(48,83);
      vertex(45,90);
      vertex(40,90);
      vertex(31,91);
      vertex(33,93);
      endShape();
      
      beginShape();
      vertex(108,89);
      vertex(123,93);
      vertex(148,107);
      vertex(161,129);
      vertex(184,121);
      vertex(189,106);
      vertex(180,100);
      vertex(165,100);
      vertex(168,93);
      vertex(108,84);
      endShape();
      
      beginShape();
      vertex(259,159);
      vertex(282,192);
      vertex(268,160);
      vertex(241,139);
      vertex(230,124);
      vertex(227,86);
      vertex(214,73);
      vertex(207,70);
      vertex(212,75);
      vertex(221,88);
      vertex(215,121);
      vertex(220,140);
      endShape();
      
      
      fill(77,92,117);
      stroke(77,92,117);
      beginShape();
      vertex(259,159);
      vertex(220,140);
      vertex(215,121);
      vertex(221,88);
      vertex(212,75);
      vertex(207,70);
      vertex(205,68);
      vertex(217,115);
      vertex(211,128);
      vertex(203,132);
      vertex(182,160);
      vertex(184,121);
      vertex(161,129);
      vertex(162,137);
      vertex(170,160);
      vertex(177,162);
      vertex(189,163);
      vertex(191,159);
      vertex(202,148);
      vertex(220,148);
      vertex(229,155);
      vertex(245,160);
      endShape();
      
      fill(15,24,34);
      stroke(15,24,34);
      beginShape();
      vertex(207,70);
      vertex(205,68);
      vertex(217,115);
      vertex(211,128);
      vertex(203,132);
      vertex(182,160);
      vertex(184,121);
      vertex(189,106);
      vertex(180,100);
      vertex(165,100);
      vertex(168,93);
      vertex(150,91);
      vertex(169,71);
      vertex(180,22);
      vertex(215,5);
      vertex(200,30);
      vertex(199,57);
      endShape();
      
      fill(54,15,20);
      stroke(54,15,20);
      beginShape();
      vertex(282,192);
      vertex(277,210);
      vertex(281,221);
      vertex(290,229);
      vertex(293,207);
      endShape();
      
      fill(148,111,107);
      stroke(148,111,107);
      beginShape();
      vertex(71,77);
      vertex(71,72);
      vertex(66,67);
      vertex(61,78);
      endShape();
      
      beginShape();
      vertex(90,85);
      vertex(94,92);
      vertex(95,98);
      vertex(104,90);
      vertex(102,74);
      vertex(93,79);
      endShape();
      
      fill(112,45,41);
      stroke(112,45,41);
      beginShape();
      vertex(55,93);
      vertex(72,96);
      vertex(88,91);
      vertex(79,89);
      vertex(69,90);
      vertex(58,91);
      endShape();
      
      
      
      //----------------------------SOMBRAS--------------------------------------//
      fill(3,80);
      noStroke();
      beginShape();
      vertex(111,274);
      vertex(140,220);
      vertex(158,222);
      vertex(169,236);
      vertex(183,280);
      vertex(171,226);
      vertex(155,205);
      vertex(148,180);
      vertex(161,155);
      vertex(161,145);
      vertex(130,160);
      vertex(83,150);
      vertex(109,179);
      vertex(119,193);
      vertex(125,220);
      endShape();
      
      beginShape();
      vertex(220,270);
      vertex(237,224);
      vertex(278,241);
      vertex(292,270);
      vertex(277,236);
      vertex(264,233);
      vertex(240,215);
      vertex(242,173);
      vertex(226,208);
      vertex(228,213);
      vertex(207,222);
      vertex(217,229);
      vertex(229,231);
      endShape();
      
      fill(159,89,83);
      stroke(159,89,83);
      beginShape();
      vertex(219,148);
      vertex(205,148);
      vertex(209,186);
      vertex(221,183);
      endShape();
      
      fill(126,66,66);
      noStroke();
      beginShape();
      vertex(209,186);
      vertex(221,183);
      vertex(211,212);
      vertex(205,221);
      vertex(199,218);
      endShape();
      
      fill(121,59,60);
      noStroke();
      triangle(205,221,199,218,188,225);
      
      fill(106,61,80);
      beginShape();
      vertex(179,30);
      vertex(196,30);
      vertex(196,33);
      vertex(184,36);
      vertex(178,34);
      endShape();
      
      
      fill(215,85,22);
      ellipse(73,93,3,3);
      ellipse(183,32,2,2);
      ellipse(189,32,2,2);
    }
    
  
    
    
    
    if(dis==2){
       fill(70,38,40);
      noStroke();
      beginShape();
      vertex(269,372);
      vertex(250,372);
      vertex(248,370);
      vertex(222,362);
      vertex(245,200);
      vertex(245,195);
      vertex(261,199);
      endShape();
      
      beginShape();
      vertex(274,374);
      vertex(272,207);
      vertex(283,236);
      vertex(291,243);
      vertex(302,310);
      vertex(303,376);
      endShape();
      
      fill(52,16,20);
      beginShape();
      vertex(245,200);
      vertex(230,268);
      vertex(213,283);
      vertex(193,299);
      vertex(178,318);
      vertex(172,332);
      vertex(180,337);
      vertex(200,337);
      vertex(225,352);
      endShape();
      
      
      fill(64,0,16);
      beginShape();
      vertex(269,372);
      vertex(272,370);
      vertex(274,374);
      vertex(272,207);
      vertex(283,236);
      vertex(291,243);
      vertex(302,310);
      vertex(303,376);
      vertex(311,376);
      vertex(308,318);
      vertex(297,233);
      vertex(288,228);
      vertex(279,205);
      vertex(279,194);
      vertex(245,191);
      vertex(245,195);
      vertex(261,199);
      endShape();
      
      
      
      
      ////---------------------------------E S C U D O-----------------------------------------------------////
      fill(94,161,175);
      beginShape();
      vertex(297,233);
      vertex(288,228);
      vertex(279,205);
      vertex(279,194);
      vertex(276,173);
      vertex(281,145);
      vertex(304,128);
      vertex(304,132);
      vertex(288,147);
      vertex(282,160);
      vertex(281,205);
      vertex(290,225);
      vertex(309,237);
      endShape();
      
      fill(84,138,153);
      beginShape();
      vertex(309,237);
      vertex(290,225);
      vertex(281,205);
      vertex(282,160);
      vertex(288,147);
      vertex(304,132);
      vertex(312,170);
      vertex(314,198);
      vertex(312,221);
      endShape();
      
      fill(76,123,139);
      beginShape();
      vertex(309,237);
      vertex(312,221);
      vertex(314,198);
      vertex(312,170);
      vertex(304,128);
      vertex(316,133);
      vertex(330,156);
      vertex(334,185);
      vertex(329,223);
      endShape();
      ////--------------------------------------------------------------------------------------------------------////
      
      fill(125,92,85);
      beginShape();
      vertex(279,194);
      vertex(245,191);
      vertex(242,162);
      vertex(277,162);
      vertex(276,173);
      endShape();
      
      fill(66,9,28);
      beginShape();
      vertex(242,162);
      vertex(277,162);
      vertex(281,145);
      vertex(278,150);
      vertex(252,150);
      vertex(235,137);
      endShape();
      
      fill(70,38,40);
      beginShape();
      vertex(281,145);
      vertex(278,150);
      vertex(252,150);
      vertex(235,137);
      vertex(222,120);
      vertex(247,106);
      vertex(255,111);
      vertex(257,108);
      vertex(249,86);
      vertex(252,70);
      vertex(261,68);
      vertex(269,77);
      vertex(271,102);
      vertex(268,110);
      vertex(282,112);
      vertex(295,120);
      endShape();
      
      fill(63,0,14);
      beginShape();
      vertex(295,120);
      vertex(282,112);
      vertex(268,110);
      vertex(268,110);
      vertex(271,102);
      vertex(269,77);
      vertex(261,68);
      vertex(268,66);
      vertex(271,72);
      vertex(273,102);
      vertex(290,113);
      endShape();
      
      fill(96,49,55);
      beginShape();
      vertex(247,106);
      vertex(255,111);
      vertex(257,108);
      vertex(249,86);
      endShape();
      
      fill(194,47,47);
      beginShape();
      vertex(261,69);
      vertex(266,52);
      vertex(260,50);
      vertex(257,54);
      endShape();
      
      fill(159,90,83);
      beginShape();
      vertex(230,130);
      vertex(234,134);
      vertex(239,151);
      vertex(233,182);
      vertex(229,175);
      vertex(222,172);
      vertex(225,170);
      endShape();
      
      fill(171,195,207);
      beginShape();
      vertex(233,182);
      vertex(229,175);
      vertex(222,172);
      vertex(209,193);
      vertex(211,210);
      endShape();
      
      fill(146,166,173);
      beginShape();
      vertex(233,182);
      vertex(229,175);
      vertex(210,203);
      vertex(211,210);
      endShape();
      
      strokeWeight(2);
      stroke(138,159,171);
      line(191,63,220,372);
      
      noStroke();
      fill(122,155,156);
      triangle(185,64,197,64,188,18);
      
      fill(168,108,103);
      beginShape();
      vertex(211,210);
      vertex(209,193);
      vertex(205,191);
      vertex(198,200);
      vertex(205,213);
      endShape();
      
      fill(202,94,42);
      beginShape();
      vertex(192,80);
      vertex(194,99);
      vertex(135,111);
      vertex(108,109);
      vertex(112,101);
      vertex(145,89);
      vertex(155,90);
      vertex(170,78);
      endShape();
      
      beginShape();
      vertex(97,87);
      vertex(85,50);
      vertex(79,60);
      endShape();
      
      fill(181,73,24);
      beginShape();
      vertex(108,109);
      vertex(112,101);
      vertex(97,87);
      endShape();
      
      fill(182,32,25);
      beginShape();
      vertex(85,50);
      vertex(79,60);
      vertex(67,58);
      vertex(64,48);
      endShape();
      quad(15,78,39,80,0,88,0,78);
      
      fill(196,60,33);
      beginShape();
      vertex(67,58);
      vertex(64,48);
      vertex(15,78);
      vertex(39,80);
      endShape();
      
      fill(159,90,83);
      quad(253,80,266,80,268,77,252,77);
    }
    
    
    
    
    if(dis==3){
      fill(120,66,64);
  noStroke();
  beginShape();
  vertex(113,329);
  vertex(115,315);
  vertex(130,275);
  vertex(123,239);
  vertex(98,205);
  vertex(80,197);
  vertex(69,194);
  vertex(69,200);
  vertex(65,194);
  vertex(60,200);
  vertex(62,211);
  vertex(55,207);
  vertex(47,250);
  vertex(82,322);
  endShape();
  
  fill(55,24,30);
  beginShape();
  vertex(113,329);
  vertex(115,315);
  vertex(143,342);
  vertex(139,359);
  vertex(110,357);
  endShape();
  
  fill(78,36,47);
  beginShape();
  vertex(115,315);
  vertex(130,275);
  vertex(165,322);
  vertex(143,342);
  endShape();
  
  fill(81,54,71);
  beginShape();
  vertex(165,322);
  vertex(143,342);
  vertex(139,359);
  vertex(150,359.5);
  vertex(160,340);
  vertex(181,328);
  endShape();
  
  fill(55,24,29);
  beginShape();
  vertex(130,275);
  vertex(123,239);
  vertex(119,214);
  vertex(121,198);
  vertex(123,213);
  vertex(162,262);
  vertex(231,215);
  vertex(241,185);
  vertex(247,203);
  vertex(252,207);
  vertex(248,220);
  vertex(248,238);
  vertex(240,260);
  vertex(229,239);
  vertex(221,273);
  vertex(181,327);
  vertex(165,322);
  endShape();
  
  beginShape();
  vertex(181,327);
  vertex(213,337);
  vertex(215,360);
  vertex(207,343);
  endShape();
  
  fill(78,37,45);
  beginShape();
  vertex(181,327);
  vertex(213,337);
  vertex(215,360);
  vertex(259,359);
  vertex(250,323);
  vertex(248,238);
  vertex(240,260);
  vertex(229,239);
  vertex(221,273);
  vertex(181,327);
  vertex(165,322);
  endShape();
  
  fill(78,37,45);
  beginShape();
  vertex(123,239);
  vertex(119,214);
  vertex(121,198);
  vertex(123,213);
  vertex(162,262);
  vertex(231,215);
  vertex(241,185);
  vertex(247,203);
  vertex(252,207);
  vertex(248,220);
  vertex(252,207);
  vertex(259,203);
  vertex(259,199);
  vertex(266,190);
  vertex(260,190);
  vertex(263,183);
  vertex(277,179);
  vertex(250,145);
  vertex(237,114);
  vertex(219,114);
  vertex(165,181);
  vertex(137,126);
  vertex(127,135);
  vertex(120,158);
  vertex(99,193);
  vertex(100,202);
  vertex(105,210);
  vertex(98,237);
  vertex(109,248);
  vertex(114,257);
  endShape();
  
  fill(55,24,29);
  beginShape();
  vertex(99,193);
  vertex(100,202);
  vertex(105,210);
  vertex(98,237);
  vertex(94,237);
  vertex(96,231);
  endShape();
  
  fill(167,127,104);
  beginShape();
  vertex(98,237);
  vertex(109,248);
  vertex(114,257);
  vertex(116,260);
  vertex(110,279);
  vertex(107,277);
  vertex(107,269);
  vertex(101,270);
  vertex(94,258);
  vertex(89,253);
  vertex(81,253);
  vertex(88,237);
  vertex(94,237);
  endShape();
  
  fill(151,100,82);
  beginShape();
  vertex(101,270);
  vertex(94,258);
  vertex(89,253);
  vertex(81,253);
  vertex(83,258);
  vertex(88,258);
  vertex(89,260);
  vertex(97,270);
  endShape();
  
  fill(78,37,46);
  beginShape();
  vertex(89,260);
  vertex(97,270);
  vertex(89,272);
  vertex(85,263);
  vertex(85,260);
  endShape();
  
  fill(54,22,28);
  beginShape();
  vertex(97,270);
  vertex(89,272);
  vertex(85,263);
  vertex(85,260);
  vertex(89,260);
  vertex(88,258);
  vertex(83,258);
  vertex(81,261);
  vertex(81,280);
  vertex(91,299);
  vertex(106,299);
  vertex(111,296);
  vertex(108,289);
  vertex(108,270);
  endShape();
  
  beginShape();
  vertex(260,190);
  vertex(267,190);
  vertex(270,180);
  vertex(263,184);
  endShape();
  
  fill(102,53,57);
  beginShape();
  vertex(259,200);
  vertex(271,203);
  vertex(271,200);
  vertex(277,201);
  vertex(281,195);
  vertex(279,192);
  vertex(284,192);
  vertex(286,187);
  vertex(289,183);
  vertex(290,179);
  vertex(276,179.5);
  vertex(270,180);
  vertex(267,190);
  endShape();
  
  fill(56,23,29);
  beginShape();
  vertex(259,200);
  vertex(271,203);
  vertex(271,200);
  vertex(277,201);
  vertex(281,195);
  vertex(279,192);
  vertex(284,192);
  vertex(286,187);
  vertex(289,183);
  vertex(290,179);
  vertex(297,203);
  vertex(285,222);
  vertex(268,230);
  vertex(248,221);
  vertex(252,220);
  vertex(259,223);
  vertex(268,225);
  vertex(265,205);
  vertex(259,203);
  endShape();
  
  fill(191,78,66);
  beginShape();
  vertex(248,221);
  vertex(252,220);
  vertex(259,223);
  vertex(268,225);
  vertex(265,205);
  vertex(259,203);
  vertex(252,206);
  endShape();
  
  fill(63,25,37);
  beginShape();
  vertex(136,125);
  vertex(165,181);
  vertex(219,113);
  vertex(221,95);
  vertex(215,113);
  vertex(187,149);
  vertex(149,110);
  vertex(136,70);
  endShape();
  
  fill(71,17,26);
  beginShape();
  vertex(187,149);
  vertex(149,110);
  vertex(145,100);
  vertex(193,130);
  vertex(200,121);
  vertex(199,131);
  endShape();
  
  fill(91,61,68);
  beginShape();
  vertex(219,114);
  vertex(237,114);
  vertex(221,95);
  endShape();
  
  fill(78,37,45);
  beginShape();
  vertex(221,95);
  vertex(212,73);
  vertex(212,45);
  vertex(200,39);
  vertex(208,34);
  vertex(175,31);
  vertex(154,39);
  vertex(145,39);
  vertex(132,48);
  vertex(142,48);
  vertex(150,44);
  vertex(141,57);
  vertex(138,57);
  vertex(135,60);
  vertex(135,71);
  vertex(143,100);
  vertex(192,130);
  vertex(200,122);
  vertex(199,132);
  vertex(214,113);
  endShape();
  
  fill(200,86,72);
  beginShape();
  vertex(285,179);
  vertex(312,145);
  vertex(339,80);
  vertex(372,71);
  vertex(377,81);
  vertex(390,81);
  vertex(385,93);
  vertex(386,103);
  vertex(370,119);
  vertex(372,120);
  vertex(371,123);
  vertex(360,130);
  vertex(355,140);
  vertex(320,160);
  vertex(295,185);
  vertex(292,186);
  vertex(290,179);
  endShape();
  
  fill(151,103,99);
  beginShape();
  vertex(202,100);
  vertex(205,110);
  vertex(199,120);
  vertex(185,120);
  vertex(171,100);
  vertex(164,59);
  vertex(168,52);
  vertex(178,48);
  vertex(195,48);
  vertex(202,53);
  vertex(200,61);
  vertex(188,61);
  vertex(173,67);
  vertex(172,79);
  vertex(174,99);
  vertex(177,102);
  vertex(190,110);
  vertex(202,104);
  endShape();
  
  fill(43,12,13);
  beginShape();
  vertex(195,61);
  vertex(197,52);
  vertex(197,51);
  vertex(188,53);
  vertex(178,53);
  vertex(173,58);
  vertex(173,60);
  vertex(180,64);
  vertex(188,61);
  endShape();
  
  fill(182,70,72);
  beginShape();
  vertex(174,99);
  vertex(177,102);
  vertex(190,110);
  vertex(202,104);
  vertex(202,100);
  vertex(200.5,98);
  vertex(195,100.5);
  vertex(183,100.5);
  vertex(180,102);
  endShape();
  
  beginShape();
  vertex(200,61);
  vertex(188,61);
  vertex(173,67);
  vertex(172,79);
  vertex(177,70);
  vertex(183,70);
  vertex(198,64);
  endShape();
  
  fill(239,216,212);
  beginShape();
  vertex(200.5,98);
  vertex(195,100.5);
  vertex(183,100.5);
  vertex(180,102);
  vertex(182,90);
  vertex(185,98);
  vertex(190,98);
  vertex(198,94);
  vertex(199,89);
  vertex(200.5,90);
  endShape();
  
  beginShape();
  vertex(172,79);
  vertex(177,70);
  vertex(183,70);
  vertex(181,80);
  vertex(178,78);
  endShape();
  
  beginShape();
  vertex(198,64);
  vertex(198,72);
  vertex(196,76);
  vertex(195,72);
  vertex(193,66);
  endShape();
  
  fill(120,26,29);
  beginShape();
  vertex(182,90);
  vertex(185,98);
  vertex(190,98);
  vertex(198,94);
  vertex(199,89);
  vertex(200.5,90);
  vertex(198,85);
  vertex(196,76);
  vertex(195,72);
  vertex(193,66);
  vertex(183,70);
  vertex(181,80);
  vertex(178,78);
  vertex(172,79);
  vertex(173,97);
  vertex(181,101);
  endShape();
  
  fill(161,72,73);
  beginShape();
  vertex(55,207);
  vertex(54,204);
  vertex(49,201);
  vertex(40,262);
  vertex(55,303);
  vertex(82,327);
  vertex(113,332);
  vertex(114,329);
  vertex(82,322);
  vertex(46,250);
  endShape();
  
  fill(167,127,104);
  triangle(105,299,113,293,101,297);
  triangle(100,292,100,288,112,289);
  triangle(99,287,99,282,111,282);
    }
    
    
    
    
    if(dis==4){
      noStroke();
  fill(49,18,20);
  beginShape();
  vertex(248,391);
  vertex(256,332);
  vertex(210,272);
  vertex(228,313);
  endShape();
  
  fill(63,54,36);
  beginShape();
  vertex(248,391);
  vertex(252,391);
  vertex(266,320);
  vertex(256,332);
  endShape();
  
  fill(67,40,27);
  beginShape();
  vertex(256,332);
  vertex(266,320);
  vertex(249,229);
  vertex(248,232);
  vertex(240,228);
  vertex(235,225);
  vertex(221,222);
  vertex(215,230);
  vertex(202,236);
  vertex(205,225);
  vertex(201,220);
  vertex(199,221);
  vertex(195,218);
  vertex(185,221);
  vertex(184,218);
  vertex(180,218);
  vertex(179,224);
  vertex(175,219);
  vertex(150,283);
  vertex(159,302);
  vertex(209,269);
  endShape();
  
  fill(46,18,18);
  beginShape();
  vertex(205,271);
  vertex(193,298);
  vertex(183,359);
  vertex(159,303);
  endShape();
  
  fill(47,19,18);
  beginShape();
  vertex(202,236);
  vertex(205,225);
  vertex(201,220);
  vertex(199,221);
  vertex(195,218);
  vertex(185,221);
  vertex(184,218);
  vertex(180,218);
  vertex(179,224);
  vertex(175,219);
  vertex(160,260);
  vertex(175,231);
  vertex(180,235);
  vertex(200,222);
  vertex(200,235);
  endShape();
  
  fill(113,65,60);
  beginShape();
  vertex(249,229);
  vertex(248,232);
  vertex(240,228);
  vertex(235,225);
  vertex(221,222);
  vertex(215,230);
  vertex(202,236);
  vertex(205,225);
  vertex(201,220);
  vertex(199,221);
  vertex(195,218);
  vertex(185,221);
  vertex(184,218);
  vertex(180,218);
  vertex(179,224);
  vertex(175,219);
  vertex(172,213);
  vertex(177,211);
  vertex(181,210);
  vertex(209,219);
  vertex(235,210);
  vertex(247,202);
  vertex(252,216);
  vertex(252,220);
  vertex(249,218);
  endShape();
  
  fill(111,126,129);
  beginShape();
  vertex(181,210);
  vertex(209,219);
  vertex(187,205);
  vertex(183,167);
  vertex(196,157);
  vertex(199,161);
  vertex(201,158);
  vertex(206,168);
  vertex(211,155);
  vertex(239,159);
  vertex(241,183);
  vertex(238,198);
  vertex(241,205);
  vertex(247,202);
  vertex(247,150);
  vertex(267,185);
  vertex(267,198);
  vertex(289,233);
  vertex(290,243);
  vertex(289,255);
  vertex(291,260);
  vertex(293,241);
  vertex(276,200);
  vertex(271,180);
  vertex(251,131);
  vertex(258,127);
  vertex(249,120);
  vertex(238,149);
  vertex(209,139);
  vertex(178,153);
  vertex(169,130);
  vertex(153,105);
  vertex(158,133);
  vertex(164,143);
  vertex(165,182);
  vertex(145,231);
  vertex(145,258);
  vertex(153,251);
  vertex(150,240);
  vertex(150,231);
  vertex(178,184);
  endShape();
  
  fill(147,168,155);
  beginShape();
  vertex(187,205);
  vertex(183,167);
  vertex(196,157);
  vertex(199,161);
  vertex(201,158);
  vertex(206,168);
  vertex(211,155);
  vertex(239,159);
  vertex(241,183);
  vertex(238,198);
  vertex(241,205);
  vertex(209,219);
  endShape();
  
  beginShape();
  vertex(158,133);
  vertex(164,143);
  vertex(165,182);
  vertex(145,231);
  vertex(154,183);
  endShape();
  
  beginShape();
  vertex(291,260);
  vertex(293,241);
  vertex(276,200);
  vertex(271,180);
  vertex(251,131);
  vertex(258,127);
  vertex(249,120);
  vertex(238,149);
  vertex(215,141);
  vertex(219,128);
  vertex(222,97);
  vertex(226,111);
  vertex(226,78);
  vertex(240,90);
  vertex(235,82);
  vertex(248,84);
  vertex(260,109);
  vertex(260,123);
  vertex(288,179);
  vertex(300,245);
  vertex(293,267);
  endShape();
  
  beginShape();
  vertex(178,153);
  vertex(169,130);
  vertex(153,105);
  vertex(170,90);
  vertex(170,93);
  vertex(179,84);
  vertex(184,84);
  vertex(185,95);
  vertex(188,100);
  vertex(191,129);
  vertex(196,143);
  endShape();
  
  beginShape();
  vertex(212,40);
  vertex(208,38);
  vertex(200,44);
  vertex(192,44);
  vertex(191,22);
  vertex(197,12);
  vertex(211,5);
  vertex(222,20);
  vertex(222,38);
  vertex(225,47);
  vertex(225,51);
  vertex(215,39);
  endShape();
  
  fill(47,140,147);
  beginShape();
  vertex(188,100);
  vertex(191,129);
  vertex(196,143);
  vertex(196,155);
  vertex(199,160);
  vertex(200,143);
  vertex(205,141);
  vertex(205,155);
  vertex(207,160);
  vertex(209,140);
  vertex(213,144);
  vertex(215,141);
  vertex(219,125);
  vertex(217,70);
  vertex(215,100);
  vertex(212,68);
  vertex(212,55);
  vertex(205,62);
  vertex(203,54);
  vertex(212,40);
  vertex(208,38);
  vertex(200,44);
  vertex(192,44);
  vertex(191,22);
  vertex(189,55);
  vertex(191,80);
  endShape();
  
  fill(124,185,204);
  beginShape();
  vertex(219,125);
  vertex(217,70);
  vertex(215,100);
  vertex(212,68);
  vertex(212,55);
  vertex(205,62);
  vertex(203,54);
  vertex(212,40);
  vertex(215,39);
  vertex(225,51);
  vertex(225,47);
  vertex(222,38);
  vertex(222,20);
  vertex(233,36);
  vertex(233,60);
  vertex(243,83);
  vertex(227,79);
  vertex(227,111);
  vertex(221,98);
  endShape();
  
  fill(21,128,148);
  beginShape();
  vertex(188,100);
  vertex(191,80);
  vertex(189,55);
  vertex(181,73);
  vertex(170,90);
  vertex(170,94);
  vertex(179,84);
  vertex(185,84);
  vertex(186,95);
  endShape();
  
  fill(211,36,7);
  ellipse(200,25,3,3);
  ellipse(212,25,3,3);
    }
    
    
    
    
    if(dis==5){
      noStroke();
  fill(126,47,52);
  beginShape();
  vertex(199,72);
  vertex(220,88);
  vertex(220,101);
  vertex(208,115);
  vertex(209,142);
  vertex(190,138);
  vertex(200,130);
  vertex(199,120);
  vertex(185,118);
  vertex(191,112);
  vertex(177,110);
  vertex(191,109);
  vertex(190,108);
  vertex(202,105);
  vertex(204,94);
  vertex(210,93);
  vertex(207,82);
  vertex(208,80);
  endShape();
  
  beginShape();
  vertex(85,148);
  vertex(77,152);
  vertex(157,152);
  vertex(240,148);
  vertex(291,143);
  vertex(147,149);
  vertex(102,150);
  endShape();
  
  beginShape();
  vertex(201,169);
  vertex(187,194);
  vertex(167,202);
  vertex(173,202);
  vertex(173,204);
  vertex(176,204);
  vertex(174,209);
  vertex(185,204);
  vertex(186,204);
  vertex(187,203);
  vertex(200,196);
  vertex(204,196);
  vertex(204,184);
  vertex(206,183);
  vertex(206,177);
  endShape();
  
  fill(199,81,73);
  beginShape();
  vertex(209,142);
  vertex(190,138);
  vertex(200,130);
  vertex(199,120);
  vertex(185,118);
  vertex(191,112);
  vertex(177,110);
  vertex(191,109);
  vertex(190,108);
  vertex(202,105);
  vertex(204,94);
  vertex(210,93);
  vertex(207,82);
  vertex(208,80);
  vertex(202,80);
  vertex(205,83);
  vertex(201,90);
  vertex(165,108);
  vertex(161,125);
  vertex(158,140);
  endShape();
  
  beginShape();
  vertex(85,148);
  vertex(102,150);
  vertex(150,150);
  vertex(227,146);
  vertex(291,143);
  vertex(306,136);
  vertex(229,143);
  vertex(159,145);
  vertex(94,145);
  endShape();
  
  beginShape();
  vertex(157,211);
  vertex(157,213);
  vertex(200,211);
  vertex(200,196);
  vertex(189,203);
  vertex(187,203);
  vertex(186,204);
  vertex(185,204);
  vertex(174,209);
  endShape();
  
  beginShape();
  vertex(194,183);
  vertex(165,183);
  vertex(164,181);
  vertex(157,185);
  vertex(157,198);
  vertex(153,200);
  vertex(155,204);
  vertex(182,197);
  vertex(187,194);
  endShape();
  
  
  fill(0);
  beginShape();
  vertex(157,152);
  vertex(202,150);
  vertex(207,158);
  vertex(194,183);
  vertex(165,183);
  vertex(154,159);
  endShape();
  
  fill(168,153,142);
  beginShape();
  vertex(167,202);
  vertex(156,206);
  vertex(152,207);
  vertex(141,207);
  vertex(138,215);
  vertex(153,214);
  vertex(151,211);
  vertex(157,211);
  vertex(174,209);
  vertex(176,204);
  vertex(173,204);
  vertex(173,202);
  endShape();
  
  beginShape();
   vertex(135,223);
  vertex(137,223);
  vertex(140,226);
  vertex(141,223);
  vertex(141,221);
  vertex(146,218);
  vertex(149,223);
  vertex(148,225);
  vertex(148,227);
  vertex(143,229);
  vertex(139,228);
  vertex(137,228);
  endShape();
  
  fill(124,81,66);
  beginShape();
  vertex(111,208);
  vertex(110,215);
  vertex(135,223);
  vertex(137,223);
  vertex(140,226);
  vertex(141,223);
  vertex(141,221);
  vertex(146,218);
  vertex(149,223);
  vertex(148,225);
  vertex(153,225);
  vertex(163,213);
  vertex(157,213);
  vertex(153,214);
  vertex(138,215);
  endShape();
  

  fill(122,38,56);
  beginShape();
  vertex(163,213);
  vertex(153,225);
  vertex(202,227);
  vertex(202,218);
  vertex(200,211);
  endShape();
  
  fill(90,33,47);
  beginShape();
  vertex(153,225);
  vertex(153,235);
  vertex(154,235);
  vertex(153,260);
  vertex(157,264);
  vertex(157,258);
  vertex(160,259);
  vertex(197,255);
  vertex(198,260);
  vertex(208,259);
  vertex(208,238);
  vertex(202,227);
  endShape();
  
  quad(160,259,161,264,178,264,178,257);
  
  fill(124,81,66);
  beginShape();
  vertex(202,221);
  vertex(202,227);
  vertex(249,226);
  vertex(290,221);
  vertex(287,215);
  vertex(233,221);
  endShape();
  
  fill(113,84,88);
  beginShape();
  vertex(121,232);
  vertex(123,236);
  vertex(123,239);
  vertex(153,235);
  vertex(153,229);
  vertex(128,233);
  endShape();
  
  beginShape();
  vertex(201,216);
  vertex(202,218);
  vertex(202,221);
  vertex(213,221);
  vertex(253,206);
  vertex(251,205);
  vertex(250,200);
  endShape();
  
  fill(162,156,155);
  beginShape();
  vertex(161,264);
  vertex(161,268);
  vertex(167,281);
  vertex(167,288);
  vertex(180,303);
  vertex(174,292);
  vertex(178,281);
  vertex(172,280);
  vertex(172,264);
  endShape();
  
  beginShape();
  vertex(201,259);
  vertex(200,266);
  vertex(203,266);
  vertex(207,279);
  vertex(200,281);
  vertex(203,288);
  vertex(203,305);
  vertex(217,294);
  vertex(215,264);
  vertex(212,258);
  vertex(213,255);
  vertex(208,248);
  vertex(208,259);
  endShape();
  
  fill(185,155,28);
  ellipse(168,161,10,10);
  ellipse(187,161,10,10);
  
    }
    
    
    
    
    if(dis==6){
      stroke(119,65,71);
  strokeWeight(3);
  line(174,372,302,65);
  
  fill(148,73,59);
  noStroke();
  beginShape();
  vertex(261,368);
  vertex(255,370);
  vertex(227,310);
  vertex(235,305);
  vertex(256,365);
  endShape();
  
  
  fill(132,57,55);
  triangle(256,365,235,305,245,300);
  
  fill(174,108,83);
  beginShape();
  vertex(240,305);
  vertex(230,308);
  vertex(218,280);
  vertex(218,277);
  vertex(192,242);
  vertex(199,229);
  vertex(225,279);
  vertex(230,280);
  endShape();
  
  fill(160,92,74);
  beginShape();
  vertex(230,280);
  vertex(225,279);
  vertex(199,229);
  vertex(204,217);
  vertex(220,260);
  endShape();
  
  fill(148,73,59);
  beginShape();
  vertex(96,372);
  vertex(101,372);
  vertex(121,318);
  vertex(109,319);
  vertex(100,370);
  endShape();
  
  fill(130,55,54);
  triangle(101,372,121,318,127,323);
  
  fill(174,107,83);
  beginShape();
  vertex(120,318);
  vertex(131,281);
  vertex(140,297);
  vertex(126,321);
  endShape();
  
  fill(178,119,104);
  beginShape();
  vertex(126,321);
  vertex(127,323);
  vertex(140,297);
  vertex(142,297);
  endShape();
  
  fill(36,156,166);
  beginShape();
  vertex(128,281);
  vertex(135,297);
  vertex(142,297);
  vertex(152,319);
  vertex(163,319);
  vertex(172,294);
  vertex(178,267);
  vertex(175,215);
  vertex(164,180);
  vertex(152,159);
  vertex(140,153);
  vertex(132,153);
  vertex(125,162);
  vertex(118,177);
  vertex(116,208);
  vertex(116,237);
  vertex(121,262);
  vertex(126,281);
  endShape();
  
  fill(143,180,183);
  beginShape();
  vertex(140,288);
  vertex(141,248);
  vertex(136,244);
  vertex(132,230);
  vertex(136,210);
  vertex(141,207);
  vertex(143,163);
  vertex(135,158);
  vertex(126,170);
  vertex(120,186);
  vertex(119,228);
  vertex(125,259);
  endShape();
  
  fill(205,108,82);
  beginShape();
  vertex(140,288);
  vertex(141,248);
  vertex(148,240);
  vertex(146,214);
  vertex(141,207);
  vertex(143,163);
  vertex(158,185);
  vertex(167,214);
  vertex(169,240);
  vertex(169,273);
  vertex(162,298);
  vertex(155,304);
  vertex(150,302);
  endShape();
  
  fill(0,43,64);
  beginShape();
  vertex(178,250);
  vertex(180,248);
  vertex(182,261);
  vertex(187,248);
  vertex(189,250);
  vertex(203,216);
  vertex(198,205);
  vertex(195,202);
  vertex(195,209);
  vertex(187,216);
  vertex(176,218);
  endShape();
  
  fill(15,13,35);
  beginShape();
  vertex(178,250);
  vertex(179,267);
  vertex(180,274);
  vertex(184,270);
  vertex(184,259);
  vertex(186,261);
  vertex(186,255);
  vertex(190,254);
  vertex(191,258);
  vertex(194,243);
  vertex(189,250);
  vertex(187,248);
  vertex(182,261);
  vertex(180,248);
  vertex(178,250);
  endShape();
  
  fill(0,74,98);
  beginShape();
  vertex(176,218);
  vertex(187,216);
  vertex(184,214);
  vertex(173,198);
  vertex(170,198);
  vertex(171,200);
  vertex(173,215);
  endShape();
  
  fill(153,81,74);
  beginShape();
  vertex(187,216);
  vertex(184,214);
  vertex(180,208);
  vertex(182,210);
  vertex(190,209);
  vertex(195,202);
  vertex(195,209);
  endShape();
  
  fill(116,50,51);
  beginShape();
  vertex(180,208);
  vertex(182,210);
  vertex(190,209);
  vertex(195,202);
  vertex(195,198);
  vertex(200,192);
  vertex(193,190);
  vertex(181,194);
  vertex(177,188);
  vertex(173,198);
  endShape();
  
  fill(149,78,72);
  beginShape();
  vertex(193,190);
  vertex(181,194);
  vertex(177,188);
 // vertex(173,198);
  vertex(179,191);
  vertex(183,189);
  vertex(185,186);
  vertex(188,186);
  vertex(188,187);
  vertex(199,187);
  vertex(205,182);
  vertex(210,185);
  vertex(211,190);
  vertex(205,192);
  vertex(199,194);
  endShape();
  
  fill(220,156,134);
  beginShape();
  vertex(185,186);
  vertex(188,186);
  vertex(188,187);
  vertex(199,187);
  vertex(204,183);
  vertex(194,178);
  endShape();
  
  fill(211,135,114);
  beginShape();
  vertex(204,183);
  vertex(194,178);
  vertex(185,186);
  vertex(190,175);
  vertex(192,176);
  vertex(195,174);
  vertex(205,182);
  endShape();
  
  fill(220,156,134);
  beginShape();
  vertex(209,185);
  vertex(211,191);
  vertex(235,211);
  vertex(251,183);
  vertex(253,185);
  vertex(262,172);
  vertex(260,170);
  vertex(258,169);
  vertex(252,173);
  vertex(250,180);
  vertex(235,200);
  vertex(221,185);
  vertex(220,180);
  vertex(208,185);
  vertex(219,185);
  endShape();
  
  fill(0,41,62);
  beginShape();
  vertex(190,171);
  vertex(190,174);
  vertex(183,189);
  vertex(185,186);
  vertex(179,190);
  vertex(176,195);
  vertex(175,199);
  vertex(172,195);
  vertex(170,190);
  vertex(168,188);
  vertex(166,186);
  vertex(164,183);
  vertex(167,176);
  vertex(169,180);
  vertex(177,173);
  vertex(180,175);
  vertex(182,158);
  vertex(186,171);
  endShape();
  
  fill(0,76,103);
  beginShape();
  vertex(164,183);
  vertex(167,176);
  vertex(169,180);
  vertex(177,173);
  vertex(180,175);
  vertex(182,158);
  vertex(182,156);
  vertex(173,160);
  vertex(168,164);
  vertex(165,170);
  endShape();
  
    fill(199,81,54);
  beginShape();
  vertex(184,162);
  vertex(184,187);
  vertex(198,159);
  vertex(200,147);
  vertex(196,149);
  vertex(188,149);
  vertex(181,144);
  vertex(170,150);
  vertex(159,145);
  vertex(156,146);
  vertex(152,143);
  vertex(138,143);
  vertex(113,154);
  vertex(122,155);
  vertex(122,155);
  vertex(115,160);
  vertex(130,156);
  vertex(132,154);
  vertex(135,157);
  vertex(134,160);
  vertex(142,160);
  vertex(168,171);
  vertex(169,166);
  
  endShape();
  
  fill(0,41,65);
  beginShape();
  vertex(222,188);
  vertex(220,184);
  vertex(217,188);
  vertex(210,188);
  vertex(206,185);
  vertex(206,182);
  vertex(212,183);
  vertex(211,175);
  vertex(215,174);
  vertex(214,171);
  vertex(208,168);
  vertex(198,168);
  vertex(201,163);
  vertex(198,161);
  vertex(198,159);
  vertex(212,159);
  vertex(215,160);
  vertex(224,160);
  vertex(221,163);
  vertex(222,164);
  vertex(226,168);
  vertex(226,177);
  vertex(224,175);
  vertex(221,175);
  vertex(222,178);
  endShape();
  
  fill(0,75,103);
  beginShape();
  vertex(206,185);
  vertex(206,182);
  vertex(212,183);
  vertex(211,175);
  vertex(215,174);
  vertex(214,171);
  vertex(208,168);
  vertex(198,168);
  vertex(198,171);
  vertex(195,173);
  vertex(185,176);
  endShape();
  
  
  fill(214,137,116);
  beginShape();
  vertex(184,162);
  vertex(187,166);
  vertex(187,174);
  vertex(195,173);
  vertex(198,171);
  vertex(201,163);
  vertex(198,161);
  vertex(192,168);
  vertex(188,168);
  endShape();
  
  fill(220,156,134);
  beginShape();
  vertex(184,162);
  vertex(184,151);
  vertex(197,151);
  vertex(198,161);
  vertex(192,167);
  vertex(188,168);
  endShape();
  
  fill(46,157,163);
  beginShape();
  vertex(201,141);
  vertex(200,147);
  vertex(196,149);
  vertex(188,149);
  vertex(181,144);
  vertex(184,139);
  vertex(190,136);
  vertex(192,136);
  endShape();
  
    }
  }
}

void backgroundP(){
 
  fill(100,181,168);
  rect(0,0,1300,500);
  




  
  //-----------------------------------------------------------------------------------------------------------------------------------------//
  //-----------------------------------------------------------------------------------------------------------------------------------------//
  
  //----------------------------------------S U E L O-----------------------------------//
  fill(204,219,0);
  rect(0,350,1300,350);
  //----------------------------------------------------------------------------------------------------------------------------------------//
  //----------------------------------------------------------------------------------------------------------------------------------------//
 
  //------------------------------------S U P E R F I C I E S---------------------------------//
  fill(243,215,110);
  beginShape();
  vertex(600,250);
  vertex(700,250);
  vertex(750,245);
  vertex(650,240);
  vertex(550,245);
  endShape();
  
  fill(243,215,110);
  beginShape();
  vertex(540,310);
  vertex(760,310);
  vertex(860,305);
  vertex(840,300);
  vertex(750,290);
  vertex(550,290);
  vertex(460,300);
  vertex(440,305);
  endShape();
  
  fill(243,215,110);
  beginShape();
  vertex(830,378);
  vertex(1000,370);
  vertex(900,330);
  vertex(400,330);
  vertex(260,370);
  vertex(470,378);
  endShape();
  
  //-------------------------------------------B A S E-----------------------------------//
  fill(142,153,48);
  rect(470,378,360,10);
  fill(141,162,56);
  quad(830,378,1000,370,1000,380,830,388);
  fill(211,165,84);
  quad(470,378,260,370,260,380,470,388);
 
 //----------------------------------------M A S T E R  S W O R D---------------------------------------------//
  fill(252,255,121);
  beginShape();
  vertex(640,245);
  vertex(660,245);
  vertex(660,180);
  vertex(657,170);
  vertex(657,160);
  vertex(643,160);
  vertex(643,170);
  vertex(640,180);
  endShape();
  fill(113,215,138);
  beginShape();
  vertex(657,160); 
  vertex(664,150);  
  vertex(679,165); 
  vertex(676,168); 
  vertex(684,162); 
  vertex(686,153); 
  vertex(660,140); 
  vertex(657,135); 
  vertex(657,130); 
  vertex(654,127); 
  vertex(646,127);
  vertex(643,130);
  vertex(643,135);
  vertex(640,140);
  vertex(614,153);
  vertex(616,162);
  vertex(624,168);
  vertex(621,165);
  vertex(636,150);
  vertex(643,160);
  endShape();
  fill(103,218,147);
  beginShape();
  vertex(657,100);
  vertex(650,108);
  vertex(643,100);
  vertex(650,92);
  endShape();
  fill(237,210,48);
  beginShape();
  vertex(654,127);
  vertex(646,127);
  vertex(646,105);
  vertex(650,110);
  vertex(654,105);
  endShape();
  fill(251,255,200);
  triangle(650,100,643,100,650,108);
  fill(251,255,60);
  beginShape();
  vertex(657,148);
  vertex(650,156);
  vertex(643,148);
  vertex(650,140);
  endShape();
 
  
  //---------------------------------------- P E D E S T A L-------------------------------------------//
  fill(171,189,62);
  rect(600,250,100,50);
  fill(216,205,91);
  quad(550,245,600,250,600,300,550,295);
  fill(169,193,71);
  quad(700,250,750,245,750,295,700,300);
  
  //-----------------------------------------------T R I F O R C E----------------------------------//
  fill(252,255,52);
  triangle(650,260,670,290,630,290);
  fill(171,189,62);
  triangle(660,275,640,275,650,290);
  
  //---------------------------------------P E D E S T A L--------------------------------------//
  fill(171,189,62);
  rect(540,310,220,50);
  fill(216,205,91);
  quad(440,305,540,310,540,360,440,355);
  fill(169,193,71);
  quad(760,310,860,305,860,355,760,360);
  
  fill(171,189,62);
  rect(540,335,220,40);
  fill(243,215,110);
  quad(540,335,760,335,755,330,545,330);
  
  fill(140,134,47);
  quad(780,332,830,330,830,370,780,368);
  fill(201,169,75);
  quad(830,330,830,370,950,365,950,328);
  fill(243,215,110);
  beginShape();
  vertex(830,332);
  vertex(780,330);
  vertex(860,328);
  vertex(860,325);
  vertex(950,328);
  endShape();
  
  fill(140,134,47);
  quad(520,330,470,332,470,372,520,370);
  fill(201,169,75);
  quad(470,332,470,372,320,365,320,328);
  fill(243,215,110);
  beginShape();
  vertex(470,332);
  vertex(520,330);
  vertex(440,328);
  vertex(440,325);
  vertex(320,328);
  endShape();
  
 //---------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
 //---------------------------------------------------------------------------------------------------------------------------------------------------------------------------//
 
  fill(252,255,52,20);
  quad(600,0,700,0,1000,380,300,380);
 
  fill(109,41,23);
  quad(150,355,150,280,147,282,147,353);
  fill(64,16,8);
  triangle(150,355,190,355,150,320);
  fill(92,49,34);
  triangle(190,355,230,355,230,320);
  fill(84,40,28);
  triangle(190,355,230,320,190,320);
  fill(82,36,26);
  triangle(190,355,150,320,190,320);
  fill(76,28,19);
  triangle(150,320,190,320,190,280);
  fill(78,32,21);
  triangle(190,320,230,320,190,280);
  fill(95,47,36);
  triangle(190,280,230,280,230,320);
  fill(70,23,14);
  triangle(190,280,150,280,150,320);
  fill(154,75,51);
  triangle(150,280,190,280,190,255);
  fill(98,33,17);
  triangle(190,280,190,255,230,280);
  
  fill(#999B93);
  quad(950,450,1000,420,1050,430,1065,455);
  fill(#666762);
  quad(1000,420,940,440,940,448,950,450);
  
  
  fill(29,56,0);
  triangle(210,445,210,415,240,440);
  fill(115,125,0);
  triangle(254,425,250,455,270,450);
  fill(135,158,0);
  triangle(210,445,190,440,210,415);
  fill(40,70,0);
  triangle(210,445,210,415,240,440);
  fill(53,121,0);
  triangle(200,450,250,455,254,425);
  
  
 /* fill(29,56,0);
  triangle(710,445,710,415,740,440);
  fill(115,125,0);
  triangle(754,425,750,455,770,450);
  fill(135,158,0);
  triangle(710,445,690,440,710,415);
  fill(40,70,0);
  triangle(710,445,710,415,740,440);
  fill(53,121,0);
  triangle(700,450,750,455,754,425);*/
  
  fill(29,56,0);
  triangle(510,465,510,435,540,460);
  fill(115,125,0);
  triangle(554,445,550,475,570,470);
  fill(135,158,0);
  triangle(510,465,490,460,510,435);
  fill(40,70,0);
  triangle(510,465,510,435,540,460);
  fill(53,121,0);
  triangle(500,470,550,475,554,445);
  
  fill(29,56,0);
  triangle(910,465,910,435,940,460);
  fill(115,125,0);
  triangle(954,445,950,475,970,470);
  fill(135,158,0);
  triangle(910,465,890,460,910,435);
  fill(40,70,0);
  triangle(910,465,910,435,940,460);
  fill(53,121,0);
  triangle(900,470,950,475,954,445);
 
 /* fill(29,56,0);
  triangle(890,465,890,435,920,460);
  fill(115,125,0);
  triangle(934,445,930,475,950,470);
  fill(135,158,0);
  triangle(890,465,870,460,890,435);
  fill(40,70,0);
  triangle(890,465,890,435,920,460);
  fill(53,121,0);
  triangle(880,470,930,475,934,445);*/
  
  fill(29,56,0);
  triangle(910,465,910,435,940,460);
  fill(115,125,0);
  triangle(954,445,950,475,970,470);
  fill(135,158,0);
  triangle(910,465,890,460,910,435);
  fill(40,70,0);
  triangle(910,465,910,435,940,460);
  fill(53,121,0);
  triangle(900,470,950,475,954,445);
 
  fill(29,56,0);
  triangle(990,465,990,435,1020,460);
  fill(115,125,0);
  triangle(1034,445,1030,475,1050,470);
  fill(135,158,0);
  triangle(990,465,970,460,990,435);
  fill(40,70,0);
  triangle(990,465,990,435,1020,460);
  fill(53,121,0);
  triangle(980,470,1030,475,1034,445);
  

  fill(29,56,0);
  triangle(990,405,990,375,1020,400);
  fill(115,125,0);
  triangle(1034,385,1030,415,1050,410);
  fill(135,158,0);
  triangle(990,405,970,400,990,375);
  fill(40,70,0);
  triangle(990,405,990,375,1020,400);
  fill(53,121,0);
  triangle(980,410,1030,415,1034,385);
  


  fill(#44D814); 
  quad(1200,500,1300,500,1300,450,1250,400);
  
  
  triangle(0,350,0,300,90,500);
  fill(#3EB716);
    
  triangle(1300,500,1250,400,1300,450);
  
  
  triangle(90,500,0,350,0,500);
  fill(#44D814);

  triangle(0,500,120,400,0,450);
  fill(#3EB716);
  triangle(0,500,90,500,120,400);
  
  triangle(90,500,0,350,0,500);
}

void BGS(){
  noStroke();
  fill(243,215,110);
  beginShape();
  vertex(600,250);
  vertex(700,250);
  vertex(750,245);
  vertex(650,240);
  vertex(550,245);
  endShape();
  
  fill(243,215,110);
  beginShape();
  vertex(540,310);
  vertex(760,310);
  vertex(860,305);
  vertex(840,300);
  vertex(750,290);
  vertex(550,290);
  vertex(460,300);
  vertex(440,305);
  endShape();
  
  fill(243,215,110);
  beginShape();
  vertex(830,378);
  vertex(1000,370);
  vertex(900,330);
  vertex(400,330);
  vertex(260,370);
  vertex(470,378);
  endShape();
  
  //-------------------------------------------B A S E-----------------------------------//
  fill(142,153,48);
  rect(470,378,360,10);
  fill(141,162,56);
  quad(830,378,1000,370,1000,380,830,388);
  fill(211,165,84);
  quad(470,378,260,370,260,380,470,388);
 
 //----------------------------------------M A S T E R  S W O R D---------------------------------------------//
  fill(252,255,121);
  beginShape();
  vertex(640,245);
  vertex(660,245);
  vertex(660,180);
  vertex(657,170);
  vertex(657,160);
  vertex(643,160);
  vertex(643,170);
  vertex(640,180);
  endShape();
  fill(113,215,138);
  beginShape();
  vertex(657,160); 
  vertex(664,150);  
  vertex(679,165); 
  vertex(676,168); 
  vertex(684,162); 
  vertex(686,153); 
  vertex(660,140); 
  vertex(657,135); 
  vertex(657,130); 
  vertex(654,127); 
  vertex(646,127);
  vertex(643,130);
  vertex(643,135);
  vertex(640,140);
  vertex(614,153);
  vertex(616,162);
  vertex(624,168);
  vertex(621,165);
  vertex(636,150);
  vertex(643,160);
  endShape();
  fill(103,218,147);
  beginShape();
  vertex(657,100);
  vertex(650,108);
  vertex(643,100);
  vertex(650,92);
  endShape();
  fill(237,210,48);
  beginShape();
  vertex(654,127);
  vertex(646,127);
  vertex(646,105);
  vertex(650,110);
  vertex(654,105);
  endShape();
  fill(251,255,200);
  triangle(650,100,643,100,650,108);
  fill(251,255,60);
  beginShape();
  vertex(657,148);
  vertex(650,156);
  vertex(643,148);
  vertex(650,140);
  endShape();
 
  
  //---------------------------------------- P E D E S T A L-------------------------------------------//
  fill(171,189,62);
  rect(600,250,100,50);
  fill(216,205,91);
  quad(550,245,600,250,600,300,550,295);
  fill(169,193,71);
  quad(700,250,750,245,750,295,700,300);
  
  //-----------------------------------------------T R I F O R C E----------------------------------//
  fill(252,255,52);
  triangle(650,260,670,290,630,290);
  fill(171,189,62);
  triangle(660,275,640,275,650,290);
  
  //---------------------------------------P E D E S T A L--------------------------------------//
  fill(171,189,62);
  rect(540,310,220,50);
  fill(216,205,91);
  quad(440,305,540,310,540,360,440,355);
  fill(169,193,71);
  quad(760,310,860,305,860,355,760,360);
  
  fill(171,189,62);
  rect(540,335,220,40);
  fill(243,215,110);
  quad(540,335,760,335,755,330,545,330);
  
  fill(140,134,47);
  quad(780,332,830,330,830,370,780,368);
  fill(201,169,75);
  quad(830,330,830,370,950,365,950,328);
  fill(243,215,110);
  beginShape();
  vertex(830,332);
  vertex(780,330);
  vertex(860,328);
  vertex(860,325);
  vertex(950,328);
  endShape();
  
  fill(140,134,47);
  quad(520,330,470,332,470,372,520,370);
  fill(201,169,75);
  quad(470,332,470,372,320,365,320,328);
  fill(243,215,110);
  beginShape();
  vertex(470,332);
  vertex(520,330);
  vertex(440,328);
  vertex(440,325);
  vertex(320,328);
  endShape();
  
}