@water: #b8dee6;
Map {
  background-color: #ffffff;
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: #fff;
}
#roads[highway!='track'][zoom >= 9]
 {
  line-width:1.2;
  [zoom < 9] { line-width: 0.8;}
  line-color:gray;
  [highway='motorway'],[highway='trunk'] { line-color: black; }
  [highway="unclassified"],[highway="road"] { 
    line-width: 0.8; 
    [zoom < 9] { line-width: 0.4; }
    line-color: hsl(260,20%,60%); /* Purpleish */
  }
  [surface="unpaved"],[surface="dirt"],[surface="gravel"],
  [surface="unsealed"] { 
    line-dasharray: 5,1;
    [highway="unclassified"],[highway="road"],[highway="residential"] {
      line-color:hsl(30,30%,50%);
    }
  }
  [highway='residential'] {
    line-width: 0.6;
    [zoom <= 12] { line-width:0.3; }
    [zoom < 11] { line-width:0.2; }
  }
  [highway='service'] {
    line-width:0.5;
  }

  ::label[zoom >= 10][highway != 'residential'][highway != 'service'],
  ::label[zoom >= 16] {
    text-face-name:'CartoGothic Std Book';
    text-size:12;
    text-name:'[name]';
    text-placement:line;
    text-allow-overlap:true;
    text-spacing:100;
    text-halo-fill:white;
    text-halo-radius:2;
    [zoom <= 12] { 
      text-size: 10; text-face-name: 'Roboto Condensed Light';
      text-halo-radius:1;
    }
    [highway='primary'],[highway='secondary'],[highway='tertiary'] {
        text-size: 12;
    }
    [highway='residential'],[highway='service'] {
      text-fill:#777;
      text-size:10;
    }
  }
}

#roadlinks[zoom>=13] {
  line-width:0.5;
  line-color:#999;
}



#roads[highway='track'][zoom >= 9]
{
  line-width:0.5;
  [zoom <= 10] { line-width: 0.2; }
  line-color:brown;
  line-dasharray:3,2;
  line-smooth:0.6;
  [zoom <= 11] { line-dasharray:2,0.5; }
  [zoom >= 12] {
    text-face-name:'CartoGothic Std Book';
    text-size:11;
    [zoom = 13] { text-size: 10; }
    [zoom = 12] { text-size: 7; }
    text-name:'[name]';
    text-placement:line;
    text-allow-overlap:true;
    text-spacing:100;
    text-halo-fill:white;
    text-halo-radius:2;
    text-fill:brown;
  }

}
#waterways[waterway="river"] {
  line-width:0.7;
  line-smooth:0.8;
  line-color:hsla(220, 0.8, 60%,0.6);
  [zoom <8] { 
    line-width:0.5; 
    line-color:hsla(220, 0.8, 80%,0.6);
  }
  [zoom >= 14] {
    text-face-name:'CartoGothic Std Book';
    text-size:13;
    text-name:'[name]';
    text-placement:line;
    text-fill:darken(@water,20%);
    text-halo-radius:1;
    text-halo-fill:lighten(@water,20%);
    line-smooth:1.0;
  }
}
#waterways[waterway="stream"],#waterways[waterway="drain"] {
  [zoom >= 8] {
    line-width:0.5;
    line-color:hsla(220, 0.8, 80%,0.5);
    line-smooth:0.8;
  }
  [zoom >= 15] {
    line-width: 3;
    text-face-name:'CartoGothic Std Book';
    text-size:11;
    text-name:'[name]';
    text-placement:line;
    text-fill:darken(@water,20%);
    text-halo-radius:1;
    text-halo-fill:white;
  }
}

#water { 
  polygon-fill:@water; line-color:darken(@water,10%);
  line-smooth:1.0;
  polygon-smooth:1.0;
}


