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

PImage Ekko;
PImage Jhin;
PImage Fizz;
PImage Kennen;
PImage Phanteon;
PImage Tnk;

PImage iEkko;
PImage iJhin;
PImage iFizz;
PImage iKennen;
PImage iPhanteon;
PImage iTnk;

PImage Start;
PImage Menu;

character Summar;
character Nois;
character Rang;
character Ezyr;
character Skull;
character Neva;

void setup(){
  
  Ekko=loadImage("Ekko.png");
  Fizz=loadImage("Fizz.png");
  Jhin=loadImage("Jhin.png");
  Kennen=loadImage("Kennen.png");
  Phanteon=loadImage("Phanteon.png");
  Tnk=loadImage("Tnk.png");
 
  
  iEkko=loadImage("iEkko.png");
  iFizz=loadImage("iFizz.jpg");
  iJhin=loadImage("iJhin.png");
  iKennen=loadImage("iKennen.png");
  iPhanteon=loadImage("iPhanteon.png");
  //iTnk=loadImage("Tnk.png");
  Start=loadImage("Start.png");
  Menu=loadImage("Menu.png");
  
  
  
  
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
      scale(0.3);
      imageMode(CENTER);
      translate(250,1750);
      image(iEkko,0,0);
      popMatrix();
      
      pushMatrix();
      scale(0.3);
      imageMode(CENTER);
      translate(4015,1750);
      image(iEkko,0,0);
      popMatrix();
      
      pushMatrix();
       scale(0.35);
      imageMode(CENTER);
      translate(390,1500);
      image(iFizz,0,0);
      popMatrix();
      
      pushMatrix();
      scale(0.35);
      imageMode(CENTER);
      translate(3275,1500);
      image(iFizz,0,0);
      popMatrix();
      
      pushMatrix();
      scale(0.17);
      imageMode(CENTER);
      translate(1500,3090);
      image(iKennen,0,0);
      popMatrix();
      
      pushMatrix();
       scale(0.17);
      imageMode(CENTER);
      translate(6025,3090);
      image(iKennen,0,0);
      popMatrix();
      
      pushMatrix();
       scale(0.44);
      imageMode(CENTER);
      translate(445,1195);
      image(iJhin,0,0);
      popMatrix();
      
      pushMatrix();
       scale(0.44);
      imageMode(CENTER);
      translate(2463,1195);
      image(iJhin,0,0);
      popMatrix();
      
      pushMatrix();
       scale(0.44);
      imageMode(CENTER);
      translate(712,1195);
      image(iPhanteon,0,0);
      popMatrix();
      
      pushMatrix();
      scale(0.44);
      imageMode(CENTER);
      translate(2197,1195);
      image(iPhanteon,0,0);
      popMatrix();
      
      /*pushMatrix();
      scale(0.2);
      translate(1680,2400);
      Neva.display();
      popMatrix();
      
      pushMatrix();
      scale(0.2);
      translate(4380,2400);
      Neva.display();
      popMatrix();*/
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
  pushMatrix();
  imageMode(CENTER);
  image(Start,width/2,height/2);
  popMatrix();
  startButton();
}

void startButton(){
  //fill(#E5C20E);
  //rect(560,570,155+(buttonSizeX),55+(buttonSizeY),3,6,12,18);
  //fill(0);
  //textSize(18+textSizeB);
  //text("START",615-(moveX),530+(moveY));
  
  if ((mouseX >= 560 & mouseX <= 715) & (mouseY >= 570 & mouseY <= 625)) {
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
    
    
  if ((mouseX >= 560 & mouseX <= 715) & (mouseY >= 570 & mouseY <= 625)){
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

 
  fill(#FFDA05,150);
  rect(10,335,200,30);

  
  fill(#FFDA05,150);
  rect(1068,335,200,30);
  
  
 
}

void animationButton(){
  selectFuntion();
  if ((mouseX >= 50 & mouseX <= 100) & (mouseY >= 500 & mouseY <= 550)){
    
    noFill();
    strokeWeight(3);
    stroke(#FAEE0A); 
    rect(50,500,50,50,7);
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(2900,2900);
    image(Ekko,0,0);
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
    text("EKKO",50,100);
  }
  if ((mouseX >= 100 & mouseX <= 170) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#ED1111); 
    rect(110,500,50,50,7);
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(3600,2900);
    image(Fizz,0,0);
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
    text("FIZZ",50,100);
  }
  if ((mouseX >= 170 & mouseX <= 230) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#ED1111); 
    rect(170,500,50,50);
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(2900,2900);
    image(Jhin,0,0);
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
    text("JHIN",50,100);
  }
  if ((mouseX >= 230 & mouseX <= 290) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#ED1111); 
    rect(230,500,50,50);
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(2900,2900);
    image(Kennen,0,0);
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
    text("KENNEN",50,100);
  }
  if ((mouseX >= 290 & mouseX <= 350) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#ED1111); 
    rect(290,500,50,50);
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(2900,2900);
    image(Phanteon,0,0);
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
    text("PHANTEON",50,100);
  }
  if ((mouseX >= 350 & mouseX <= 400) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#ED1111); 
    rect(350,500,50,50);
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(2900,2900);
    image(Tnk,0,0);
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
    text("TNK",50,100);
  }
  
  
  
  
  
  if ((mouseX >= 1180 & mouseX <= 1230) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#364BFF); 
    rect(1180,500,50,50,7);
    pushMatrix();
    scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,2900);
    image(Ekko,0,0);
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
    text("EKKO",980,100);
  }
  if ((mouseX >= 1120 & mouseX <= 1170) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#FAEE0A); 
    rect(1120,500,50,50,7);
    pushMatrix();
     scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9200,2900);
    image(Fizz,0,0);
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
    text("FIZZ",980,100);
  }
  if ((mouseX >= 1060 & mouseX <= 1110) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#364BFF); 
    rect(1060,500,50,50,7);
    pushMatrix();
    scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,2900);
    image(Jhin,0,0);
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
    text("JHIN",980,100);
  }
  if ((mouseX >= 1000 & mouseX <= 1050) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#364BFF); 
    rect(1000,500,50,50,7);
    pushMatrix();
     scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,2900);
    image(Kennen,0,0);
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
    text("KENNEN",980,100);
  }
  if ((mouseX >= 940 & mouseX <= 990) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#364BFF); 
    rect(940,500,50,50,7);
    pushMatrix();
     scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,2900);
    image(Phanteon,0,0);
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
    text("PHANTEON",980,100);
  }
  if ((mouseX >= 880 & mouseX <= 930) & (mouseY >= 500 & mouseY <= 550)){
    noFill();
    strokeWeight(3);
    stroke(#364BFF);
    rect(880,500,50,50,7);
    pushMatrix();
     scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,2900);
    image(Tnk,0,0);
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
    text("TNK",980,100);
  }
    
  }


