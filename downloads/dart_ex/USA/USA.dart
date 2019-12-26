import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 579;
int flag_h = 305;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');

  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}

double a = 20*2;
double b = 20*4;
double c=  20*6;
double d=  20*8;
double e=  20*10;
double f = 18*2;
double g =181818*4;
double h= 1818*6;
double i= 18*8;

void drawUSA(ctx) {
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(191,10,48)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 23.4, flag_w / 1, 23.4);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 23.4 * 3, flag_w / 1, 23.4);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 23.4 * 5, flag_w / 1, 23.4);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 23.4 * 7, flag_w / 1, 23.4);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 23.4 * 9, flag_w / 1, 23.4);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 23.4 * 11, flag_w / 1, 23.4);
  ctx.fillStyle = 'rgb(0,40,104)';
  ctx.fillRect(0, 0, 231.53, 164.12);

  ctx.beginPath();
  ctx.moveTo(10.37,13.51);
  ctx.lineTo(17.19,13.51);
  ctx.lineTo(19.29,7.02);
  ctx.lineTo(21.4,13.51);
  ctx.lineTo(28.22,13.51);
  ctx.lineTo(22.7,17.52);
  ctx.lineTo(24.81,24.01);
  ctx.lineTo(19.29,20);
  ctx.lineTo(13.78,24.01);
  ctx.lineTo(15.88,17.52);
  ctx.lineTo(10.37,13.51);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+a ,13.51);
  ctx.lineTo(17.19+a,13.51);
  ctx.lineTo(19.29+a,7.02);
  ctx.lineTo(21.4+a,13.51);
  ctx.lineTo(28.22+a,13.51);
  ctx.lineTo(22.7+a,17.52);
  ctx.lineTo(24.81+a,24.01);
  ctx.lineTo(19.29+a,20);
  ctx.lineTo(13.78+a,24.01);
  ctx.lineTo(15.88+a,17.52);
  ctx.lineTo(10.37+a,13.51);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+b ,13.51);
  ctx.lineTo(17.19+b,13.51);
  ctx.lineTo(19.29+b,7.02);
  ctx.lineTo(21.4+b,13.51);
  ctx.lineTo(28.22+b,13.51);
  ctx.lineTo(22.7+b,17.52);
  ctx.lineTo(24.81+b,24.01);
  ctx.lineTo(19.29+b,20);
  ctx.lineTo(13.78+b,24.01);
  ctx.lineTo(15.88+b,17.52);
  ctx.lineTo(10.37+b,13.51);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+c ,13.51);
  ctx.lineTo(17.19+c,13.51);
  ctx.lineTo(19.29+c,7.02);
  ctx.lineTo(21.4+c,13.51);
  ctx.lineTo(28.22+c,13.51);
  ctx.lineTo(22.7+c,17.52);
  ctx.lineTo(24.81+c,24.01);
  ctx.lineTo(19.29+c,20);
  ctx.lineTo(13.78+c,24.01);
  ctx.lineTo(15.88+c,17.52);
  ctx.lineTo(10.37+c,13.51);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+d ,13.51);
  ctx.lineTo(17.19+d,13.51);
  ctx.lineTo(19.29+d,7.02);
  ctx.lineTo(21.4+d,13.51);
  ctx.lineTo(28.22+d,13.51);
  ctx.lineTo(22.7+d,17.52);
  ctx.lineTo(24.81+d,24.01);
  ctx.lineTo(19.29+d,20);
  ctx.lineTo(13.78+d,24.01);
  ctx.lineTo(15.88+d,17.52);
  ctx.lineTo(10.37+d,13.51);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+e ,13.51);
  ctx.lineTo(17.19+e,13.51);
  ctx.lineTo(19.29+e,7.02);
  ctx.lineTo(21.4+e,13.51);
  ctx.lineTo(28.22+e,13.51);
  ctx.lineTo(22.7+e,17.52);
  ctx.lineTo(24.81+e,24.01);
  ctx.lineTo(19.29+e,20);
  ctx.lineTo(13.78+e,24.01);
  ctx.lineTo(15.88+e,17.52);
  ctx.lineTo(10.37+e,13.51);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37,13.51+f);
  ctx.lineTo(17.19,13.51+f);
  ctx.lineTo(19.29,7.02+f);
  ctx.lineTo(21.4,13.51+f);
  ctx.lineTo(28.22,13.51+f);
  ctx.lineTo(22.7,17.52+f);
  ctx.lineTo(24.81,24.01+f);
  ctx.lineTo(19.29,20+f);
  ctx.lineTo(13.78,24.01+f);
  ctx.lineTo(15.88,17.52+f);
  ctx.lineTo(10.37,13.51+f);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+a ,13.51+f);
  ctx.lineTo(17.19+a,13.51+f);
  ctx.lineTo(19.29+a,7.02+f);
  ctx.lineTo(21.4+a,13.51+f);
  ctx.lineTo(28.22+a,13.51+f);
  ctx.lineTo(22.7+a,17.52+f);
  ctx.lineTo(24.81+a,24.01+f);
  ctx.lineTo(19.29+a,20+f);
  ctx.lineTo(13.78+a,24.01+f);
  ctx.lineTo(15.88+a,17.52+f);
  ctx.lineTo(10.37+a,13.51+f);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+b ,13.51+f);
  ctx.lineTo(17.19+b,13.51+f);
  ctx.lineTo(19.29+b,7.02+f);
  ctx.lineTo(21.4+b,13.51+f);
  ctx.lineTo(28.22+b,13.51+f);
  ctx.lineTo(22.7+b,17.52+f);
  ctx.lineTo(24.81+b,24.01+f);
  ctx.lineTo(19.29+b,20+f);
  ctx.lineTo(13.78+b,24.01+f);
  ctx.lineTo(15.88+b,17.52+f);
  ctx.lineTo(10.37+b,13.51+f);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+c ,13.51+f);
  ctx.lineTo(17.19+c,13.51+f);
  ctx.lineTo(19.29+c,7.02+f);
  ctx.lineTo(21.4+c,13.51+f);
  ctx.lineTo(28.22+c,13.51+f);
  ctx.lineTo(22.7+c,17.52+f);
  ctx.lineTo(24.81+c,24.01+f);
  ctx.lineTo(19.29+c,20+f);
  ctx.lineTo(13.78+c,24.01+f);
  ctx.lineTo(15.88+c,17.52+f);
  ctx.lineTo(10.37+c,13.51+f);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+d ,13.51+f);
  ctx.lineTo(17.19+d,13.51+f);
  ctx.lineTo(19.29+d,7.0+f);
  ctx.lineTo(21.4+d,13.51+f);
  ctx.lineTo(28.22+d,13.51+f);
  ctx.lineTo(22.7+d,17.52+f);
  ctx.lineTo(24.81+d,24.01+f);
  ctx.lineTo(19.29+d,20+f);
  ctx.lineTo(13.78+d,24.01+f);
  ctx.lineTo(15.88+d,17.52+f);
  ctx.lineTo(10.37+d,13.51+f);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+b ,13.51+f);
  ctx.lineTo(17.19+e,13.51+f);
  ctx.lineTo(19.29+e,7.02+f);
  ctx.lineTo(21.4+e,13.51+f);
  ctx.lineTo(28.22+e,13.51+f);
  ctx.lineTo(22.7+e,17.52+f);
  ctx.lineTo(24.81+e,24.01+f);
  ctx.lineTo(19.29+e,20+f);
  ctx.lineTo(13.78+e,24.01+f);
  ctx.lineTo(15.88+e,17.52+f);
  ctx.lineTo(10.37+e,13.51+f);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37,13.51+g);
  ctx.lineTo(17.19,13.51+g);
  ctx.lineTo(19.29,7.02+g);
  ctx.lineTo(21.4,13.51+g);
  ctx.lineTo(28.22,13.51+g);
  ctx.lineTo(22.7,17.52+g);
  ctx.lineTo(24.81,24.01+g);
  ctx.lineTo(19.29,20+g);
  ctx.lineTo(13.78,24.01+g);
  ctx.lineTo(15.88,17.52+g);
  ctx.lineTo(10.37,13.51+g);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+a ,13.51+g);
  ctx.lineTo(17.19+a,13.51+g);
  ctx.lineTo(19.29+a,7.02+g);
  ctx.lineTo(21.4+a,13.51+g);
  ctx.lineTo(28.22+a,13.51+g);
  ctx.lineTo(22.7+a,17.52+g);
  ctx.lineTo(24.81+a,24.01+g);
  ctx.lineTo(19.29+a,20+g);
  ctx.lineTo(13.78+a,24.01+g);
  ctx.lineTo(15.88+a,17.52+g);
  ctx.lineTo(10.37+a,13.51+g);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+b ,13.51+g);
  ctx.lineTo(17.19+b,13.51+g);
  ctx.lineTo(19.29+b,7.02+g);
  ctx.lineTo(21.4+b,13.51+g);
  ctx.lineTo(28.22+b,13.51+g);
  ctx.lineTo(22.7+b,17.52+g);
  ctx.lineTo(24.81+b,24.01+g);
  ctx.lineTo(19.29+b,20+g);
  ctx.lineTo(13.78+b,24.01+g);
  ctx.lineTo(15.88+b,17.52+g);
  ctx.lineTo(10.37+b,13.51+g);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+c ,13.51+g);
  ctx.lineTo(17.19+c,13.51+g);
  ctx.lineTo(19.29+c,7.02+g);
  ctx.lineTo(21.4+c,13.51+g);
  ctx.lineTo(28.22+c,13.51+g);
  ctx.lineTo(22.7+c,17.52+g);
  ctx.lineTo(24.81+c,24.01+g);
  ctx.lineTo(19.29+c,20+g);
  ctx.lineTo(13.78+c,24.01+g);
  ctx.lineTo(15.88+c,17.52+g);
  ctx.lineTo(10.37+c,13.51+g);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+d ,13.51+g);
  ctx.lineTo(17.19+d,13.51+g);
  ctx.lineTo(19.29+d,7.02+g);
  ctx.lineTo(21.4+d,13.51+g);
  ctx.lineTo(28.22+d,13.51+g);
  ctx.lineTo(22.7+d,17.52+g);
  ctx.lineTo(24.81+d,24.01+g);
  ctx.lineTo(19.29+d,20+g);
  ctx.lineTo(13.78+d,24.01+g);
  ctx.lineTo(15.88+d,17.52+g);
  ctx.lineTo(10.37+d,13.51+g);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+e ,13.51+g);
  ctx.lineTo(17.19+e,13.51+g);
  ctx.lineTo(19.29+e,7.02+g);
  ctx.lineTo(21.4+e,13.51+g);
  ctx.lineTo(28.22+e,13.51+g);
  ctx.lineTo(22.7+e,17.52+g);
  ctx.lineTo(24.81+e,24.01+g);
  ctx.lineTo(19.29+e,20+g);
  ctx.lineTo(13.78+e,24.01+g);
  ctx.lineTo(15.88+e,17.52+g);
  ctx.lineTo(10.37+e,13.51+g);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37,13.51+h);
  ctx.lineTo(17.19,13.51+h);
  ctx.lineTo(19.29,7.02+h);
  ctx.lineTo(21.4,13.51+h);
  ctx.lineTo(28.22,13.51+h);
  ctx.lineTo(22.7,17.52+h);
  ctx.lineTo(24.81,24.01+h);
  ctx.lineTo(19.29,20+h);
  ctx.lineTo(13.78,24.01+h);
  ctx.lineTo(15.88,17.52+h);
  ctx.lineTo(10.37,13.51+h);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+a ,13.51+h);
  ctx.lineTo(17.19+a,13.51+h);
  ctx.lineTo(19.29+a,7.02+h);
  ctx.lineTo(21.4+a,13.51+h);
  ctx.lineTo(28.22+a,13.51+h);
  ctx.lineTo(22.7+a,17.52+h);
  ctx.lineTo(24.81+a,24.01+h);
  ctx.lineTo(19.29+a,20+h);
  ctx.lineTo(13.78+a,24.01+h);
  ctx.lineTo(15.88+a,17.52+h);
  ctx.lineTo(10.37+a,13.51+h);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+b ,13.51+h);
  ctx.lineTo(17.19+b,13.51+h);
  ctx.lineTo(19.29+b,7.02+h);
  ctx.lineTo(21.4+b,13.51+h);
  ctx.lineTo(28.22+b,13.51+h);
  ctx.lineTo(22.7+b,17.52+h);
  ctx.lineTo(24.81+b,24.01+h);
  ctx.lineTo(19.29+b,20+h);
  ctx.lineTo(13.78+b,24.01+h);
  ctx.lineTo(15.88+b,17.52+h);
  ctx.lineTo(10.37+b,13.51+h);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+c ,13.51+h);
  ctx.lineTo(17.19+c,13.51+h);
  ctx.lineTo(19.29+c,7.02+h);
  ctx.lineTo(21.4+c,13.51+h);
  ctx.lineTo(28.22+c,13.51+h);
  ctx.lineTo(22.7+c,17.52+h);
  ctx.lineTo(24.81+c,24.01+h);
  ctx.lineTo(19.29+c,20+h);
  ctx.lineTo(13.78+c,24.01+h);
  ctx.lineTo(15.88+c,17.52+h);
  ctx.lineTo(10.37+c,13.51+h);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+d ,13.51+h);
  ctx.lineTo(17.19+d,13.51+h);
  ctx.lineTo(19.29+d,7.02+h);
  ctx.lineTo(21.4+d,13.51+h);
  ctx.lineTo(28.22+d,13.51+h);
  ctx.lineTo(22.7+d,17.52+h);
  ctx.lineTo(24.81+d,24.01+h);
  ctx.lineTo(19.29+d,20+h);
  ctx.lineTo(13.78+d,24.01+h);
  ctx.lineTo(15.88+d,17.52+h);
  ctx.lineTo(10.37+d,13.51+h);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+e ,13.51+h);
  ctx.lineTo(17.19+e,13.51+h);
  ctx.lineTo(19.29+e,7.02+h);
  ctx.lineTo(21.4+e,13.51+h);
  ctx.lineTo(28.22+e,13.51+h);
  ctx.lineTo(22.7+e,17.52+h);
  ctx.lineTo(24.81+e,24.01+h);
  ctx.lineTo(19.29+e,20+h);
  ctx.lineTo(13.78+e,24.01+h);
  ctx.lineTo(15.88+e,17.52+h);
  ctx.lineTo(10.37+e,13.51+h);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37,13.51+i);
  ctx.lineTo(17.19,13.51+i);
  ctx.lineTo(19.29,7.02+i);
  ctx.lineTo(21.4,13.51+i);
  ctx.lineTo(28.22,13.51+i);
  ctx.lineTo(22.7,17.52+i);
  ctx.lineTo(24.81,24.01+i);
  ctx.lineTo(19.29,20+i);
  ctx.lineTo(13.78,24.01+i);
  ctx.lineTo(15.88,17.52+i);
  ctx.lineTo(10.37,13.51+i);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+a ,13.51+i);
  ctx.lineTo(17.19+a,13.51+i);
  ctx.lineTo(19.29+a,7.02+i);
  ctx.lineTo(21.4+a,13.51+i);
  ctx.lineTo(28.22+a,13.51+i);
  ctx.lineTo(22.7+a,17.52+i);
  ctx.lineTo(24.81+a,24.01+i);
  ctx.lineTo(19.29+a,20+i);
  ctx.lineTo(13.78+a,24.01+i);
  ctx.lineTo(15.88+a,17.52+i);
  ctx.lineTo(10.37+a,13.51+i);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+b ,13.51+i);
  ctx.lineTo(17.19+b,13.51+i);
  ctx.lineTo(19.29+b,7.02+i);
  ctx.lineTo(21.4+b,13.51+i);
  ctx.lineTo(28.22+b,13.51+i);
  ctx.lineTo(22.7+b,17.52+i);
  ctx.lineTo(24.81+b,24.01+i);
  ctx.lineTo(19.29+b,20+i);
  ctx.lineTo(13.78+b,24.01+i);
  ctx.lineTo(15.88+b,17.52+i);
  ctx.lineTo(10.37+b,13.51+i);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+c ,13.51+i);
  ctx.lineTo(17.19+c,13.51+i);
  ctx.lineTo(19.29+c,7.02+i);
  ctx.lineTo(21.4+c,13.51+i);
  ctx.lineTo(28.22+c,13.51+i);
  ctx.lineTo(22.7+c,17.52+i);
  ctx.lineTo(24.81+c,24.01+i);
  ctx.lineTo(19.29+c,20+i);
  ctx.lineTo(13.78+c,24.01+i);
  ctx.lineTo(15.88+c,17.52+i);
  ctx.lineTo(10.37+c,13.51+i);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+d ,13.51+i);
  ctx.lineTo(17.19+d,13.51+i);
  ctx.lineTo(19.29+d,7.02+i);
  ctx.lineTo(21.4+d,13.51+i);
  ctx.lineTo(28.22+d,13.51+i);
  ctx.lineTo(22.7+d,17.52+i);
  ctx.lineTo(24.81+d,24.01+i);
  ctx.lineTo(19.29+d,20+i);
  ctx.lineTo(13.78+d,24.01+i);
  ctx.lineTo(15.88+d,17.52+i);
  ctx.lineTo(10.37+d,13.51+i);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(10.37+e ,13.51+i);
  ctx.lineTo(17.19+e,13.51+i);
  ctx.lineTo(19.29+e,7.02+i);
  ctx.lineTo(21.4+e,13.51+i);
  ctx.lineTo(28.22+e,13.51+i);
  ctx.lineTo(22.7+e,17.52+i);
  ctx.lineTo(24.81+e,24.01+i);
  ctx.lineTo(19.29+e,20+i);
  ctx.lineTo(13.78+e,24.01+i);
  ctx.lineTo(15.88+e,17.52+i);
  ctx.lineTo(10.37+e,13.51+i);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66,29.92);
  ctx.lineTo(36.48,29.92);
  ctx.lineTo(a,23.44);
  ctx.lineTo(40.7,29.92);
  ctx.lineTo(47.52,29.92);
  ctx.lineTo(42,33.93);
  ctx.lineTo(44.11,40.42);
  ctx.lineTo(38.59,36.41);
  ctx.lineTo(33.07,40.42);
  ctx.lineTo(35.18,33.93);
  ctx.lineTo(29.66,29.92);
  ctx.fillStyle = '#fff';
  ctx.fill();
