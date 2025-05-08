#include <WiFi.h>
#include <HTTPClient.h>
#include <ArduinoJson.h>

const char* ssid = "Wokwi-GUEST";
const char* password = "";

const char* contentfulURL = "https://cdn.contentful.com/spaces/5g095b2j4szw/environments/master/entries?content_type=device&select=fields.pin,fields.state";
const char* accessToken = "Bearer tgvAVXWybtVMePRKCLWcmDb-ux_ikZPDkuQiUH8zq8I";

//interrupts //micro controlador com 2 pinos
//threads //Orientação do processador, para processar 2 coisas ao mesmo tempo
//virtual // mais dinamica para usar

unsigned long timerScan = 0;
#define SCAN_DELAY 3000

void setup()
{
    Serial.begin(115200);
    WiFi.begin(ssid,password);
    Serial.println("Starting Wifi Connection...");
    while(WiFi.status() != WL_CONNECTED){
        delay(100);
        Serial.print("*");
    }
    Serial.println("Sucessfully Connected! with: ");
    Serial.println(ssid);
}
void loop()
{
    if ((millis() - timerScan) >= SCAN_DELAY)
     Serial.println("\n **** SCAN START **** \n");
     scanRoutine();
     timerScan = millis();
     Serial.println("\n **** SCAN END **** \n");
}
void scanRoutine(){
    HTTPClient http;
    http.begin(contentfulURL);
    http.addHeader("Authorization", accessToken);

    int httpResponseStatus = http.GET();

    if(httpResponseStatus > 0){
        String response = http.getString(); //resposta do backend

        const int responseSize = response.length() * 1.1;
        DynamicJsonDocument json(responseSize);
        deserializeJson(json, response);

        JsonArray items = json["items"];

        for(JsonObject item : items){ //int i=0; i<sizeof(items);i++
            int pin = item["fields"]["pin"] | -1;
            bool state = item["fields"]["state"] | false;

            if (pin>=0){
                pinMode(pin, OUTPUT);
                digitalWrite(pin, state);
                Serial.printf("PIN: %d, STATE: %s \n", pin, state ? "ON":"OFF");
            }
        }
    }
    else{
        Serial.printf("Error when calling backend: %d \n",httpResponseStatus);
    }
    http.end();
}