void selectFuntion(){
  if(key=='q'){
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(2900,2900);
    image(Ekko,0,0);
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
    scale(0.1);
    imageMode(CENTER);
    translate(3600,2900);
    image(Fizz,0,0);
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
    scale(0.1);
    imageMode(CENTER);
    translate(2900,2900);
    image(Jhin,0,0);
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
    scale(0.1);
    imageMode(CENTER);
    translate(2900,2900);
    image(Kennen,0,0);
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
    scale(0.1);
    imageMode(CENTER);
    translate(2900,2900);
    image(Phanteon,0,0);
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
    scale(0.1);
    imageMode(CENTER);
    translate(2900,2900);
    image(Tnk,0,0);
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
    scale(0.1);
    imageMode(CENTER);
    translate(2900,2900);
    image(Ekko,0,0);
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
     scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9200,2900);
    image(Fizz,0,0);
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
    scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,2900);
    image(Jhin,0,0);
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
    scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,2900);
    image(Kennen,0,0);
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
    scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,2900);
    image(Phanteon,0,0);
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
    scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,2900);
    image(Tnk,0,0);
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
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(2900,3700);
    image(Ekko,0,0);
    popMatrix();

  }
  
  if(P1==2){
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(3600,3700);
    image(Fizz,0,0);
    popMatrix();
    
  }
  if(P1==3){
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(2900,3700);
    image(Jhin,0,0);
    popMatrix();
  }
  if(P1==4){
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(2900,3700);
    image(Kennen,0,0);
    popMatrix();
  }
  if(P1==5){
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(2900,3700);
    image(Phanteon,0,0);
    popMatrix();
  }
  if(P1==6){
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(2900,3700);
    image(Tnk,0,0);
    popMatrix();
  }
  
  
  if(P2==1){
    pushMatrix();
    scale(0.1);
    imageMode(CENTER);
    translate(2900,3700);
    image(Ekko,0,0);
    popMatrix();
  }
  if(P2==2){
    pushMatrix();
     scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9200,3700);
    image(Fizz,0,0);
    popMatrix();
  }
  if(P2==3){
    pushMatrix();
    scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,3700);
    image(Jhin,0,0);
    popMatrix();
  }
  if(P2==4){
    pushMatrix();
    scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,3700);
    image(Kennen,0,0);
    popMatrix();
  }
  if(P2==5){
   pushMatrix();
    scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,3700);
    image(Phanteon,0,0);
    popMatrix();
  }
  if(P2==6){
    pushMatrix();
    scale(-0.1,0.1);
    imageMode(CENTER);
    translate(-9900,3700);
    image(Tnk,0,0);
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
      
      
      
  pushMatrix();
  imageMode(CENTER);
  image(Ekko, width/2, 250);
  popMatrix();
    }
    
  
    
    
    
    if(dis==2){
      pushMatrix();
  imageMode(CENTER);
  image(Fizz, width/2, 250);
  popMatrix();
    }
    
    
    
    
    if(dis==3){
      pushMatrix();
  imageMode(CENTER);
  image(Jhin, width/2, 250);
  popMatrix();
    }
    
    
    
    
    if(dis==4){
      pushMatrix();
  imageMode(CENTER);
  image(Kennen, width/2, 250);
  popMatrix();
    }
    
    
    
    
    if(dis==5){
      pushMatrix();
  imageMode(CENTER);
  image(Phanteon, width/2, 250);
  popMatrix();
  
    }
    
    
    
    
    if(dis==6){
      pushMatrix();
  imageMode(CENTER);
  image(Tnk, width/2, 250);
  popMatrix();
      
  
    }
  }
}

void backgroundP(){
 pushMatrix();
  imageMode(CENTER);
  translate(width/2,height/2);
  image(Menu,0,0);
  popMatrix();
  
}

void BGS(){
  pushMatrix();
  imageMode(CENTER);
  translate(width/2,height/2);
  image(Menu,0,0);
  popMatrix();
 
}