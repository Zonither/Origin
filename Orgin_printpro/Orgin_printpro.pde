PImage pic1;
PImage pic2;
// PImage pic3;

//分图层，需要几个加几个。

size(900, 900); //图片尺寸大小
background(224, 227, 218);

pic1 = loadImage("pic1.png"); 
pic2 = loadImage("pic2.png");
// pic3 = loadImage("pic3.png");
//加载图片

color cc=pic1.get(0, 0); //获取左上角像素点信息

//变量
int backgrounds =150; //背景像素点大小范围
int pic1s_w = 30; //图层一宽大小范围
int pic1s_h = 30; //图层一高大小范围
int pic2s_w = 30; //图层三宽大小范围
int pic2s_h = 60; //图层三高大小范围

//背景

for (int i = 0; i < 2000; ++i) {
    noStroke();
    fill(224, 227, 218);
    rect(random(0, 900), random(0, 900), random(0, backgrounds), random(0, backgrounds));
    fill(250, 255, 244);
    rect(random(0, 900), random(0, 900), random(0, backgrounds), random(0, backgrounds));
    fill(173, 176, 169);
    rect(random(0, 900), random(0, 900), random(0, backgrounds), random(0, backgrounds));
    fill(248, 252, 242);
    rect(random(0, 900), random(0, 900), random(0, backgrounds), random(0, backgrounds));
}

for (int z = 0; z < 3000; ++z) {
    float x = random(0, 900);
    float y = random(0, 900);
    noStroke();
    color c=pic2.get(int(x), int(y));
    if (cc != c) {
        fill(127, 83, 69);
        rect(int(x), int(y), random(0, pic2s_w), random(0, pic2s_h));
        fill(165, 107, 89);
        rect(int(x), int(y), random(0, pic2s_w), random(0, pic2s_h));
        fill(76, 49, 41);
        rect(int(x), int(y), random(0, pic2s_w), random(0, pic2s_h));
    }
}
    //图层二

for (int z = 0; z < 4000; ++z) {
    float x = random(0, 900);
    float y = random(0, 900);
    noStroke();
    color c=pic1.get(int(x), int(y));
    if (cc != c) {
        fill(255, 207, 46);
        rect(int(x), int(y), random(0, pic1s_w), random(0, pic1s_h));
        fill(255, 220, 46);
        rect(int(x), int(y), random(0, pic1s_w), random(0, pic1s_h));
        fill(204, 165, 36);
        rect(int(x), int(y), random(0, pic1s_w), random(0, pic1s_h));
    }
}
//图层一


//图层三

// for (int i = 0; i < 3000; ++i) {
//     float x = random(0, 680);
//     float y = random(0, 510);
//     noStroke();
//     color c=pic3.get(int(x), int(y));
//     if (cc != c) {
//         fill(c);
//         rect(int(x), int(y), random(0, xs), random(0, xs));
//     }
// }

saveFrame("rabbit.png");
