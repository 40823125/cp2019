//開啟html的檔案
import 'dart:html';
 
  InputElement studListUrl = querySelector("#studListUrl");
  String studUrl;
  InputElement st = querySelector("#Url");
  String stU;
  // 將 Label 改為 Textarea, 避免產生過程結果嵌入所在頁面
  TextAreaElement output = querySelector("#output");
 
main() {
  querySelector("#submit").onClick.listen((e) => grouping());
}
 
grouping() {
  output.innerHtml = "";
 
  if (studListUrl.value != "") {
    studUrl = studListUrl.value;
  } else {
    studUrl = 'https://40823125.github.io/cp2019/downloads/9zk6c-82h5m.txt';
  }

  if (st.value != "") {
    stU = st.value;
  } else {
    studUrl = 'https://40823125.github.io/cp2019/downloads/al5ts-tl0s0.txt';
  }
  
  // 組序由 1 開始
  int gth = 1;
  // 迴圈序號變數
  int i;
  int j;
  int total;
  int inc;
  // 每組學員暫存數列
  var gpList = [];
  // 全班分組數列
  var group = [];
  // 各組人數數列
  var numList = [];
  // 每組學員暫存數列
  var gp = [];
  // 全班分組數列
  var gro = [];
  // 各組人數數列
  var numL = [];
  
  HttpRequest.getString(studUrl).then((String resp) {
    // 利用 trim() 去除字串最後的跳行符號, 之後再利用 split() 根據 \n 轉為數列
    var studList = resp.trim().split("\n");
    numList = getNumList(studList.length);
    inc = 0;
    for (i in numList){
      gpList = [];
      for (j = 0; j < i; j++){
        output.text += studList[j+inc] + "\n";
        // 在各分組數列中加入將對應的學員學號
        gpList.add(studList[j+inc]);
      }
      gth = gth + 1;
      inc = inc + j;
        //output.text += studList[j] + "\n";
        // 逐步將各組暫存的分組數列加入全班分組數列中
      gpList.sort();
      group.add(gpList);
    }
  });
   output.text += '=' * 20 + "\n";
     HttpRequest.getString(stU).then((String sp) {
    // 利用 trim() 去除字串最後的跳行符號, 之後再利用 split() 根據 \n 轉為數列
    var st = sp.trim().split("\n");
    numList = getN(st.length);
    inc = 0;
    for (i in numL){
      gp = [];
      for (j = 0; j < i; j++){
        output.text += st[j+inc] + "\n";
        // 在各分組數列中加入將對應的學員學號
        gp.add(st[j+inc]);
      }
      gth = gth + 1;
      inc = inc + j;
        //output.text += studList[j] + "\n";
        // 逐步將各組暫存的分組數列加入全班分組數列中
      gp.sort();
      gro.add(gp);
    }
  });
}
 
List getNumList(int total){
  // total student number
  // int total = 65;
  // initial each group expect to be "eachGrp" number of people
  int ea = 5;
  // may divide into "grpNum" number of group
  int grp = total ~/ ea;
  // vacant list
  var sp = [];
  // find remainder when total number divid into "grpNum" number of group
  int remainder = total % grp;
  // number of people in one group by calculation
  int calGrp = total ~/ grp;
 
  for (int i = 0; i < grp; i++) {
    sp.add(calGrp);
  }
  //print(splits);
 
  for (int i = 0; i < remainder; i++) {
    sp[i] += 1;
  }
  //print(splits);
  return sp;
 }

List getN(int total){
  // total student number
  // int total = 65;
  // initial each group expect to be "eachGrp" number of people
  int eachGrp = 10;
  // may divide into "grpNum" number of group
  int grpNum = total ~/ eachGrp;
  // vacant list
  var splits = [];
  // find remainder when total number divid into "grpNum" number of group
  int remainder = total % grpNum;
  // number of people in one group by calculation
  int calGrp = total ~/ grpNum;
 
  for (int i = 0; i < grpNum; i++) {
    splits.add(calGrp);
  }
  //print(splits);
 
  for (int i = 0; i < remainder; i++) {
    splits[i] += 1;
  }
  //print(splits);
  return splits;
 }