ctx.moveTo(29.66+a,29.92);
  ctx.lineTo(36.48+a,29.92);
  ctx.lineTo(a+a,23.44);
  ctx.lineTo(40.7+a,29.92);
  ctx.lineTo(47.52+a,29.92);
  ctx.lineTo(42+a,33.93);
  ctx.lineTo(44.11+a,40.42);
  ctx.lineTo(38.59+a,36.41);
  ctx.lineTo(33.07+a,40.42);
  ctx.lineTo(35.18+a,33.93);
  ctx.lineTo(29.66+a,29.92);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66+b,29.92);
  ctx.lineTo(36.48+b,29.92);
  ctx.lineTo(a+b,23.44);
  ctx.lineTo(40.7+b,29.92);
  ctx.lineTo(47.52+b,29.92);
  ctx.lineTo(42+b,33.93);
  ctx.lineTo(44.11+b,40.42);
  ctx.lineTo(38.59+b,36.41);
  ctx.lineTo(33.07+b,40.42);
  ctx.lineTo(35.18+b,33.93);
  ctx.lineTo(29.66+b,29.92);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66+c,29.92);
  ctx.lineTo(36.48+c,29.92);
  ctx.lineTo(a+c,23.44);
  ctx.lineTo(40.7+c,29.92);
  ctx.lineTo(47.52+c,29.92);
  ctx.lineTo(42+c,33.93);
  ctx.lineTo(44.11+c,40.42);
  ctx.lineTo(38.59+c,36.41);
  ctx.lineTo(33.07+c,40.42);
  ctx.lineTo(35.18+c,33.93);
  ctx.lineTo(29.66+c,29.92);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66+d,29.92);
  ctx.lineTo(36.48+d,29.92);
  ctx.lineTo(a+d,23.44);
  ctx.lineTo(40.7+d,29.92);
  ctx.lineTo(47.52+d,29.92);
  ctx.lineTo(42+d,33.93);
  ctx.lineTo(44.11+d,40.42);
  ctx.lineTo(38.59+d,36.41);
  ctx.lineTo(33.07+d,40.42);
  ctx.lineTo(35.18+d,33.93);
  ctx.lineTo(29.66+d,29.92);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66,29.92+f);
  ctx.lineTo(36.48,29.92+f);
  ctx.lineTo(a,23.44+f);
  ctx.lineTo(40.7,29.92+f);
  ctx.lineTo(47.52,29.92+f);
  ctx.lineTo(42,33.93+f);
  ctx.lineTo(44.11,40.42+f);
  ctx.lineTo(38.59,36.41+f);
  ctx.lineTo(33.07,40.42+f);
  ctx.lineTo(35.18,33.93+f);
  ctx.lineTo(29.66,29.92+f);
  ctx.fillStyle = '#fff';
  ctx.fill();
