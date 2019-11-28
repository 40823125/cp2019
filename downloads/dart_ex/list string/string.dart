main(){  
 List temp = ["20C", "30C", "50F", "40C", "23F"];
  for (var i in temp) {
    //print(i);
    //print(i[2]);
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
}
}
}  