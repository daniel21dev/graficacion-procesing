PShape s;

void setup(){
  size(500,500,P3D);
  background(0);
  frameRate(15);
}

float rot =.7;

void draw(){
  background(120);
  fill(255);
  if(mousePressed){
    text("es lento pero funciona \n es un objeto 3d real",350,100);
  }else{text("da click para girar",350,100);}
  translate(300,50);
  scale(1.5);
  ortogonal();
  

  

  for(int i=0;i<30;i+=10){
    for(int j=0;j<30;j+=10){
        for(int k=0;k<30;k+=10){
        pushMatrix();
        //translate(50,0);
          rotateX(.7);
          rotateY(rot);
        translate(i,j,k);
          cubo(0,0,10,0,10,10,0,10,10);
        popMatrix();
        }
    }
  }
  
  if(mousePressed){
    rot+=.055;
  }
  
  translate(-100,100);
  vista1();
  pushMatrix();
  translate(-40,75);
  vista3();
  popMatrix();
  translate(-40,0);
  vista2();
  pushMatrix();
  translate(-40,75);
  vista4();
  popMatrix();
  
}

void casas(float x1,float y1,float x2,float y2,float x3,float y3,float x4,float y4,float z){

    s = createShape();
    s.beginShape();
    
    s.stroke(0);
    
    s.vertex(x1,y1,z); //down left
    s.vertex(x2,y2,z); // up left
    s.vertex(x3,y3,z); // up right
    s.vertex(x4,y4,z); // down right

    s.endShape(CLOSE);
    shape(s,0,0);
}

void cubo(float x1,float y1,float x2,float y2,float x3,float y3,float x4,float y4,float z){
  fill(#ECFA35);
  casas(x1,y1,x2,y2,x3,y3,x4,y4,0);
  fill(255);
  casas(x1,y1,x2,y2,x3,y3,x4,y4,z);
  pushMatrix();
    rotateY(4.70);
    fill(0,0,255);
    casas(x1,y1,x2,y2,x3,y3,x4,y4,0);
  popMatrix();
  pushMatrix();
    rotateY(4.70);
    fill(255,0,0);
    casas(x1,y1,x2,y2,x3,y3,x4,y4,z*-1);
  popMatrix();
   pushMatrix();
    rotateX(4.70);
    rotateZ(4.70);
    fill(0,255,0);
    casas(x1,y1,x2,y2,x3,y3,x4,y4,z);
  popMatrix();
  pushMatrix();
    rotateX(4.70);
    rotateZ(4.70);
    fill(#FF7300);
    casas(x1,y1,x2,y2,x3,y3,x4,y4,0);
  popMatrix();
  
}

void ortogonal(){
    for(int i=0;i<30;i+=10){
    for(int j=0;j<30;j+=10){
        pushMatrix();
          translate(-100,0);
          translate(i,j);
            fill(255);
            casas(0,0,10,0,10,10,0,10,0);
          translate(0,-30);
            fill(255,0,0);
            casas(0,0,10,0,10,10,0,10,0);
          translate(0,60);
            fill(0,255,0);
            casas(0,0,10,0,10,10,0,10,0);
          translate(-30,-30);
            fill(0,0,255);
            casas(0,0,10,0,10,10,0,10,0);
          translate(60,0);
            fill(#FF7300);
            casas(0,0,10,0,10,10,0,10,0);
          translate(-90,0);
            fill(#ECFA35);
            casas(0,0,10,0,10,10,0,10,0);
        popMatrix();

    }
  }
  
}

void vista1(){
  
    for(int i=0;i<30;i+=10){
    for(int j=0;j<30;j+=10){
        pushMatrix();
        translate(i,j);
        fill(255);
          casas(0,0,10,0,10,10,0,10,0);
        popMatrix();       
    }
  }
  fill(255,0,0);
  casas(0,0,15,-15,45,-15,30,0,0);
  fill(#FF7300);
  casas(30,0,45,-15,45,15,30,30,0);
  
  line(10,0,25,-15);
  line(20,0,35,-15);

  line(5,-5,35,-5);
  line(10,-10,40,-10);
  
  line(30,10,45,-5);
  line(30,20,45,5);
  
  line(35,-5,35,25);
  line(40,-10,40,20);

  

}
void vista2(){
    rotateY(3);
    for(int i=0;i<30;i+=10){
    for(int j=0;j<30;j+=10){
        pushMatrix();
        translate(i,j);
        fill(255);
          casas(0,0,10,0,10,10,0,10,0);
        popMatrix();       
    }
  }
  fill(255,0,0);
  casas(0,0,15,-15,45,-15,30,0,0);
  fill(0,0,255);
  casas(30,0,45,-15,45,15,30,30,0);
  
  line(10,0,25,-15);
  line(20,0,35,-15);

  line(5,-5,35,-5);
  line(10,-10,40,-10);
  
  line(30,10,45,-5);
  line(30,20,45,5);
  
  line(35,-5,35,25);
  line(40,-10,40,20);

  

}
void vista3(){
    rotateZ(3.2);
    for(int i=0;i<30;i+=10){
    for(int j=0;j<30;j+=10){
        pushMatrix();
        translate(i,j);
        fill(255);
          casas(0,0,10,0,10,10,0,10,0);
        popMatrix();       
    }
  }
  fill(0,255,0);
  casas(0,0,15,-15,45,-15,30,0,0);
  fill(0,0,255);
  casas(30,0,45,-15,45,15,30,30,0);
  
  line(10,0,25,-15);
  line(20,0,35,-15);

  line(5,-5,35,-5);
  line(10,-10,40,-10);
  
  line(30,10,45,-5);
  line(30,20,45,5);
  
  line(35,-5,35,25);
  line(40,-10,40,20);

  

}
void vista4(){
    rotateZ(3.2);
    for(int i=0;i<30;i+=10){
    for(int j=0;j<30;j+=10){
        pushMatrix();
        translate(i,j);
        fill(255);
          casas(0,0,10,0,10,10,0,10,0);
        popMatrix();       
    }
  }
  fill(0,255,0);
  casas(0,0,15,-15,45,-15,30,0,0);
  fill(#FF7300);
  casas(30,0,45,-15,45,15,30,30,0);
  
  line(10,0,25,-15);
  line(20,0,35,-15);

  line(5,-5,35,-5);
  line(10,-10,40,-10);
  
  line(30,10,45,-5);
  line(30,20,45,5);
  
  line(35,-5,35,25);
  line(40,-10,40,20);

  

}