ctx.moveTo(29.66+a,29.92+f);
  ctx.lineTo(36.48+a,29.92+f);
  ctx.lineTo(a+a,23.44+f);
  ctx.lineTo(40.7+a,29.92+f);
  ctx.lineTo(47.52+a,29.92+f);
  ctx.lineTo(42+a,33.93+f);
  ctx.lineTo(44.11+a,40.42+f);
  ctx.lineTo(38.59+a,36.41+f);
  ctx.lineTo(33.07+a,40.42+f);
  ctx.lineTo(35.18+a,33.93+f);
  ctx.lineTo(29.66+a,29.92+f);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66+b,29.92+f);
  ctx.lineTo(36.48+b,29.92+f);
  ctx.lineTo(a+b,23.44+f);
  ctx.lineTo(40.7+b,29.92+f);
  ctx.lineTo(47.52+b,29.92+f);
  ctx.lineTo(42+b,33.93+f);
  ctx.lineTo(44.11+b,40.42+f);
  ctx.lineTo(38.59+b,36.41+f);
  ctx.lineTo(33.07+b,40.42+f);
  ctx.lineTo(35.18+b,33.93+f);
  ctx.lineTo(29.66+b,29.92+f);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66+c,29.92+f);
  ctx.lineTo(36.48+c,29.92+f);
  ctx.lineTo(a+c,23.44+f);
  ctx.lineTo(40.7+c,29.92+f);
  ctx.lineTo(47.52+c,29.92+f);
  ctx.lineTo(42+c,33.93+f);
  ctx.lineTo(44.11+c,40.42+f);
  ctx.lineTo(38.59+c,36.41+f);
  ctx.lineTo(33.07+c,40.42+f);
  ctx.lineTo(35.18+c,33.93+f);
  ctx.lineTo(29.66+c,29.92+f);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66+d,29.92+f);
  ctx.lineTo(36.48+d,29.92+f);
  ctx.lineTo(a+d,23.44+f);
  ctx.lineTo(40.7+d,29.92+f);
  ctx.lineTo(47.52+d,29.92+f);
  ctx.lineTo(42+d,33.93+f);
  ctx.lineTo(44.11+d,40.42+f);
  ctx.lineTo(38.59+d,36.41+f);
  ctx.lineTo(33.07+d,40.42+f);
  ctx.lineTo(35.18+d,33.93+f);
  ctx.lineTo(29.66+d,29.92+f);
  ctx.fillStyle = '#fff';
  ctx.fill();
   ctx.moveTo(29.66,29.92+g);
  ctx.lineTo(36.48,29.92+g);
  ctx.lineTo(a,23.44+g);
  ctx.lineTo(40.7,29.92+g);
  ctx.lineTo(47.52,29.92+g);
  ctx.lineTo(42,33.93+g);
  ctx.lineTo(44.11,40.42+g);
  ctx.lineTo(38.59,36.41+g);
  ctx.lineTo(33.07,40.42+g);
  ctx.lineTo(35.18,33.93+g);
  ctx.lineTo(29.66,29.92+g);
  ctx.fillStyle = '#fff';
  ctx.fill();