#rail {
  line-width:1;
  line-color:hsl(140,80%,40%);
  [railway="preserved"]{ 
    line-width: 0.5; 
    // represent preserved lines similar to passenger services
    // assuming that they all have some kind of regular (if infrequent) service
    ::altdashes {
      line-width:2.5;
      line-color:hsl(60,90%,80%);
    }
    ::dots {
      line-width:2.5;
      line-color:hsl(140,80%,20%);
      line-dasharray:4,4;
    }

    ::label[zoom >= 10] {
      text-face-name:'CartoGothic Std Book';
      text-fill:hsl(140,70%,30%);
      text-size:11;
      [zoom >= 12] { text-size:12; }
      text-name:'[name]';
      text-placement:line;
      text-allow-overlap:true;
      text-halo-fill:white;
      text-halo-radius:2;
    }
  }

  /*  ::dots { 
    line-width:2.5;
    [railway="preserved"] { line-width: 1.0; }
    line-color:hsl(140,80%,20%);
    line-dasharray:4,4;
  }*/

 }

#oldrail {
  ::greendashes {
    line-width:0.5;
    line-color:hsl(140,40%,40%);
    line-dasharray:6,2;
  }
  ::label[zoom >= 10] {
    text-face-name:'CartoGothic Std Book';
    text-fill:hsl(140,40%,40%);
    text-size:10;
    text-name:'[name]';
    text-placement:line;
    text-allow-overlap:true;
    text-spacing:100;
    text-halo-fill:white;
    text-halo-radius:1;
  }
}

/* Actual services */
#trains {
  ::carpet {
    line-width:5;
    line-color: white;
  }
  line-width:2;
  line-color:hsl(140,80%,40%);
  ::dots { 
    line-width:2.5;
    line-color:hsl(140,80%,20%);
    line-dasharray:4,4;
  }
}


#stations {
  marker-width:8;
  [zoom <= 10] { marker-width: 6; }
  [zoom <= 8] { marker-width: 4; }
  [zoom<=7] { marker-width:2; }
  marker-fill:hsla(100,70%,40%,80%);
  marker-line-color:hsla(100,70%,20%,100%);
  marker-line-width:0;
  [zoom >= 12] { marker-line-width:1;}
  marker-allow-overlap:true;
  marker-ignore-placement:true;
}

#oldstations {
  marker-type:ellipse;
  marker-width:6;
  [zoom = 8] { marker-width: 4; }
  [zoom<=7] { marker-width:2; }
  marker-fill:hsla(100,20%,50%,40%);
  marker-line-width:1;
  marker-line-color:hsla(100,40%,50%,40%);
//  marker-line-width:3;
  
  marker-ignore-placement:true;
  marker-allow-overlap:true;
  ::label[zoom >= 10] {
    text-face-name: 'Roboto Condensed Light';
    text-name: '[name]';
    text-placement-type:simple;
    text-placements: "E,S,N";
  
    text-fill:hsla(100,40%,30%,100%);
    text-halo-fill:white;
    text-halo-radius:1;
    text-size:11;
    text-dx: 8;
  }
  
}


#green {
  polygon-fill:hsla(100,50%,90%,100%);
  line-width:0;
//  line-smooth:0.8;
  polygon-smooth:0.5;
  [zoom >= 11] { 
    polygon-fill:hsl(100,50%,95%);
    line-width:0.5;
    line-color:hsl(100,70%,90%);
    line-smooth:0.2;
    polygon-smooth:0.2;
  }
    
}

#waterpoly {
  polygon-fill:@water;
}

#beach { polygon-fill:hsla(45,70%,70%,0.3); }


#fastact[zoom>=14] {
  line-width:4;
  line-color:hsla(240,80%,40%,40%);
  line-dasharray:20,8;
/*    text-face-name:'CartoGothic Std Book';
    text-fill:hsla(240,80%,40%,40%);
    text-size:12;
    text-name: "a";
    text-placement:line;
    text-allow-overlap:true;
    text-spacing:100;
//    text-halo-fill:white;
    text-halo-radius:1;*/
}

#stateboundaries {
  line-width: 1;
  line-color: #959;
  [zoom >= 9] { line-dasharray:4,8; }
}




#walkingpaths[zoom >= 14] {
  line-width:1;
  line-dasharray:1,2;
  line-color:hsl(110,90%,30%);
}
