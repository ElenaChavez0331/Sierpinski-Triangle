int len = 500;

public void setup() {//srstt up
  size(500, 500);
  background(169, 207, 193);
}

public void draw() {
  fill(255);
  drawSierpinski(0, height, len);
}

public void drawSierpinski(int x, int y, int len) {
  if (len <= 20) {
    // Draw a small circle when the recursion depth is reached
    ellipse(x, y, len / 2, len / 2);
  } else {
    // Recursively draw smaller triangles/circles
    drawSierpinski(x, y, len / 2);
    drawSierpinski(x + len / 2, y, len / 2);
   drawSierpinski(x + len / 4, y - len / 2, len / 2);
    //drawSierpinski(x - len / 4, y +len / 2, len / 2);
  }
}

// Optional: mouseDragged() function is currently empty, but can be added here if needed.
public void mouseDragged() {
//  y+=2;
}
