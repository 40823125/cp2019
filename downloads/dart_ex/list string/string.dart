main(){  
//字串temp40C,80C,50F,40C,25F
 List temp = ["40C", "80C", "50F", "40C", "25F"];
  for (var i in temp) {
    if (i[2] == "C") {
    print(i); 
    var a = int.parse(i[0]+i[1]);
    double k=(9/5)*a+32;
    print(k);
}
    else{
    print(i); 
    var y = int.parse(i[0]+i[1]);
    double m=(y-32)*5/9;
    print(m);
/*
 for迴圈使i=temp
 if當i字串第三個字是C時,執行
    print(i);
    var a = int.parse(i[0]+i[1]);
    double k=(9/5)*a+32;
    print(k);
  else否時,執行
    print(i); 
    var y = int.parse(i[0]+i[1]);
    double m=(y-32)*5/9;
    print(m);
 */
}
}
}   
