import "dart:html";
C(num c){
 return ((9/5)*c+32); 
}
F(num f){
return (f - 32)*5/9;
} 
void main() {
   InputElement tempInput = querySelector("#c");
    querySelector("#submit").onClick.listen((e) => convert(tempInput.value));
}
convert(String string){
  // 宣告 len 整數變數, 準備設為各字串的長度
  int len;
  // 宣告 var 變數 type, 準備設為各字串最後一個字元, 可能為 C 或 F
  var type;
  // 宣告 var 變數 number, 準備設為各字串中的數字
  var number;
   LabelElement output = querySelector("#output");
  len = string.length;
  // 取得各筆資料的最後一個字元
  //print(data[len-1]);
  type =  string[len-1];
  //print("目前 type 變數資料型別為: ${type.runtimeType}")
  // 根據溫度類別轉給對應函式進行溫度轉換
  number =  string.substring(0, len-1);
  //print("目前 number 變數資料型別為: ${number.runtimeType}");
  // 由於取得的 number 為字串, 必須設法轉為數字 
  number = int.parse(number);  
  //print("目前 number 變數資料型別為: ${number.runtimeType}");
  // 之後就可以根據 type 與 number 執行各數列元素的溫度轉換 
    if (type == 'C'){
      output.innerHtml = "攝氏 $number 度 = 華氏 ${C(number).toStringAsFixed(2)} 度";
    }
   if(type=='F'){
     output.innerHtml = " 華氏  $number 度 攝氏=${F(number).toStringAsFixed(2)} 度";
    }
  else {
     output.innerHtml = "請輸入數字加上 C 或 F!";
}
}