
matriz a;
matriz b;
matriz c;

void setup(){
  size(720,480);
  a= new matriz(5,100,100,50,0,0);
  b= new matriz(10,200,300,50,0,0);
  c= new matriz(2,50,100,200,0,0);
}


void draw(){
  background(0);
  a.display();
  a.animacion();
  b.display();
  b.animacion();
  c.display();
  c.animacion();

  
}

class matriz{
  
  //tamc=tamaño del cuadro
  //lar=tamaño de matriz
  //x y= posicion
  
  int tamc;
  int lar;
  int x;
  int y;
  int i;
  int j;
  
  matriz(int tamc_, int lar_, int x_, int y_, int i_, int j_){
    
    tamc = tamc_;
    lar = lar_;
    x = x_;
    y = y_;
    i = i_;
    j = j_;

}

  void display(){
    for (i = 0; i<lar; i+=tamc){
      for (j = 0; j<lar; j+=tamc){
        //background(0);
        noStroke();
        fill (random(255),random(255),random(255));
        rect (x+i,y+j,tamc,tamc);
      }
    } 
  }

  void animacion(){
    if ((mouseX >= x & mouseX <= x+lar) & (mouseY >= y & mouseY <= y+lar)) {
      tamc= 10;
    }
    else {
      tamc= 5;
    }
  }
}