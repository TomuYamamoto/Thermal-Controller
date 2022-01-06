//https://omoroya.com/
//Lesson18 サーミスタで簡易温度計 2つの電子部品の組み合わせ
//https://kurobekoblog.com/pid
//Arduino行うPID制御の簡単なデモ

//  ----------------------------------------------------------------------

#include <LiquidCrystal.h>
#include <math.h>

#define TempPin A0          // アナログ入力ピン0番
#define PWM_Peltier1 5      // PWM出力ピン D5
#define PWM_Peltier2 6      // PWM出力ピン D6
#define Kp 100
#define Ki 1
#define Kd 1
#define target 30           //制御目標

float temp = 0;
uint8_t out[2] = {0};
int aa = 0;
uint8_t aaa[2] = {0};

float calc_temp(int ReadVal);
uint8_t *PID_calc(float temp);

float t[10] = {0};
float k = 0;

//  ----------------------------------------------------------------------

void setup() {
  Serial.begin(115200);           //115200bpsでシリアルポートを開く
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);


  pinMode(A0, INPUT);  //A0番ピンを入力用に設定する
  pinMode(PWM_Peltier1, OUTPUT);   //PWM_Peltier1をPWM出力ピンに設定する
  pinMode(PWM_Peltier2, OUTPUT);   //PWM_Peltier2をPWM出力ピンに設定する

  /*
  analogWrite(PWM_Peltier1, 255);
  analogWrite(PWM_Peltier2, 0);
  */
  
  Serial.print("HELLO WOLRD\n\r");


}

//  ----------------------------------------------------------------------


void loop() {

  int ReadVal = analogRead(TempPin);;   //アナログ入力0でデータ読み取り

  temp = calc_temp(ReadVal);
  //*out = PID_calc(temp);

  for (int i = 0; i < 10; i++) {
    t[i] = t[i + 1];
  }
  t[9] = temp;

  for (int i = 0; i < 9; i++) {
    k += t[i];
  }

  k = k / 10.0;

  aa = Kp * (target - k) + 100;
  if(aa > 0) aa += 50;

  if(aa > 255)  aa = 255;
  if(aa < -255) aa = -255;

  if((target - k) < 0){
    aaa[0] = aa * (-1);
    aaa[1] = 0;
  }
  if((target - k) >= 0){
    aaa[0] = 0;
    aaa[1] = aa;
    aa = 0;
  }
    
  analogWrite(PWM_Peltier1, aaa[0]);
  analogWrite(PWM_Peltier2, aaa[1]);

  

  /*
  if (k < target) {
    analogWrite(PWM_Peltier1, 0);
    analogWrite(PWM_Peltier2, 0);
  }
  */
  /*
    analogWrite(PWM_Peltier1, 50);
    analogWrite(PWM_Peltier2, 0);
    //Serial.print("T:");
  */
  Serial.print(temp); //温度をシリアル出力
  Serial.print("\t");
  Serial.print(k);
  Serial.print("\n");
  //Serial.print("\r");
  delay(100);
}

//  ----------------------------------------------------------------------

float calc_temp(int ReadVal) {

  float B  = 3435;   //B定数の設定
  float T0 = 298.15; //摂氏25度のケルビン温度
  float R0 = 10000;  //摂氏25度のサーミスタ抵抗
  float R1 = 9850;  //分圧測定のための抵抗

  float vout = (float)ReadVal / 1023.0f * 5.0f; //分圧した出力電圧の計算
  float rth = ( 5.0f / vout - 1 ) * R1;         //サーミスタ抵抗計算
  float tempK = 1 / ( 1 / B * log( rth / R0 ) + ( 1 / T0 )); //温度計算（ケルビン）
  float tempC = tempK - 273.15;                 //摂氏に変換
  float tempF = (tempC * 9.0) / 5.0 + 32.0;     //華氏に変換

  return tempC;
}

uint8_t *PID_calc(float temp) {

  float dt = 0;
  float pretime = 0;
  float P = 0;
  float I = 0;
  float D = 0;
  float preP = 0;

  int duty = 0;
  uint8_t out[2] = {0};

  dt = (micros() - pretime) / 1000000.0;
  pretime = micros();
  P = target - temp;
  I += P * dt;
  D = (P - preP) / dt;
  preP = P;

  duty += Kp * P + Kd * D + Ki * I;

  if (duty > 0) {
    out[0] = duty;
    out[1] = 0;
  } else {
    out[0] = 0;
    out[1] = duty;
  }

  return out[2];
}
