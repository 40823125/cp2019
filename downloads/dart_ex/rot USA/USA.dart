//開啟html的檔案
import 'dart:html';
//開啟數學的檔案
import 'dart:math' as Math;
//開啟時間的檔案
import 'dart:async';

//設定畫布的形式
CanvasElement canvas;
CanvasRenderingContext2D ctx;
//設定畫布尺寸
int flagw = 250;
int flagh = 206;
Timer timer;
num rotAngle = 0;
num incAngle = 0;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');
  //設定按鈕對應旋轉狀況
  querySelector("#stopROC").onClick.listen((e) => stopROC());
  querySelector("#rotROC").onClick.listen((e) => rotROC());
  // 每 1 ms 重新繪製轉動 incAngle 的 drawROC 國旗
  timer = Timer.periodic(const Duration(milliseconds: 1), (t) => drawUSA(ctx));
  
}

void stopROC() {
  // 星星旋轉角度增量值為0
  incAngle = 0;
}

void rotROC() {
  // 星星旋轉角度增量值為1
  incAngle = 1;
}

//美國國旗
void drawUSA(ctx) {
  ctx.clearRect(0, 0, flagw, flagh);
  num x = flagw / 18;
  num y = flagh / 18;
  num d=15.4;
  num b=90;
  num star = flagw / 50;
 //清空畫布
  ctx.clearRect(0, 0, flagw, flagh);
  //顏色設定
  ctx.fillStyle = 'rgb(255, 0, 0)';
  //畫的位置
  ctx.fillRect(0, 0, flagw, flagh);
for(int i=0;i<8;i++){
  //只有i不等於0時執行
  if(i!=0){ 
  d+=31;
  //顏色設定
  ctx.fillStyle = 'rgb(255, 255, 255)';
  //畫的位置 
  ctx.fillRect(0, d, flagw, flagh / 13);
}
  else{
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, d, flagw, flagh / 13);
}
}
  ctx.fillRect(0, 200.4, flagw, flagh / 13);
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flagw / 2, flagh / 1.9);
  // 畫50顆星星
  ctx.beginPath();
  for (int i = 0; i < 9; i++) { 
  //b=b-10
  b-=10;
  //只有i被2整除時執行
  if(i %2==0){
  num a=-20;
  //重複執行直到i=6時停止
  for (int i = 0; i < 6; i++) {
  num angle = 120;
  a+=20;
  //重複執行直到i=5時停止
  for (int i = 0; i < 5; i++) {
  //角度=angle+(5 * Math.pi * 2 / 12)
  angle += 5 * Math.pi * 2 / 12;
  //toX = (位置+(角度+角度增量值)*圖形大小)
  num toX = (x+a) + Math.cos(angle+ rotAngle) * star;
  //toY = (位置+(角度+角度增量值)*圖形大小)
  num toY = (y+b) + Math.sin(angle+ rotAngle) * star;
  // 只有 i 為 0 時移動到 toX, toY, 其餘都進行 lineTo
  if (i != 0)
    ctx.lineTo(toX, toY);
  else
    ctx.moveTo(toX, toY);
}
}
}
  else{
  num a=-10;
  for (int i = 0; i < 5; i++) {
  num angle = 120;
  a+=20;
  for (int i = 0; i < 5; i++) {
  angle += 5 * Math.pi * 2 / 12;
  num toX = (x+a) + Math.cos(angle+ rotAngle) * star;
  num toY = (y+b) + Math.sin(angle+ rotAngle) * star;
  // 只有 i 為 0 時移動到 toX, toY, 其餘都進行 lineTo
  if (i != 0)
    ctx.lineTo(toX, toY);
  else
    ctx.moveTo(toX, toY);
}
}
}
}
  ctx.closePath();
  // 將填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
  // 旋轉角度以徑度表示
  rotAngle += incAngle * Math.pi / 180;
}