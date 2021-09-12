PImage pic;

size(680, 510); //图片尺寸大小
background(47, 104, 121);

pic = loadImage("rabbit.png"); //加载图片

int xs =20; //像素点大小范围

for (int i = 0; i < 300000; ++i) {
    float x = random(0, 680);
    float y = random(0, 510);
    noStroke();
    color c=pic.get(int(x), int(y));
    fill(c);
    rect(int(x), int(y), random(0, xs), random(0, xs));
}

saveFrame("rabbit.png");
