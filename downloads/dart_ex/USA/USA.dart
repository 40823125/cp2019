//開啟html的檔案
import 'dart:html';
//開啟數學的檔案
import 'dart:math' as Math;
//設定畫布的形式
CanvasElement canvas;
CanvasRenderingContext2D ctx;
//設定畫布尺寸
int flagw = 250;
int flagh = 206;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');
  drawUSA(ctx);
  //設定按鈕對應的畫布
  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));;
  querySelector("#button").onClick.listen((e) => clearCanvas());
  
}

// Defines a path for any regular polygon with the specified number of sides and radius,
// centered on the provide x and y coordinates.
// optional parameters: startAngle and anticlockwise

polygon(ctx, x, y, radius, sides, startAngle, anticlockwise) {
  // 宣告 output 變數資料型別為 List 且起始值為空數列
  // https://api.dartlang.org/stable/2.7.0/dart-core/List-class.html
  // 因為所設定的 output 為 growable list, 因此必須利用 new List() 或 [] 給定起始值
  List output = [];
  if (sides < 3) return;
  var a = (Math.pi * 2) / sides;
  a = anticlockwise ? -a : a;
  // 儲存目前的繪圖狀態
  // https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D/save
  ctx.save();
  // 以下開始進入新的繪圖座標系統
  // 平移至圓心
  ctx.translate(x, y);
  // 轉至 startAngle, 原始座標系 x 向右為正, y 向下為正, 因此 z 軸指向電腦螢幕為正
  ctx.rotate(startAngle);
  // 將畫筆移動到 x=radius, y=0 的位置
  ctx.moveTo(radius, 0);
  // 此時將繪圖起點座標數列存入 output 數列
  output.add([radius, 0]);
  for (var i = 1; i < sides; i++) {
    ctx.lineTo(radius * Math.cos(a * i), radius * Math.sin(a * i));
    output.add([radius * Math.cos(a * i), radius * Math.sin(a * i)]);
  }
  print(output);
  print("");

}

//美國國旗
void drawUSA(ctx) {
  ctx.clearRect(0, 0, flagw, flagh);
  num x = flagw / 18;
  num y = flagh / 18;
  num star = flagw / 50;
  num d=15.4;
  num b=90;
  num c=10;
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
  //toX = (位置+角度*圖形大小)
  num toX = (x+a) + Math.cos(angle) * star;
  //toY = (位置+角度*圖形大小)
  num toY = (y+b) + Math.sin(angle) * star;
  // 只有 i 為 0 時移動到 toX, toY, 其餘都進行 lineTo
  if (i != 0)
    ctx.lineTo(toX, toY);
  else
    ctx.moveTo(toX, toY);
}
}
}
  else{
  num a=-20;
  for (int i = 0; i < 5; i++) {
  num angle = 120;
  a+=20;
  for (int i = 0; i < 5; i++) {
  angle += 5 * Math.pi * 2 / 12;
  num toX = (x+a+c) + Math.cos(angle) * star;
  num toY = (y+b) + Math.sin(angle) * star;
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
}

//畫布清空
void clearCanvas() {
  ctx.clearRect(0, 0, 1000, 1000);
}