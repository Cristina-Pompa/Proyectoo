FondoUno uno;
FondoDos dos;
FondoTres tres;
FondoCuatro cuatro;
Personajes primero;
Personajes segundo;
Personajes tercero;
Personajes cuarto;
Personajes cinco;
Boton primerBoton;
Boton segundoBoton;
Boton tercerBoton;

int pantalla = 0;
int pbx1= 50;
int pbx2=850;
int pby3= 300;
int vidauno;
int vidados;
int control;
boolean turno;

class Boton{

  float x;
  float y;
  float tamano;
  float c;
  float tamanodos;
  
  Boton(){
    tamano= 60;
    tamanodos=45;
  }
  
  void botonUno(float x_, float y_,float c_){
  x=x_;
  y=y_;
  c=c_;
  noStroke();
  fill(c_);
  triangle(x , y , x+ tamano , y, x + tamano/2, y - tamano);
   
  }
  
  void botonDos (float x_, float y_){
   x=x_;
   y=y_;
   
   noStroke();
   fill(255);
   triangle(x,y, x, y +tamanodos, x+tamanodos, y+tamanodos/2);  
  }
  
  void mover(){
   
if (pantalla==1){
    
    switch(key)
    {
  case'd':
    pbx1 += 200;
    println(pbx1);
      if (pbx1>850)
      {
    pbx1=50;
     }
   break;
 
   case 'a':

   pbx1 -= 200;
   println(pbx1);
     if (pbx1<50)
      {
        pbx1 = 850;
      }
     break;
     }   
   }
 }
 
 void moverDos(){
 
   if (pantalla==1){
   
   switch(key)
   {  
   case 'j' :
   pbx2 -= 200;
   println(pbx2);
   if(pbx2 < 50)
   {
    pbx2 = 850;
   }
   break;
   
   case 'l' :
   pbx2 += 200;
   if (pbx2 >850){
   pbx2 = 50;
      }
     }
   }
 }
 
 
 void movertres(){

   switch(key){
 case '5':
 println(pby3);
  pby3 -=50;
  if(pby3<250)
  pby3=300;
  
  break;
  
  case '7':
  print(pby3);
  pby3 +=50;
  if(pby3>300)
  pby3=250;
  break;
 }
 if (key==ENTER && pby3==250){
       pantalla=2;
       }
        if (key==ENTER && pby3==300){
       pantalla=1;
        }
 }
}
class FondoUno{
  //variables
  float x;
  float y;
  float r;
  float g;
  float b;
  float r_;
  float g_;
  float b_;
  FondoUno(){
     x=350;
     y= 300;
  }
  void fondo(){
     r = random(255);
     g = random(255);
     b = random(255);
  
     r_ = random(255);
     g_  = random(255);
     b_ = random(255);

    //Fondo
    noStroke();
    background(r,g,b);
    //piso
    noStroke();
    fill(r_,g_,b_);
    rect(0,460,1000,140);
  }
     void textouno(){
    //titulo
    textSize(40);
    fill(255);
    text("PELEAS CRITICAS",x,300);
    //subtitulo
   textSize(20);
    fill(255);
    text("presiona ENTER para continuar", x + 20 , y + y/2);
   
  }
}

class FondoDos{
   float x;
   float y;

