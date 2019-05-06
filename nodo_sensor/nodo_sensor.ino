/*
Nodo sensor del sistema de control de automático de luces para FaCENA 

Sensores:
  · Presencia (PIR)
  · Luz (LDR)
  · Humedad relativa del ambiente (DHT11)
  · Temperatura (DHT11)

Toma lectura de los sensores cada 1 hora.
Toma lectura de los sensores cuando el sensor PIR detecta movimiento e interrumpe la ejecución normal del programa.

Envia al servidor Node-Red (via MQTT) el estado de cada variable medida por los sensores.

Topicos MQTT en los que se publica:
cdl/presencia 
cdl/luz
cdl/humedad
cdl/temperatura


*/

#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <DHT11.h>

#define sensor_dht11 D1
#define sensor_pir D2
#define sensor_ldr A0

const char* ssid = "Fibertel WiFi027 2.4GHz";
const char* password = "0043591365";
//const char* ssid = "arce";
//const char* password = "rosacarlos1856";
const char* mqtt_server = "sambrana.com.ar";

WiFiClient espClient;
PubSubClient client(espClient);
DHT11 dht11(sensor_dht11);

volatile bool interrupcion = false;
char msg[50];
long t0 = 0;

bool presencia;
int luz;
float temperatura, humedad;

void setup() {

  //Configuracion de entradas
  pinMode(sensor_ldr, INPUT);
  pinMode(sensor_pir, INPUT);
  pinMode(sensor_dht11, INPUT);

  attachInterrupt(digitalPinToInterrupt(sensor_pir),servicio,RISING);
  Serial.begin(115200);                                   //DEBUG
  setup_wifi();
  client.setServer(mqtt_server, 1883);
  client.setCallback(callback);
}

//Rutina de servicio de interrupciones
void servicio(){
  if(millis() > t0 + 1000){
    interrupcion=true;
    Serial.println("INT");                                //DEBUG
    t0 = millis();
  }
}

void setup_wifi() {

  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();                                       //DEBUG
  Serial.print("Connecting to ");                         //DEBUG
  Serial.println(ssid);                                   //DEBUG

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");                                    //DEBUG
  }

  Serial.println("");                                     //DEBUG
  Serial.println("WiFi connected");                       //DEBUG
  Serial.println("IP address: ");                         //DEBUG
  Serial.println(WiFi.localIP());                         //DEBUG
}

void callback(char* topic, byte* payload, unsigned int length) {

  String dato="";
  char c;

  Serial.print("Message arrived [");                      //DEBUG
  Serial.print(topic);                                    //DEBUG 
  Serial.print("] ");                                     //DEBUG 
  for (int i = 0; i < length; i++) {
    //Serial.print((char)payload[i]);
    dato += c;
  }
  Serial.println();                                       //DEBUG
  Serial.print("------json------");Serial.println(dato);  //DEBUG
  dato = "";  


}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");        //DEBUG
    // Attempt to connect
    if (client.connect("ESP8266Client")) {
      Serial.println("connected");                        //DEBUG
      // Once connected, publish an announcement...
      //client.publish("/modulosensor", "hello world");
      // ... and resubscribe
      //client.subscribe("inTopic");
    } else {
      Serial.print("failed, rc=");                        //DEBUG
      Serial.print(client.state());                       //DEBUG
      Serial.println(" try again in 5 seconds");          //DEBUG
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

void leer_sensores() {
  dht11.read(humedad, temperatura);
  //humedad = 70.5;
  //temperatura = 28.0;
  luz = analogRead(sensor_ldr);
  Serial.print("luz: ");Serial.println(luz);
  presencia = digitalRead(sensor_pir);
}

void loop() {

  if (interrupcion) {
    leer_sensores();
    delay(100);
    if (!client.connected()) {
      reconnect();
    }
    client.loop();
    // snprintf (msg, 75, "hello world #%ld");             
    // Serial.print("Publish message: ");                    //DEBUG
    // Serial.println(msg);                                  //DEBUG
    if (presencia){
      client.publish("cdl/presencia", "1");
    }else {
      client.publish("cdl/presencia", "0");
    }
    //String dato = String(luz);
    snprintf (msg, 50, "%4i", luz );
    client.publish("cdl/luz", msg);
    //dato = String(humedad);
    snprintf (msg, 50, "%f", humedad );
    client.publish("cdl/humedad", msg);
    //dato = String(temperatura);
    snprintf (msg, 50, "%f", temperatura );
    client.publish("cdl/temperatura", msg);
    interrupcion = false;
  }
}
