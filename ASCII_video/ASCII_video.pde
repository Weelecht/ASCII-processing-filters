Written by @Weelecht on Twitter

import processing.video.*;
Movie vid;

ArrayList<Agent>agents;
int skip = 7;

void setup() {
  noStroke();
  
  fullScreen();

  vid = new Movie(this, "PUT THE NAME OF YOUR CLIP HERE EXAMPLE "video.mp4"");
  vid.loop();

  agents = new ArrayList<Agent>();

  for (int x = 0; x < width + skip; x += skip) {
    for (int y = 0; y < height + skip; y += skip) {
      agents.add(new Agent(new PVector(x, y), vid));
    }
  }
}

void draw() {


  background(12, 17, 32);
  for (int i = 0; i < agents.size(); i++) {

    Agent a = agents.get(i);

    a.display();
  }
}

void movieEvent(Movie m) {
  m.read();
}

class Agent {

  PVector location;

  //String[] ascii = {"~","#","$","!","<","^",">","'","*","."};
  //inverse
  String[] ascii = {".", "*", "'", "^", ">", "<", "!", "$", "#", "~"};


  Agent(PVector origin, PImage source) {

    location = new PVector(origin.x, origin.y);
    PImage img = source;
  }

  void display() {

    text(charSelection(), location.x, location.y);
  }


  String charSelection() {

    //get cols

    color c = vid.get(int(location.x), int(location.y));
    float b = brightness(c);

    //colourize
    fill(c);


    String result = "";  

    if (b > 1 && b < 24) {


      result = ascii[0];
    } else if (b > 25 && b < 49) {

      result = ascii[1];
    } else if (b > 50 && b < 74) {

      result = ascii[2];
    } else if (b > 75 && b < 99) {

      result = ascii[3];
    } else if (b > 100 && b < 124) {

      result = ascii[4];
    } else if (b > 125 && b < 149) {

      result = ascii[5];
    } else if (b > 150 && b < 174) {

      result = ascii[6];
    } else if (b > 175 && b < 199) {

      result = ascii[7];
    } else if (b > 200 && b < 224) {

      result = ascii[8];
    } else {

      result = ascii[9];
    }


    return result;
  }
}

class Agent {

  PVector location;

  //String[] ascii = {"~","#","$","!","<","^",">","'","*","."};
  //inverse
  String[] ascii = {".", "*", "'", "^", ">", "<", "!", "$", "#", "~"};


  Agent(PVector origin, PImage source) {

    location = new PVector(origin.x, origin.y);
    PImage img = source;
  }

  void display() {

    text(charSelection(), location.x, location.y);
  }


  String charSelection() {

    //get cols

    color c = vid.get(int(location.x), int(location.y));
    float b = brightness(c);

    //colourize
    fill(c);


    String result = "";  

    if (b > 1 && b < 24) {


      result = ascii[0];
    } else if (b > 25 && b < 49) {

      result = ascii[1];
    } else if (b > 50 && b < 74) {

      result = ascii[2];
    } else if (b > 75 && b < 99) {

      result = ascii[3];
    } else if (b > 100 && b < 124) {

      result = ascii[4];
    } else if (b > 125 && b < 149) {

      result = ascii[5];
    } else if (b > 150 && b < 174) {

      result = ascii[6];
    } else if (b > 175 && b < 199) {

      result = ascii[7];
    } else if (b > 200 && b < 224) {

      result = ascii[8];
    } else {

      result = ascii[9];
    }


    return result;
  }
}
