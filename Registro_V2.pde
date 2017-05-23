import controlP5.*;

ControlP5 cp5;

DropdownList PlanEstudiosList;
String textRegistre;

void setup() {
  size(1200,600);  
  
  cp5 = new ControlP5(this);  
                
  cp5.addTextfield("Nombre de usuario")//añade un cuadro de texto para realizar el registro
     .setPosition(20,170)
     .setSize(200,40)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
       
  cp5.addBang("clear")//añade un boton para eliminar lo escrito en el cuadro de texto
     .setPosition(240,170)
     .setSize(80,40)
     .setFont(createFont("arial",15))
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;    
   
  
     
  PlanEstudiosList=cp5.addDropdownList("Plan de estudios")
                  .setVisible(false)
                  .setPosition(5,5)
                  ;                  
     
     String[] Listitems = {"Ingenieria de sistemas","Ingenieria mecatronica"};
          
     PlanEstudiosList.addItems(Listitems);
             
}

void draw() {
  background(250);
  
}

public void clear() {
  cp5.get(Textfield.class,"Nombre de usuario").clear();//limpia el campo de usuario cuando se activa el boton clear
}

void controlEvent(ControlEvent theEvent) {//Cuando el evento de registro es terminado
 
  if(theEvent.isAssignableFrom(Textfield.class)) 
  {    
    PlanEstudiosList.setVisible(true);
    cp5.get(Textfield.class,("Nombre de usuario")).setVisible(false);// tanto el cuadro de texto como el boton clear no son dibujados
    cp5.get(Bang.class,("clear")).setVisible(false);
    textRegistre = cp5.get(Textfield.class,"Nombre de usuario").getStringValue();//Se guarda el nombre de usuario en la variable textRegistre
      
}
  
  
}