 FondoDos(){
  
   x=300;
   y=50;
 }
 void fondodos_1(){
   
//parte de arriba
fill(#BDFFFD);
rect(0,0,1000,600);
//parte de abajao
fill(#78FF6F);
rect(0,460,1000,140);
 }
 
 void textouno_2(){
   textSize(40);
   fill(0);
   text("Elige a tu personaje",x,y);
   textSize(35);
   text("cuando ambos hayan elegido personaje presionen 6", 50,y+50);
   textSize(20);
   fill(0);
   text("judador 1, elija su personaje con 'a' y 'd', jugador 2, elija su personaje con 'j' y 'l'", 100,135);
   textSize(20);
   fill(0);
   text("Ben",75,175);
   text("Bob",275,175);
   text("Juani",470,175);
   text("Mary",668,175);
   text("Dan",875,175); 
 } 
}

class FondoTres{
  float dx;

   FondoTres(){}
   void fondotres_1(){
    //cielo
     size(1000,600);
        dx+=0.05;
        background(255);
        for(int i= 0; i<1000; i+=10){
        for(int j = 0; j<1000; j+=10){
         noStroke();
         fill(noise(i*0.01+dx,j*0.01,dx)*255);
         rect(i,j,15,15);
    }
   }
   
   //parte de abajao
     fill(#78FF6F);
     rect(0,460,1000,140);
  }
  
  void textotres(){
  textSize(20);
  fill(255);
  text("jugador uno", 10,40);
  textSize(15);
  text("para alegar presione: 1",10,65);
  text("para un buen argumento presione: 2",10,85);
  
  textSize(20);
  fill(255);
  text("jugador dos", 875,40);
  textSize(15);
  text("para alegar presione: 0",825,65);
  text("para un buen argumento presione: 9",725,85);
  
  }
}
class FondoCuatro{
  float x;
  float y;
  
 FondoCuatro(){
   
   x=300;
   y=275;
 } 
   void fondocuatro_1(){
   //fondo
  background(0);
  //textouno
  textSize(40);
  fill(255);
  text("Volver a intentar",x,y);
  //textodos
  textSize(40);
  fill(255);
  text("Volver al menu principal",x,y+60);
  textSize(40);
  fill(255);
  text("And the Oscar goes to:",x-270,y-150);
  text("Elija que hacer con 5 y 7", x-270, 575);
  }
}
class Personajes{
  //variables
  float x;
  float y;
  float cabeza;
  float torzoan;
  float torzolar;
  float piernaslar;
  float piernasan;
  float ojo;
  float cuelloan;
  float cuellolar;
  float brazoan;
  float brazolar;
  Personajes(){
    control=1;
    vidauno=1000;
    vidados=1000;
    cabeza = 75;
    cuelloan = 40;
    cuellolar = 15;
    torzoan =95;
    torzolar = 110;
    brazoan =20;
    brazolar = 120;
    piernasan = 30;
    piernaslar =120;
  }
  void personajeuno(float x_, float y_){ 
      x =x_;
      y =y_;
    //cabeza
    noStroke();
    fill(#FFBD81);
    rect(x,y,cabeza,cabeza);
    //cuello
    noStroke();
    fill(#FFBD81);
    rect(x+18,y + cabeza,cuelloan, cuellolar);
    //torzo
    noStroke();
    fill(#FFBD81);
    rect(x - 9, y + cabeza + cuellolar, torzoan, torzolar );
    // brazos
    noStroke();
    fill(#FFBD81);
    rect(x - brazoan - 9, y + cabeza + cuellolar + 8 , brazoan, brazolar);
    rect(x + torzoan - 9, y + cabeza + cuellolar + 8 , brazoan, brazolar);
    //piernas
    noStroke();
    fill(#FFBD81);
    rect(x + 3, y +cabeza + cuellolar + torzolar, piernasan, piernaslar );
    rect(x + 45, y +cabeza + cuellolar + torzolar, piernasan, piernaslar );
    //ojos
    noStroke();
    fill(0);
    ellipse(x+20,y+30,4,4);
    ellipse(x+55,y+30,4,4);
    //boca
    ellipse(x+cabeza/2,y+cabeza-20, 10,10);
    //cabello
    noStroke();
    fill(#804D34);
    rect(x,y-10,cabeza,25);
    //arete
    fill(0);
    ellipse(x+cabeza+5,y+cabeza-4,6,6);
    //camiseta
    noStroke();
    fill(0,255,0);
    rect(x - 9, y + cabeza + cuellolar + 10, torzoan, torzolar - 10 );
    rect(x + 4,y + cabeza + cuellolar, 15, 20 );
    rect(x + 19 + cuelloan ,y + cabeza + cuellolar, 15, 20 );
    //pantalon
    noStroke();
    fill(255,0,0);
    rect(x + 3, y +cabeza + cuellolar + torzolar, piernasan, 90 );
    rect(x + 45, y +cabeza + cuellolar + torzolar, piernasan, 90 );
    // zapatos
    noStroke();
    fill(0);
    rect(x + 3, y +cabeza + cuellolar + torzolar + 100, piernasan, 20 );
    rect(x + 45, y +cabeza + cuellolar + torzolar + 100, piernasan, 20 );
    //sombra
     noStroke();
    fill(0,150);
    rect(x-25 , y +cabeza + cuellolar + torzolar + piernaslar,130, 8 );
  }
   void personajedos(float x_, float y_){
      x =x_;
      y =y_;
    //cabeza
    noStroke();
    fill(#FFBD81);
    rect(x,y,cabeza,cabeza);
    //cuello
    noStroke();
    fill(#FFBD81);
    rect(x+18,y + cabeza,cuelloan, cuellolar);
    //torzo
    noStroke();
    fill(#FFBD81);
    rect(x - 9, y + cabeza + cuellolar, torzoan, torzolar );
    // brazos
    noStroke();
    fill(#FFBD81);
    rect(x - brazoan - 9, y + cabeza + cuellolar + 8 , brazoan, brazolar);
    rect(x + torzoan - 9, y + cabeza + cuellolar + 8 , brazoan, brazolar);
    //piernas
    noStroke();
    fill(#FFBD81);
    rect(x + 3, y +cabeza + cuellolar + torzolar, piernasan, piernaslar );
    rect(x + 45, y +cabeza + cuellolar + torzolar, piernasan, piernaslar );
    //ojos
    noStroke();
    fill(0);
    ellipse(x+20,y+30,4,4);
    ellipse(x+55,y+30,4,4);
    //boca
    ellipse(x+cabeza/2,y+cabeza-20, 10,10);
    //cejas
    noStroke();
    fill(0);
    rect(x+10, y+15, 15,4);
    rect(x+50, y+15, 15,4);
    //camiseta
    noStroke();
    fill(45,5,147);
    rect(x - 9, y + cabeza + cuellolar + 10, torzoan, torzolar - 10 );
    rect(x + 4,y + cabeza + cuellolar, 15, 20 );
    rect(x + 19 + cuelloan ,y + cabeza + cuellolar, 15, 20 );
    //pantalon
    noStroke();
    fill(69,142,77);
    rect(x + 3, y +cabeza + cuellolar + torzolar, piernasan, 90 );
    rect(x + 45, y +cabeza + cuellolar + torzolar, piernasan, 90 );
    // zapatos
    noStroke();
    fill(0);
    rect(x + 3, y +cabeza + cuellolar + torzolar + 100, piernasan, 20 );
    rect(x + 45, y +cabeza + cuellolar + torzolar + 100, piernasan, 20 );
    //sombra
     noStroke();
    fill(0,150);
    rect(x-25 , y +cabeza + cuellolar + torzolar + piernaslar,130, 8 );  
  }
  void personajetres(float x_, float y_){
      x =x_;
      y =y_;
    //cabeza
    noStroke();
    fill(#FFBD81);
    rect(x,y,cabeza,cabeza);
    //cuello
    noStroke();
    fill(#FFBD81);
    rect(x+18,y + cabeza,cuelloan, cuellolar);
    //torzo
    noStroke();
    fill(#FFBD81);
    rect(x - 9, y + cabeza + cuellolar, torzoan, torzolar );
    // brazos
    noStroke();
    fill(#FFBD81);
    rect(x - brazoan - 9, y + cabeza + cuellolar + 8 , brazoan, brazolar);
    rect(x + torzoan - 9, y + cabeza + cuellolar + 8 , brazoan, brazolar);
    //piernas
    noStroke();
    fill(#FFBD81);
    rect(x + 3, y +cabeza + cuellolar + torzolar, piernasan, piernaslar );
    rect(x + 45, y +cabeza + cuellolar + torzolar, piernasan, piernaslar );
    //ojos
    noStroke();
    fill(0);
    ellipse(x+20,y+30,4,4);
    ellipse(x+55,y+30,4,4);
    //boca
    ellipse(x+cabeza/2,y+cabeza-20, 10,10);
    //cejas
    noStroke();
    fill(0);
    rect(x+10, y+15, 15,4);
    rect(x+50, y+15, 15,4);
    //cabello
    noStroke();
    fill(#FFBD38);
    rect(x,y-10,cabeza,15);
    //camiseta
    noStroke();
    fill(8,26,25);
    rect(x - 9, y + cabeza + cuellolar + 10, torzoan, torzolar - 10 );
    rect(x + 4,y + cabeza + cuellolar, 15, 20 );
    rect(x + 19 + cuelloan ,y + cabeza + cuellolar, 15, 20 );
    //pantalon
    noStroke();
    fill(15,24,59);
    rect(x + 3, y +cabeza + cuellolar + torzolar, piernasan, 90 );
    rect(x + 45, y +cabeza + cuellolar + torzolar, piernasan, 90 );
    // zapatos
    noStroke();
    fill(0);
    rect(x + 3, y +cabeza + cuellolar + torzolar + 100, piernasan, 20 );
    rect(x + 45, y +cabeza + cuellolar + torzolar + 100, piernasan, 20 );
    //sombra
     noStroke();
    fill(0,150);
    rect(x-25 , y +cabeza + cuellolar + torzolar + piernaslar,130, 8 ); 
  }
    void personajecuatro(float x_, float y_){  
      x =x_;
      y =y_;
    //cabello atras
    noStroke();
    fill(#FF5DCA);
    rect(x-8,y+cabeza-20,cabeza+16,40);
    //cabeza
    noStroke();
    fill(#FFBD81);
    rect(x,y,cabeza,cabeza);
    //cuello
    noStroke();
    fill(#FFBD81);
    rect(x+18,y + cabeza,cuelloan, cuellolar);
    //torzo
    noStroke();
    fill(#FFBD81);
    rect(x - 9, y + cabeza + cuellolar, torzoan, torzolar );
    // brazos
    noStroke();
    fill(#FFBD81);
    rect(x - brazoan - 9, y + cabeza + cuellolar + 8 , brazoan, brazolar);
    rect(x + torzoan - 9, y + cabeza + cuellolar + 8 , brazoan, brazolar);
    //piernas
    noStroke();
    fill(#FFBD81);
    rect(x + 3, y +cabeza + cuellolar + torzolar, piernasan, piernaslar );
    rect(x + 45, y +cabeza + cuellolar + torzolar, piernasan, piernaslar );
    //ojos
    noStroke();
    fill(0);
    ellipse(x+20,y+30,4,4);
    ellipse(x+55,y+30,4,4);
    //boca
    rect(x+25,y+cabeza-20, 25,5);
    //cejas
    noStroke();
    fill(#FF5DCA);
    rect(x+10, y+15, 15,4);
    rect(x+50, y+15, 15,4);
    //cabello
    noStroke();
    fill(#FF5DCA);
    rect(x,y-10,cabeza,15);
    rect(x-8,y-10,12,cabeza+20);
    rect(x+cabeza-4,y-10,12,cabeza +20);
    //camiseta
    noStroke();
    fill(87,156,255);
    rect(x - 9, y + cabeza + cuellolar + 10, torzoan, torzolar - 10 );
    rect(x + 4,y + cabeza + cuellolar, 15, 20 );
    rect(x + 19 + cuelloan ,y + cabeza + cuellolar, 15, 20 );
    //pantalon
    noStroke();
    fill(69,69,69);
    rect(x + 3, y +cabeza + cuellolar + torzolar, piernasan, 90 );
    rect(x + 45, y +cabeza + cuellolar + torzolar, piernasan, 90 );
    // zapatos
    noStroke();
    fill(0);
    rect(x + 3, y +cabeza + cuellolar + torzolar + 100, piernasan, 20 );
    rect(x + 45, y +cabeza + cuellolar + torzolar + 100, piernasan, 20 );
    //sombra
     noStroke();
    fill(0,150);
    rect(x-25 , y +cabeza + cuellolar + torzolar + piernaslar,130, 8 );
  }
   void personajecinco(float x_, float y_){  
      x =x_;
      y =y_;
    //cabeza
    noStroke();
    fill(#FFBD81);
    rect(x,y,cabeza,cabeza);
    //cuello
    noStroke();
    fill(#FFBD81);
    rect(x+18,y + cabeza,cuelloan, cuellolar);
    //torzo
    noStroke();
    fill(#FFBD81);
    rect(x - 9, y + cabeza + cuellolar, torzoan, torzolar );
    // brazos
    noStroke();
    fill(#FFBD81);
    rect(x - brazoan - 9, y + cabeza + cuellolar + 8 , brazoan, brazolar);
    rect(x + torzoan - 9, y + cabeza + cuellolar + 8 , brazoan, brazolar);
    //piernas
    noStroke();
    fill(#FFBD81);
    rect(x + 3, y +cabeza + cuellolar + torzolar, piernasan, piernaslar );
    rect(x + 45, y +cabeza + cuellolar + torzolar, piernasan, piernaslar );
     //ojos
    noStroke();
    fill(0);
    ellipse(x+20,y+30,4,4);
    ellipse(x+55,y+30,4,4);
    //boca
    rect(x+25,y+cabeza-20, 25,5);
    //cejas
    //camiseta
    noStroke();
    fill(255,16,25);
    rect(x - 9, y + cabeza + cuellolar + 10, torzoan, torzolar - 10 );
    rect(x + 4,y + cabeza + cuellolar, 15, 20 );
    rect(x + 19 + cuelloan ,y + cabeza + cuellolar, 15, 20 );
    //pantalon
    noStroke();
    fill(9,254,68);
    rect(x + 3, y +cabeza + cuellolar + torzolar, piernasan, 90 );
    rect(x + 45, y +cabeza + cuellolar + torzolar, piernasan, 90 );
    // zapatos
    noStroke();
    fill(0);
    rect(x + 3, y +cabeza + cuellolar + torzolar + 100, piernasan, 20 );
    rect(x + 45, y +cabeza + cuellolar + torzolar + 100, piernasan, 20 );
    //sombra
     noStroke();
    fill(0,150);
    rect(x-25 , y +cabeza + cuellolar + torzolar + piernaslar,130, 8 );
  }
   void vidaUno(){
    //vida
    noStroke();
    fill(255,0,0);
    rect(0,0, vidauno/10*2, 25);
   }
   void vidaDos(){
     //vida
    noStroke();
    fill(255,0,0);
    rect(1000,0, (-(vidados)/10*2), 25);
   }
  void ataqueUno(){
    switch (key){
      case '1':
      println(vidados);
      vidados-=random(10,50);
      control++;
      break;   
     case '2':
      println(vidados);
      vidados-=random(50,100);
      control++;
      break;
    }
  }
  void ataqueDos(){
    switch (key){
      case '0':
      println(vidauno);
      vidauno-= random(10,50);
      control++;
      break;
      case '9':
      println(vidauno);
      vidauno-= random(50,100);
      control++;
      break;   
    }
  }
}

void setup(){

  size(1000,600);
  //primera pantalla
   uno = new FondoUno();
   uno.fondo();
   uno.textouno();
   
   //segundapantalla
   dos = new FondoDos();
   primero= new Personajes();
   segundo = new Personajes();
   tercero = new Personajes();
   cuarto = new Personajes();
   cinco = new Personajes();
   primerBoton= new Boton();
   segundoBoton= new Boton();
   tercerBoton= new Boton();
    
   //tercera pantalla
   tres = new FondoTres();
   
   //cuarta pantalla
   cuatro = new FondoCuatro(); 
}

void draw(){
  
  //Pantalla 1
  if (pantalla==0){
   uno.textouno();
  if (keyCode== ENTER){
   pantalla =1;
    }   
  }
  //pantalla 2
  if (pantalla == 1) {
    //fondo
   dos.fondodos_1();
   dos.textouno_2();
   //personaje 1
   primero.personajeuno(50,200);
   //personaje 2
   segundo.personajedos(250,200);
   // personaje 3
   tercero.personajetres(450,200);
   //personaje 4
   cuarto.personajecuatro(650,200);
   //personaje 5
   cinco.personajecinco(850,200);
   //botones de selección
   
   primerBoton.botonUno(pbx1,590,255);
   // primerBoton.mover();
    segundoBoton.botonUno (pbx2,590,0);
   // segundoBoton.moverDos();
  
    if (keyCode== '6'){
    pantalla =2 ;
    } 
   }
   //Pantalla 3
   if (pantalla == 2){
   //fondo  
   tres.fondotres_1();
   tres.textotres();
   //personajes, arreglar con un swinoseque que cambien   
   switch (pbx1){ 
    
    case 50:
     primero.personajeuno(250,200);
     primero.vidaUno();
     break;
     
    case 250:
     segundo.personajedos(250,200);
     segundo.vidaUno();
    break; 
 
    case 450:   
    tercero.personajetres(250,200);
    tercero.vidaUno();
    break;
    
    case 650:
    cuarto.personajecuatro(250,200);
    cuarto.vidaUno();     
    break;
    
    case 850:
    cinco.personajecinco(250,200);
    cinco.vidaUno();      
    break;
    
  }
    
  
   switch(pbx2){
   
      case 50:
     primero.personajeuno(650,200);
     primero.vidaDos();    
     break;
     
    case 250:
     segundo.personajedos(650,200);
     segundo.vidaDos();   
    break; 
 
    case 450:   
    tercero.personajetres(650,200);
    tercero.vidaDos();
    break;
    
    case 650:
    cuarto.personajecuatro(650,200);
    cuarto.vidaDos();
    break;
    
    case 850:
    cinco.personajecinco(650,200);
    cinco.vidaDos();
    break; 
   
   }
   
   // arreglar la vida de los personajes y cambiar la condición
   if( vidauno <=0 || vidados <=0)
    {
    pantalla =3;
    } 
   }
   
   //pantalla final
   if (pantalla==3){
   //fondo
   cuatro.fondocuatro_1();
   
   switch (pbx1){
     case 50:
     if (vidauno > 0){
     primero.personajeuno(50,200);
      fill(255);
      text("Jugador uno",500,125);}
      
     break;
     
    case 250:
     if (vidauno > 0){
     segundo.personajedos(50,200);
     fill(255);
     text("Jugador uno",500,125);}
     break;
     
     case 450 :
     if (vidauno > 0){
     tercero.personajetres(50,200);
     fill(255);
     text("Jugador uno",500,125);}
     
     break;
    
     case 650:
     if (vidauno > 0){
     cuarto.personajecuatro(50,200);
     fill(255);
     text("Jugador uno",500,125);}
     break;
    
    case 850:
     if (vidauno > 0){
    cinco.personajecinco(50,200);
  fill(255);
    text("Jugador uno",500,125);}
     break;
   }
   
    switch (pbx2){
      
      case 50:
     if (vidados > 0){
     primero.personajeuno(50,200);
    fill(255);
    text("Jugador dos",500,125);}
     break;
    
    case 250:
     if (vidados > 0){
     segundo.personajedos(50,200);
     fill(255);
     text("Jugador dos",500,125); }
     break;
    
     case 450:
     if (vidados > 0){
     tercero.personajetres(50,200);
   fill(255);
     text("Jugador dos",500,125);}
     break;
     
     case 650:
     if (vidados > 0){
     cuarto.personajecuatro(50,200);fill(255);
     text("Jugador dos",500,125);}
     break;
     
     case 850:
     if (vidados > 0){
     cinco.personajecinco(50,200);
   fill(255);
     text("Jugador dos",500,125);}
     break;
    }
 
   tercerBoton.botonDos(240,pby3);
   }
}

void keyPressed(){
    
  if (pantalla==1){ 
    primerBoton.mover();
    segundoBoton.moverDos();
    
  }
  
  if (pantalla==2)
  {
    
    if(control%2==0){
    turno=true;
    }
    
     if(control%2!=0){
    turno=false;
    }
    
    if(turno==false){
    switch(pbx1){
         case 50:
         primero.ataqueUno();
         break;
         
         case 250:
         segundo.ataqueUno();
         //segundo.vidaUno();
      
         break;
         
         case 450:
         tercero.ataqueUno();
         break;
         
         case 650:
         cuarto.ataqueUno();
         break;
         
         case 850:
         cinco.ataqueUno();
         break;
        
      }

    }

     
   if (turno==true){     
    switch(pbx2){
         case 50:
         primero.ataqueDos();
         break;
         
         case 250:
         segundo.ataqueDos();
         break;
         
         case 450:
         tercero.ataqueDos();
         break;
         
         case 650:
         cuarto.ataqueDos();
         break;
         
         case 850:
         cinco.ataqueDos();
         break;
    }
   }
   
  }
  
  if (pantalla==3)
  
  {
    
   tercerBoton.movertres();
       if (key==ENTER && pby3==250){
       vidauno=1000;
       vidados=1000;
       pantalla=2;
       }
        if (key==ENTER && pby3==300){
       vidauno=1000;
       vidados=1000;
       pbx1=50;
       pbx2=850;
       pantalla=1;
        }
     }  
}
