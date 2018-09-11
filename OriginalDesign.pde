int up = 110;
void setup()
{
  size(600, 600);
}

void draw()
{
    background(127);
    dog(up);
    up = up - 1;
}

//makes full dog
void dog(int y)
{
  torso(y);
  earLeft(y);
  head(y);
  nose(y);
  earRight(y);
  leg(1, y);
  leg(2, y);
  leg(3, y);
  leg(4, y);
  tail(y);
  eyes(y);
  textBubble(up);
}

//makes body shape and fills color
void torso(int y)
{
  fill(#711313);
  ellipse(300, 600+y, 200, 100);
}

//makes head shape and rids of stroke
void head(int y)
{
  fill(#711313);
  noStroke();
  //circular haed
  ellipse(200, 550+y, 100, 100);
}

//makes the dogs snout and button nose
void nose(int y)
{
  //nose shape (snout)
  ellipse(175, 580+y, 100, 50);
  //button nose
  fill(#000000);
  ellipse(125, 580+y, 10, 10);
}

//makes ear on left of the screen
void earLeft(int y)
{
  fill(#000000);
  ellipse(170, 555+y, 50, 99);
}

//makes ear on right of the screen
void earRight(int y)
{
  fill(#000000);
  ellipse(225, 555+y, 50, 100);
}

//makes a single leg
void leg(int z, int y)
{
  int y1 = 610;
  int x = 210;
  int two = 50;
  int three = 100;
  int four = 150;
  if (z == 1)
  {
    fill(#711313);
    rect(x, y1+y, 30, 50);
    ellipse(x+5, y1+50+y, 10, 10);
    ellipse(x+15, y1+50+y, 10, 10);
    ellipse(x+25, y1+50+y, 10, 10);
  }
  if (z == 2)
  {
    fill(#711313);
    rect(x+two, y1+y, 30, 50);
    ellipse(x+5+two, y1+50+y, 10, 10);
    ellipse(x+15+two, y1+50+y, 10, 10);
    ellipse(x+25+two, y1+50+y, 10, 10);
  }
  if (z == 3)
  {
    fill(#711313);
    rect(x+three, y1+y, 30, 50);
    ellipse(x+5+three, y1+50+y, 10, 10);
    ellipse(x+15+three, y1+50+y, 10, 10);
    ellipse(x+25+three, y1+50+y, 10, 10);
  }
  if (z == 4)
  {
    fill(#711313);
    rect(x+four, y1+y, 30, 50);
    ellipse(x+5+four, y1+50+y, 10, 10);
    ellipse(x+15+four, y1+50+y, 10, 10);
    ellipse(x+25+four, y1+50+y, 10, 10);
  }
}

//make tail
void tail(int y)
{
  bezier(400, 600+y, 350, 600+y, 390, 600+y, 450, 550+y);
}

void eyes(int y)
{
  fill(#000000);
  ellipse(190, 550+y, 10, 10);
  ellipse(155, 550+y, 10, 10);
}

void textBubble(int y)
{
  fill(#FFFFFF);
  ellipse(150, 450+y, 200, 100);
  bezier(100, 450+y, 80, 500+y, 100, 500+y, 125, 520+y);
  fill(#000000);
  textSize(24);
  textAlign(CENTER);
  text("What's Up Dog?", 150, 460+y);
}
