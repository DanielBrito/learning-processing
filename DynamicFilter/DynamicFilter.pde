PImage kitten;

void setup() {
    size(600, 338);
    kitten = loadImage("kitten.jpg");
}

void draw() {

    kitten.loadPixels();

    loadPixels();

    for (int x=0; x<width; x++) {

        for (int y=0; y<height; y++) {

            int location = x+y*width;

            float r = red(kitten.pixels[location]);
            float g = green(kitten.pixels[location]);
            float b = blue(kitten.pixels[location]);

            if (x<mouseX) {

                pixels[location] = color(255-r, 255-g, 255-b);
            } 
            else {
                
                pixels[location] = color(r, g, b);
            }
        }
    }

    updatePixels();
}
