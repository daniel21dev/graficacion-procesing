// created by Daniel Romero 

void setup(){
  size(500,500);
  frameRate(60);
}
int longitud = 100;
void draw(){
  background(#908D8D);
  casa(mouseX-longitud/2,mouseY-longitud/2,longitud);
    if(mousePressed){
      fill(#FF0000);
      text("mousePresssed",0,20);
      longitud++;
  }
}


//cuadrado pero con lineas
/*
line(xo,yo,xo,yo+longitud);
line(xo,yo,xo+longitud,yo);
line(xo+longitud,yo,xo+longitud,yo+longitud);
line(xo,yo+longitud,xo+longitud,yo+longitud);
*/

protected void casa(int xo,int yo,int longitud){
  /* // codigo basura descartado ¬¬
  rect(xo,yo,longitud,longitud);
  line(xo,yo,xo+(longitud/2),yo-(longitud/2));
  line(xo+longitud,yo,xo+(longitud/2),yo-(longitud/2));
  rect(xo+(longitud/5)*2,yo+(longitud/2),xo+(longitud/5),yo+longitud/2); // door*/

  fill(250);
  rect(xo,yo,longitud,longitud);
  fill(#C15656);
  triangle(xo,yo,xo+longitud,yo,xo+longitud/2,yo-(longitud/3));
  fill(#672929);
  rect(xo+(longitud/4)*2,yo+(longitud/2),longitud/4,longitud/2); // door
  fill(#33B5F0);
  rect(xo+(longitud*.1),yo+(longitud/3),longitud/3,longitud/3);
  fill(255);
  text("posicion:("+mouseX+","+mouseY+")",xo-20,yo-20);
  text("tamaño:"+longitud,+xo-20,yo);
} //practica 1 pal lunes, hacer que el mono camine
  //practica dos (miercoles) hacer lo que pasa en los picapiedras 
