int tileCountX = 10;
int tileCountY = 10;

void setup() {
  size(800, 800);
  noStroke();
}

void draw() {

  float tileWidth = (float) width / tileCountX;
  float tileHeight = (float) height / tileCountY;

  // background
  // for each row
  for (int y=0; y<=tileCountX; y++) {
    if (y%2==0) {
      for (int x=0; x<=tileCountX; x++) {
        float posX = x * width / tileCountX;
        float posY = y * height / tileCountY;
        if (x%2==0) {
          fill(0, 0, 0);

          rect(posX, posY, tileWidth, tileHeight);
        } else {
          fill(225, 225, 225);
          rect(posX, posY, tileWidth, tileHeight);
        }
      }
    } else {
      for (int x=0; x<=tileCountX; x++) {
        float posX = x * width / tileCountX;
        float posY = y * height / tileCountY;
        if (x%2==0) {
          fill(225, 225, 225);

          rect(posX, posY, tileWidth, tileHeight);
        } else {
          fill(0, 0, 0);
          rect(posX, posY, tileWidth, tileHeight);
        }
      }
    }
  }

  // when clicked
  if (mousePressed == true) {
    for (int y=0; y<=tileCountX; y++) {
      for (int x=0; x<=tileCountX; x++) {
        float posX = x * width / tileCountX;
        float posY = y * height / tileCountY;
        fill(random(0, 225), random(0, 225), random(0, 225));
        rect(posX, posY, tileWidth, tileHeight);
      }
    }
  }
}