ctx.moveTo(29.66+a,29.92+g);
  ctx.lineTo(36.48+a,29.92+g);
  ctx.lineTo(a+a,23.44+g);
  ctx.lineTo(40.7+a,29.92+g);
  ctx.lineTo(47.52+a,29.92+g);
  ctx.lineTo(42+a,33.93+g);
  ctx.lineTo(44.11+a,40.42+g);
  ctx.lineTo(38.59+a,36.41+g);
  ctx.lineTo(33.07+a,40.42+g);
  ctx.lineTo(35.18+a,33.93+g);
  ctx.lineTo(29.66+a,29.92+g);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66+b,29.92+g);
  ctx.lineTo(36.48+b,29.92+g);
  ctx.lineTo(a+b,23.44+g);
  ctx.lineTo(40.7+b,29.92+g);
  ctx.lineTo(47.52+b,29.92+g);
  ctx.lineTo(42+b,33.93+g);
  ctx.lineTo(44.11+b,40.42+g);
  ctx.lineTo(38.59+b,36.41+g);
  ctx.lineTo(33.07+b,40.42+g);
  ctx.lineTo(35.18+b,33.93+g);
  ctx.lineTo(29.66+b,29.92+g);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66+c,29.92+g);
  ctx.lineTo(36.48+c,29.92+g);
  ctx.lineTo(a+c,23.44+g);
  ctx.lineTo(40.7+c,29.92+g);
  ctx.lineTo(47.52+c,29.92+g);
  ctx.lineTo(42+c,33.93+g);
  ctx.lineTo(44.11+c,40.42+g);
  ctx.lineTo(38.59+c,36.41+g);
  ctx.lineTo(33.07+c,40.42+g);
  ctx.lineTo(35.18+c,33.93+g);
  ctx.lineTo(29.66+c,29.92+g);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66+d,29.92+g);
  ctx.lineTo(36.48+d,29.92+g);
  ctx.lineTo(a+d,23.44+g);
  ctx.lineTo(40.7+d,29.92+g);
  ctx.lineTo(47.52+d,29.92+g);
  ctx.lineTo(42+d,33.93+g);
  ctx.lineTo(44.11+d,40.42+g);
  ctx.lineTo(38.59+d,36.41+g);
  ctx.lineTo(33.07+d,40.42+g);
  ctx.lineTo(35.18+d,33.93+g);
  ctx.lineTo(29.66+d,29.92+g);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66,29.92+h);
  ctx.lineTo(36.48,29.92+h);
  ctx.lineTo(a,23.44+h);
  ctx.lineTo(40.7,29.92+h);
  ctx.lineTo(47.52,29.92+h);
  ctx.lineTo(42,33.93+h);
  ctx.lineTo(44.11,40.42+h);
  ctx.lineTo(38.59,36.41+h);
  ctx.lineTo(33.07,40.42+h);
  ctx.lineTo(35.18,33.93+h);
  ctx.lineTo(29.66,29.92+h);
  ctx.fillStyle = '#fff';
  ctx.fill();
