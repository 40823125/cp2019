var tipuesearch = {"pages": [{'title': 'About', 'text': '此內容管理系統以\xa0 https://github.com/mdecourse/cmsimde \xa0作為 submodule 運作, 可以選定對應的版本運作, cmsimde 可以持續改版, 不會影響之前設為 submodule, 使用舊版 cmsimde 模組的內容管理相關運作. \n 利用 cmsimde 建立靜態網誌方法: \n 1. 在 github 建立倉儲, git clone 到近端 \n 2. 參考\xa0 https://github.com/mdecourse/newcms , 加入除了 cmsimde 目錄外的所有內容 \n 以 git submodule add\xa0 https://github.com/mdecourse/cmsimde \xa0cmsimde \n 建立 cmsimde 目錄, 並從 github 取下子模組內容. \n 3.在近端維護時, 更換目錄到倉儲中的 cmsimde, 以 python wsgi.py 啟動近端網際伺服器. \n 動態內容編輯完成後, 以 generate_pages 轉為靜態內容, 以 git add commit 及 push 將內容推到遠端. \n 4. 之後若要以 git clone 取下包含 submodule 的所有內容, 執行: \n git clone --recurse-submodules  https://github.com/mdecourse/newcms.git \n', 'tags': '', 'url': 'About.html'}, {'title': 'Develop', 'text': 'https://github.com/mdecourse/cmsimde \xa0的開發, 可以在一個目錄中放入 cmsimde, 然後將 up_dir 中的內容放到與 cmsimde 目錄同位階的地方, 使用 command 進入 cmsimde 目錄, 執行 python wsgi.py, 就可以啟動, 以瀏覽器 https://localhost:9443\xa0就可以連接, 以 admin 作為管理者密碼, 就可以登入維護內容. \n cmsimde 的開發採用 Leo Editor, 開啟 cmsimde 目錄中的 cmsimde.leo 就可以進行程式修改, 結束後, 若要保留網際內容, 只要將 cmsimde 外部的內容倒回 up_dir 目錄中即可後續對 cmsimde 遠端倉儲進行改版. \n init.py 位於\xa0 up_dir 目錄, 可以設定 site_title 與 uwsgi 等變數. \n', 'tags': '', 'url': 'Develop.html'}, {'title': 'Week任務', 'text': '', 'tags': '', 'url': 'Week任務.html'}, {'title': 'W7', 'text': '\n // 下列 Dart 程式, 利用 Runge Kutta 迭代運算法, 解常微分方程式\n// 設 t 為時間, x 則設為物體的位移\n// 假設要解 F=ma 的單一質量加上彈簧 (常數為 k) 與黏滯阻尼 (常數為 b)\n// f 為沿位移方向的施力\n// dx/dt = v, dv/dt = (f-kx-bv)/m\n// dx / dt = (t - x)/2, 起始值 t0=0, x0=1, 求 t=2 時的 x 值\n// 已知起始值 t0 與 x0 後, 可以利用下列 rungeKutta 函式\n// 以h為每步階增量值, 求 dxdt 常微分方程式任一 t 的對應值 x\n// 定義函式 rungeKutta, 共有四個輸入變數\n// 物體質量\nconst num m = 1;\n// 對質量的施力 f\nconst num f = 0.0;\n// 彈簧係數\nconst num k = 1;\n// 阻尼係數\nconst num b = 1;\n\n// 呼叫運算時, 需要起始時間, 終點時間, 位移起始值與速度起始值, 增量 h\nrungeKutta(t0, x0, v0, t, h) {\n  // 利用步階增量值 h 與 t 的起始及終點值\n  // 計算需要迭代的次數 n\n  int n = ((t - t0) / h).toInt();\n  // 宣告 x 為雙浮點數, 且設為起始值 x0\n  double x = x0;\n  // 宣告 v 為雙浮點數, 且設為起始值 v0\n  double v = v0;\n  //宣告t0 = 0.000 x = 1.000 v = 0.000 後進入迴圈\n  // \\t 為不顯示前一個的代號\n  print(" ${t0.toStringAsFixed(3)}\\t ${x.toStringAsFixed(3)}\\t ${v.toStringAsFixed(3)}\\t");\n  // 利用已知的 t0, x0, t 終點值與步階增量值 h, 迭代求 x 對應值\n  // 索引值 i 將每次增量 1, 從 i=1 執行 for 環圈至 i=n\n  for (int i = 1; i <= n; i++) {\n    // 將此階段的 t 與 x 值代入 dxdt 與 dvdt 函式求下列四個浮點變數值\n    // 因為必須兩個函式耦合, 必須同時計算\n    double xk1 = h * dxdt(t0, x, v);\n    double vk1 = h * dvdt(t0, x, v);\n    double xk2 = h * dxdt(t0 + 0.5 * h, x + 0.5 * xk1, v + 0.5 * vk1);\n    double vk2 = h * dvdt(t0 + 0.5 * h, x + 0.5 * xk1, v + 0.5 * vk1);\n    double xk3 = h * dxdt(t0 + 0.5 * h, x + 0.5 * xk2, v + 0.5 * vk2);\n    double vk3 = h * dvdt(t0 + 0.5 * h, x + 0.5 * xk2, v + 0.5 * vk2);\n    double xk4 = h * dxdt(t0 + h, x + xk3, v + vk3);\n    double vk4 = h * dvdt(t0 + h, x + xk3, v + vk3);\n    // 利用上述四個變數值求此步階增量後的對應 x 值\n    x = x + (1.0 / 6.0) * (xk1 + 2 * xk2 + 2 * xk3 + xk4);\n    v = v + (1.0 / 6.0) * (vk1 + 2 * vk2 + 2 * vk3 + vk4);\n    \n    // 每次 for 迴圈執行最後, 準備計算下一個步階增量後的 x 對應值\n    // t 起始值配合步階增量值 h, 進行增量\n    t0 = t0 + h;\n    // 宣告計算結果\n    // toStringAsFixed(3)為只列到小數點第三位\n    print(" ${t0.toStringAsFixed(3)}\\t ${x.toStringAsFixed(3)}\\t ${v.toStringAsFixed(3)}\\t");\n  }\n  // 完成 for 迴圈迭代後, 傳回與 t 終點值對應的 x 值\n  return [x, v];\n}\n\n// 將微分方程式 "dx / dt = v" 定義為 dxdt 函式\ndxdt(t, x, v) {\n  return v;\n}\n// dx/dt = v, dv/dt = (f-kx-bv)/m\n// (f - k*x - b*v)/m為加數度\ndvdt(t,x, v) {\n  return (f - k*x - b*v)/m;\n}\n\n// 定義 main() 主函式內容, 目的在利用 rungeKutta 函式\n// 解常微分方程式\nmain() {\n// Driver method\n// num 資料型別可以是整數或雙浮點數\n  num t0 = 0;\n  num x0 = 1;\n  num v0 = 0;\n  num t = 16;\n  double h = 0.1;\n  rungeKutta(t0, x0, v0, t, h);\n} \n', 'tags': '', 'url': 'W7.html'}, {'title': 'W10', 'text': 'Dart 程式 \n main   Hello   loop   dxdt   quizlet1   quizlet2   quizlet3   temperature   temperature string   kg,ib \n Html 程式 \n ROC Flag   Grid   X-Y Plot   Slithery   temperature   temperature string   USA Flag   rot USA Flag   kgib \n Flutter 程式 \n Flutter1   Flutter2   Flutter3 \n  內建放入的 Dart 原始碼  \n 放大   回復 \n', 'tags': '', 'url': 'W10.html'}, {'title': 'W12', 'text': '\n  List temp = ["40C", "80C", "50F", "40C", "25F"];\n  for (var i in temp) {\n    if (i[2] == "C") {\n    print(i); \n    var a = int.parse(i[0]+i[1]);\n    double k=(9/5)*a+32;\n    print(k);\n}\n    else{\n    print(i); \n    var y = int.parse(i[0]+i[1]);\n    double m=(y-32)*5/9;\n    print(m);\n/*\n for迴圈使i=temp\n if當i字串第三個字是C時,執行\n    print(i);\n    var a = int.parse(i[0]+i[1]);\n    double k=(9/5)*a+32;\n    print(k);\n  else否時,執行\n    print(i); \n    var y = int.parse(i[0]+i[1]);\n    double m=(y-32)*5/9;\n    print(m);\n */\n}\n}\n}   \n', 'tags': '', 'url': 'W12.html'}, {'title': 'W13', 'text': '', 'tags': '', 'url': 'W13.html'}, {'title': 'W14', 'text': '輸入所要轉換的溫度     轉換結果:  \n', 'tags': '', 'url': 'W14.html'}, {'title': 'W16', 'text': 'Dart 程式 \n temperature   temperature string \n Html 程式 \n USA Flag   temperature   temperature string \n  內建放入的 Dart 原始碼  \n 放大   回復 \n \n W14 <<  Previous   Next  >> Wed', 'tags': '', 'url': 'W16.html'}, {'title': 'W17', 'text': 'Dart 程式 \n kg ib \n Html 程式 \n kg ib \n  內建放入的 Dart 原始碼  \n 放大   回復 \n \n 輸入所要轉換的溫度     轉換結果:  \n \n   Clear Canvas   Draw Jap   Draw ROC   Draw Fra   Draw Rus   Draw Usa   Draw Uk   Draw Ger   Draw Net \n \n \n', 'tags': '', 'url': 'W17.html'}, {'title': 'Wed', 'text': '\n Cloud \n \n https://drive.google.com/drive/folders/1T9wwCC6X0uW4T2yWFFk8t97HScIATKRG \n \n 2019 Fall Computer program \n \n http://mde.tw/cp2019/content/index.html \n \n 2019 Fall Computer aided design \n \n http://mde.tw/cad2019/content/index.html \n \n youtube \n \n https://www.youtube.com/channel/UCJ0Ye3mhMApH0yxAcwCXs5g/videos \n', 'tags': '', 'url': 'Wed.html'}, {'title': 'Image', 'text': '', 'tags': '', 'url': 'Image.html'}]};