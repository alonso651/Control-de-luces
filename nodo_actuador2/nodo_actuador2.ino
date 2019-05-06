/*
Nodo actuador del sistema de control de automático de luces para FaCENA 

Sensores:
  · Sensor de detección de 220V - relé1 (luz1)
  · Sensor de detección de 220V - relé2 (luz2)
  · Sensor de detección de 220V - relé3 (ventilador)

Detecta el cambio de estado de los botones fisicos y de los botones del panel web y actualiza el estado de las salidas de los relés y lo envia al servidor Node-red (via MQTT) para actualizar el estado de los botones del panel de control web.

Topicos MQTT en los que se publica:
cdl/rele1in 
cdl/rele2in
cdl/rele3in

Topicos MQTT en los que esta suscripto el nodo:
cdl/rele1out
cdl/rele2out
cdl/rele3out

*/
#include <ESP8266WiFi.h>
#include <PubSubClient.h>

#define pin_rele1 D1
#define pin_rele2 D2
#define pin_rele3 D3
#define pin_llave1 D5
#define pin_llave2 D6
#define pin_llave3 D8



const char* ssid = "Fibertel WiFi027 2.4GHz";
const char* password = "0043591365";
//const char* ssid = "arce";
//const char* password = "rosacarlos1856";
const char* mqtt_server = "sambrana.com.ar";

const char* topico1in = "cdl/rele1in";
const char* topico2in = "cdl/rele2in";
const char* topico3in = "cdl/rele3in";
const char* topico1out = "cdl/rele1out";
const char* topico2out = "cdl/rele2out";
const char* topico3out = "cdl/rele3out";

WiFiClient espClient;
PubSubClient client(espClient);
char msg[50];
//bool rele1in, rele2in, rele3in, rele1out, rele2out, rele3out = false; 
//bool llave1, llave2, llave3;
bool rele1, rele2, rele3;
volatile bool interrupcion1, interrupcion2, interrupcion3 = false;
volatile long tiempo_envio_anterior = 0;

void setup() {

  //Configuracion de entradas
  pinMode(pin_llave1, INPUT);
  pinMode(pin_llave2, INPUT);
  pinMode(pin_llave3, INPUT);
  pinMode(pin_rele1, OUTPUT);
  pinMode(pin_rele2, OUTPUT);
  pinMode(pin_rele3, OUTPUT);

  Serial.begin(115200);                                		//DEBUG
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
  attachInterrupt(digitalPinToInterrupt(pin_llave1),servicio_llave1,CHANGE);
  attachInterrupt(digitalPinToInterrupt(pin_llave2),servicio_llave2,CHANGE);
  attachInterrupt(digitalPinToInterrupt(pin_llave3),servicio_llave3,CHANGE);
  reconnect();
}

//Rutina de servicio de interrupcion llave 1
void servicio_llave1(){
    // if (rele1 == true)
    // {
    // 	rele1 = false;
    // }else {
    // 	rele1 = true;
    // }
    //llave1 = rele1;
    interrupcion1 = true;
    Serial.println("INT1");                                //DEBUG
}

//Rutina de servicio de interrupcion llave 2
void servicio_llave2(){
    // if (rele2 == true)
    // {
    // 	rele2 = false;
    // }else {
    // 	rele2 = true;
    // }
    //llave2 = rele2;    
    interrupcion2 = true;
    Serial.println("INT2");                                //DEBUG
}

//Rutina de servicio de interrupcion llave 3
void servicio_llave3(){
    // if (rele3 == true)
    // {
    // 	rele3 = false;
    // }else {
    // 	rele3 = true;
    // }
    //llave3 = rele3;
    interrupcion3 = true;
    Serial.println("INT3");                                //DEBUG
}

void setup_wifi() {

  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

// void callback(char* topic, byte* payload, unsigned int length) {

//   	char* dato="";
//   	char c;
//   	int topico;
//   	bool estado;

//   	Serial.print("Message arrived [");                       	//DEBUG
//   	Serial.print(topic);                                		//DEBUG
//   	Serial.print("] ");                                		//DEBUG
//   	for (int i = 0; i < length; i++) {
//     	Serial.print((char)payload[i]);
//     	dato += c;
//   	}
//  //  	if (topic == "cdl/rele1out") {
// 	// 	topico = 1;
// 	// }
// 	// if (topic == "cdl/rele2out") {
// 	// 	topico = 2;
// 	// }
// 	// if (topic == "cdl/rele3out") {
// 	// 	topico = 3;
// 	// }
// 	// if (dato == "1") {
// 	// 	estado = true;
// 	// }
// 	// else {
// 	// 	estado = false;
// 	// }

// 	// toggle_rele(topico, estado);

// 	Serial.println();                                		 	//DEBUG
//   	Serial.print("------json------");Serial.println(dato);  	//DEBUG
//   	dato = "";
// }

void callback(char* topic, byte* payload, unsigned int length) {

  String dato="";
  char c;

  Serial.print("Message arrived [");                      //DEBUG
  Serial.print(topic);                                    //DEBUG 
  Serial.print("] ");                                     //DEBUG 
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
    c = (char)payload[i];
    dato += c;
  }
  Serial.println();                                       //DEBUG
  Serial.print("------json------");Serial.println(dato);  //DEBUG

  
  if (strcmp(topic,"cdl/rele1out")==0){
    toggle_rele_web("cdl/rele1out", dato);
  }
 
  if (strcmp(topic,"cdl/rele2out")==0) {
    toggle_rele_web("cdl/rele2out", dato);
  }
 
  if (strcmp(topic,"cdl/rele3out")==0) {
    toggle_rele_web("cdl/rele3out", dato);
  }  

  
  toggle_rele_web(topic, dato);
  dato = "";  
}

