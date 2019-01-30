float c,h;

public void setup()
{
	frameRate(500);
	size(700,700);
	int state = 0; 
	float h = 0;
	colorMode(HSB);
}

public void draw()
{
	background(c,70,255);
	sierpinski(25,675,650);
	if(h>=255)
		h=0;
	else 
		h++;
	if(c<=0)
		c=255;
	else
		c--;
}

public void sierpinski(int x, int y, int len) 
{
	if(len<=25){
		fill(h,230,255);
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
		
	}
}