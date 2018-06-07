//Jessica Ortega Diaz
//Proyecto 4
import processing.video.*; 
Capture cam; 
int pantalla = 0;
int usuario = 0;
PImage flor, garabato, signo, zigzag, lagrimas;
PFont font;
float b;
float s;
float h;


void setup() { 
  size(640, 420); 
  cam = new Capture(this);
  cam.start(); 
} 
 
void draw() { 
  image(cam, 0, 0); 
 cam.loadPixels();
 
 loadPixels();
 
  switch(pantalla){
       case 0:
       pantallaPrincipal();
    if (usuario == 0){
      if (keyPressed == true){
     switch(key){
       case 'a':
        pantalla = 1;
     }
      }
    }
       break;
       case 1:
     if (pantalla == 1){
        pantallaCam();
         if (usuario == 0){
      if (keyPressed == true){
     switch(key){
       case 'b':
        pantalla = 2;
     }
      }
        
       } }
        break;
        case 2:
     if (pantalla == 2){
       pantallaPrincipal();
       pantalla = 0;
          }
       break;
} 

}

void captureEvent(Capture c) {
  c.read();
}

void pantallaPrincipal(){
background(#A56826);
      
    font = loadFont("CuteNotes-48.vlw");
    textFont(font);
    textSize(50);
    fill(#284C55);
    text("E M O T I O N",50,120);
    font = loadFont("CaviarDreams-Bold-48.vlw");
    textFont(font);
    textSize(15);
    text("I N S T R U C  C I O N E S", 230,220);
    text("En la siguiente pantalla podras ver tu reflejo", 160,240);
    text("Presiona las siguientes teclas dependiendo de como te sientas:", 80, 260);
    text("f = feliz    g = enojado    l = triste    s = confundido    z = miedo", 90,280);
    font = loadFont("CuteNotes-48.vlw");
    textFont(font);
    textSize(20);
    text("P R E S I O N A  'A'", 130,407);
    
     flor = loadImage("flor.png");
     image(flor, 110,300);
     
     garabato = loadImage("garabato.png");
     image(garabato, 200,300);
     
     lagrimas = loadImage("lagrimas.png");
     image(lagrimas, 290,300);
     
     signo = loadImage("signo.png");
     image(signo, 380,300);
     
     zigzag = loadImage("zigzag.png");
     image(zigzag, 470,300);

}

void pantallaCam(){
font = loadFont("CaviarDreams-Bold-48.vlw");
    textFont(font);
    textSize(15);
     fill(#FCFFFF);
     text("Para regresar a la pantalla de inicio presiona 'b'",  130,407);

   
   if(keyPressed == true){
   switch(key){
    case 'f':
        for (int i = 0; i<pixels.length; i++){
        b = brightness(pixels[i]);
        s = saturation(pixels[i]);
        h = hue(pixels[i]);
        if(b > 150) {
          pixels[i] = color(#F6FF05);
         } else {
          pixels[i] = color(#05ECFF);
        }
       }
       updatePixels();
       break;
       case 'g':
        for (int i = 0; i<pixels.length; i++){
        b = brightness(pixels[i]);
        s = saturation(pixels[i]);
        h = hue(pixels[i]);
        if(b > 150) {
          pixels[i] = color(#891212);
         } else {
          pixels[i] = color(#FF4800);
        }
       }
       updatePixels();
       break;
       case 'l':
        for (int i = 0; i<pixels.length; i++){
        b = brightness(pixels[i]);
        s = saturation(pixels[i]);
        h = hue(pixels[i]);
        if(b > 150) {
          pixels[i] = color(#375579);
         } else {
          pixels[i] = color(#133039);
        }
       }
       updatePixels();
       break;
       case 's':
        for (int i = 0; i<pixels.length; i++){
        b = brightness(pixels[i]);
        s = saturation(pixels[i]);
        h = hue(pixels[i]);
        if(b > 150) {
          pixels[i] = color(#24501E);
         } else {
          pixels[i] = color(#5B116C);
        }
       }
       updatePixels();
       break;
       case 'z':
      for (int i = 0; i<pixels.length; i++){
        b = brightness(pixels[i]);
        s = saturation(pixels[i]);
        h = hue(pixels[i]);
        if(b > 130) {
          pixels[i] = color(#7F8985);
         } else {
          pixels[i] = color(#294038);
        }
       }
       updatePixels();
       break;
   }
   
   }
 }
 