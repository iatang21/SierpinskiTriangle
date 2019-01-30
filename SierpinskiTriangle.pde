float h;

public void setup()
{
	size(700,700);
	int state = 0; 
	float h = 0;
	colorMode(HSB);
}

public void draw()
{
	background(0);
	sierpinski(25,675,650);
	if(h>=255)
		h=0;
	else 
		h++;
}

public void sierpinski(int x, int y, int len) 
{
	if(len<=25){
		strokeWeight(3);
		stroke(h,230,255);
		fill(0);
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else{
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
		
	}
}