ctx.moveTo(29.66+a,29.92+h);
  ctx.lineTo(36.48+a,29.92+h);
  ctx.lineTo(a+a,23.44+h);
  ctx.lineTo(40.7+a,29.92+h);
  ctx.lineTo(47.52+a,29.92+h);
  ctx.lineTo(42+a,33.93+h);
  ctx.lineTo(44.11+a,40.42+h);
  ctx.lineTo(38.59+a,36.41+h);
  ctx.lineTo(33.07+a,40.42+h);
  ctx.lineTo(35.18+a,33.93+h);
  ctx.lineTo(29.66+a,29.92+h);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66+b,29.92+h);
  ctx.lineTo(36.48+b,29.92+h);
  ctx.lineTo(a+b,23.44+h);
  ctx.lineTo(40.7+b,29.92+h);
  ctx.lineTo(47.52+b,29.92+h);
  ctx.lineTo(42+b,33.93+h);
  ctx.lineTo(44.11+b,40.42+h);
  ctx.lineTo(38.59+b,36.41+h);
  ctx.lineTo(33.07+b,40.42+h);
  ctx.lineTo(35.18+b,33.93+h);
  ctx.lineTo(29.66+b,29.92+h);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66+c,29.92+h);
  ctx.lineTo(36.48+c,29.92+h);
  ctx.lineTo(a+c,23.44+h);
  ctx.lineTo(40.7+c,29.92+h);
  ctx.lineTo(47.52+c,29.92+h);
  ctx.lineTo(42+c,33.93+h);
  ctx.lineTo(44.11+c,40.42+h);
  ctx.lineTo(38.59+c,36.41+h);
  ctx.lineTo(33.07+c,40.42+h);
  ctx.lineTo(35.18+c,33.93+h);
  ctx.lineTo(29.66+c,29.92+h);
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.moveTo(29.66+d,29.92+h);
  ctx.lineTo(36.48+d,29.92+h);
  ctx.lineTo(a+d,23.44+h);
  ctx.lineTo(40.7+d,29.92+h);
  ctx.lineTo(47.52+d,29.92+h);
  ctx.lineTo(42+d,33.93+h);
  ctx.lineTo(44.11+d,40.42+h);
  ctx.lineTo(38.59+d,36.41+h);
  ctx.lineTo(33.07+d,40.42+h);
  ctx.lineTo(35.18+d,33.93+h);
  ctx.lineTo(29.66+d,29.92+h);
  ctx.fillStyle = '#fff';
  ctx.fill();
  }
void clearCanvas() {
  ctx.clearRect(0, 0, flag_w, flag_h);
}