/*void toggle_rele(char* topic, char* dato){
	bool estado_nuevo;
	if (dato == "1") {estado_nuevo=true;}
	else if (dato == "0")	{estado_nuevo=false;}
	else {return;}
	int topico;
	if (topic == "cdl/rele1out")
	{
		topico = 1;
	}
	else if (topic == "cdl/rele2out") {
		topico = 2;
	}
	else {
		topico = 3;
	}
	switch (topico) {
		case 1:
			rele1=estado_nuevo;
			break;
		case 2:
			rele2=estado_nuevo;
			break;
		case 3:
			rele3=estado_nuevo;
			break;
	}
}*/
void toggle_rele(int rele){
	
	switch (rele) {
		case 1:
			//Actualiza el estado del rele 1
			if (!rele1) {digitalWrite(pin_rele1, HIGH); rele1=true;}
  			else {digitalWrite(pin_rele1, LOW); rele1=false;}
  			break;
		case 2:
			//Actualiza el estado del rele 2
		  	if (!rele2) {digitalWrite(pin_rele2, HIGH); rele2=true;}
		  	else {digitalWrite(pin_rele2, LOW); rele2=false;}
			break;
		case 3:
			//Actualiza el estado del rele 3
		  	if (!rele3) {digitalWrite(pin_rele3, HIGH); rele3=true;}
		  	else {digitalWrite(pin_rele3, LOW); rele3=false;}
			break;
	}
	//llave3 = rele3;
}

void toggle_rele_web(String topic, String dato){
	bool estado_nuevo;
	if (dato == "1") {estado_nuevo=true;}
	else if (dato == "0") {estado_nuevo=false;}
	else {return;}
	int topico;
  Serial.print("toggle_rele_web: "); 
  Serial.println(dato);Serial.print(" - bool "); 
  Serial.println(estado_nuevo);
	if (topic == "cdl/rele1out")
	{
		topico = 1;
	}
	else if (topic == "cdl/rele2out") {
		topico = 2;
	}
	else {
		topico = 3;
	}
	switch (topico) {
		case 1:
			//Actualiza el estado del rele 1
			rele1=estado_nuevo;
			if (rele1) {digitalWrite(pin_rele1, HIGH);}
  			else {digitalWrite(pin_rele1, LOW);}
			break;
		case 2:
			//Actualiza el estado del rele 2
			rele2=estado_nuevo;
		  	if (rele2) {digitalWrite(pin_rele2, HIGH);}
		  	else {digitalWrite(pin_rele2, LOW);}
			break;
		case 3:
			//Actualiza el estado del rele 3
			rele3=estado_nuevo;
		  	if (rele3) {digitalWrite(pin_rele3, HIGH);}
		  	else {digitalWrite(pin_rele3, LOW);}
			break;
	}
}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");        	//DEBUG
    // Attempt to connect
    if (client.connect("ESP8266Client")) {
    client.subscribe("cdl/rele1out");
    client.subscribe("cdl/rele2out");
    client.subscribe("cdl/rele3out");
    return client.connected();
    }
    else {
      Serial.print("failed, rc=");                          //DEBUG
      Serial.print(client.state());                         //DEBUG
      Serial.println(" try again in 5 seconds");            //DEBUG
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void enviar_estado(bool estado_rele, String topic) {	
	if (!client.connected()) {reconnect();}
	client.loop();
  char topico[12];
  topic.toCharArray(topico,12);
  if (estado_rele) {client.publish(topico, "1");Serial.print("envio: ");Serial.print(topico); Serial.println(estado_rele);}
  else {client.publish(topico, "0");Serial.print("envio: ");Serial.print(topico); Serial.println(estado_rele);}
}

void loop() {
	//Actualiza el estado del rele 1
	// rele1 = digitalRead(pin_rele1);
	// rele2 = digitalRead(pin_rele2);
	// rele3 = digitalRead(pin_rele3);


	//Actualiza el estado de los relés cuando ocurre una interrupción (cambio de estado un botón)
	if (interrupcion1) {toggle_rele(1);interrupcion1 = false;}	
	if (interrupcion2) {toggle_rele(2);interrupcion2 = false;}
	if (interrupcion3) {toggle_rele(3);interrupcion3 = false;}

	//Actualiza el estado de los relés cuando se recibe un mensaje MQTT del servidor (cambio de estado un botón en el panel web)


  	// if (rele1) {digitalWrite(pin_rele1, HIGH); rele1=1;}
  	// else {digitalWrite(pin_rele1, LOW); rele1=0;}
  	// //Actualiza el estado del rele 2
  	// if (rele2) {digitalWrite(pin_rele2, HIGH); rele1=1;}
  	// else {digitalWrite(pin_rele2, LOW); rele2=0;}
   //  //Actualiza el estado del rele 3
  	// if (rele3) {digitalWrite(pin_rele3, HIGH); rele3=1;}
  	// else {digitalWrite(pin_rele3, LOW); rele3=0;}

	//Envia el estado de los reles
    if (millis() > tiempo_envio_anterior + 3000)
    {
      enviar_estado(rele1, "cdl/rele1in");
      enviar_estado(rele2, "cdl/rele2in");
      enviar_estado(rele3, "cdl/rele3in");
      tiempo_envio_anterior = millis();
      Serial.print("Rele1: ");Serial.println(rele1);
      Serial.print("Rele2: ");Serial.println(rele2);
      Serial.print("Rele3: ");Serial.println(rele3);
    }
	  
    
}
