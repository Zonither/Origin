size(900, 900);
background(219, 231, 239);

int x = 300;
for (int i = 0; i < 300; ++i) {
    noStroke();
    fill(219, 231, 239);
    rect(random(0, 900), random(0, 900), random(0, x), random(0, x));
    fill(255, 95, 46);
    rect(random(0, 900), random(0, 900), random(0, x), random(0, x));
    fill(252, 190, 50);
    rect(random(0, 900), random(0, 900), random(0, x), random(0, x));
    fill(0, 78, 102);
    rect(random(0, 900), random(0, 900), random(0, x), random(0, x));
}

saveFrame("origin.png");