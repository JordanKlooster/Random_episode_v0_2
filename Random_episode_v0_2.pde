
// goal of the program is to get a random number for the episode we should watch

//step one go to the episode guide on the wiki

// http://steven-universe.wikia.com/wiki/Episode_Guide
// http://gravityfalls.wikia.com/wiki/Episode_guide
// (adventure time isn't helpful) http://adventuretime.wikia.com/wiki/List_of_episodes
// (this site is helpful) https://en.wikipedia.org/wiki/List_of_Adventure_Time_episodes

// AT seasons
// 1: 26
// 2: 26
// 3: 26
// 4: 26
// 5: 52
// 6: 43




// Data needed: 
// 1: number of episodes
// 2: number of seasons
// 3: number of episodes in each season




// total number of episodes
// int array of number of episodes in season, if season isn't over leave it blank, 
//or even bigger number could work if you know how many episodes there will be

// Or just have one int array and the first int in array be episode number


//int numSeasonsAT = 7;





// Plan
// 1 make a Create or draw button function
// 2 let the data be entered and stored in text boxes.



// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// zero is total episodes (the first one in list)
// Change first Value to change total episode number
int[] sAT = {222,26,26,26,26,52,43,52};
int[] sSU = {82,52,26,26};
int[] sGF = {40,20,20};



// just dumping episodes from seasons into a big pile
int pile = 0; 




//change the episodes into a data format

//array();

//array length = arraySteven.seasons



boolean mouseOver = false;

int a = 1; // (number of episodes generated)





int r;


void setup() {
  
  
  //println(seasAT.length);
  //println(seasAT[7]);
  
  size(640,400);
  textSize(16);
  text("Press 'S', 'A', or 'G' for a random episode of steven universe, adventure time, or ", 10, 20);
  text("gravity falls respectively. (episodes last updated september 17/2015)", 10, 40);
  
  text("The results will show up in the console of the editor", 10, 80);
  
  frameRate(100);
  stroke(255);
  
  
  
  
}



void draw() {
  

  
  
  
  // makin the menu/ gui for program
  
  background(10);
  
  
  
  
  // Make some draw buttons functions so I can plop them down using data
  
  
  // show selection button
  
  rect(width/4, height/4, width/4, height/8);
  rect(100, 100, 10, 10);
  
  if (mouseX >= width/4 && mouseX <= width/2) { // call a function that with different numbers for which button is pressed
    if ( (mouseY >= height/4 && mouseY <= height/4 + height/8) || (mouseY >= height/4 && mouseY <= height/2 + height/8 + height/64 && mouseOver) ){
      
      mouseOver = true;
      
      rect(width/4, height/4 + height/8 + height/128, width/4, height/8);
      rect(width/4, height/4 + height/4 + height/64, width/4, height/8);
    }else {
      mouseOver = false;
    }
  }
  
}




void keyReleased() {
  println(); // new line
  
  if (key == 'S' || key == 's') {                //steven universe
    for (int i = 0; i < a; i = i+1) {
      //print("Steven Universe");
      call(sSU, "Steven Universe");
    }
    
  }else if (key == 'A' || key == 'a') {          //Adventure Time
    for (int i = 0; i < a; i = i+1) {
      //print("Adventure time");
      //callAdventure();
      call(sAT, "Adventure Time");
    }
    
  }else if (key == 'G' || key == 'g') {         //Gravity Falls
    for (int i = 0; i < a; i = i+1) {
      //callGravity(); 
      call(sGF, "Gravity Falls");
    }
  }


}







void call(int[] cat, String name){ // cat is just the variable for storing the array of the shows data
  pile = 0;
  r = int( 1 + random(cat[0]));
  
  println( r + " " + name); // Just showing the overall number
  
  
  
  
  for (int l = 1; l < cat.length; l ++){
    
    // pile is the number of episodes from each season piled together
    pile += cat[l];
    
    
    // If the number is lower than the total # of episodes to current season (counting up by seasons) then we know wich season it's in
    if (r <= pile){
      println("Season: " + l + ", Episode: " + (r-pile+cat[l]) );
      l = cat.length; // Exit loop 
    }
    
  }// End of for loop
  
  
  
  
}// End of call()