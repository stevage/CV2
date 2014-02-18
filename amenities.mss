#amenities[amenity="cafe"][zoom >= 15] {
  point-file:url('maki/renders/cafe-18.png');
  point-allow-overlap:true;point-ignore-placement:true;
}
#amenities[amenity="pub"][zoom >= 14],
#amenities[amenity="bar"][zoom >= 14]{
  point-file:url('maki/renders/beer-18.png');
  [brewery="yes"] {
    point-file:url('http://www.clker.com/cliparts/e/3/e/b/12161800611310287885fattymattybrewing_Fatty_Matty_Brewing_-_Beer_Mug_Icon.svg.hi.png');
    //point-file:url('https://dl.dropboxusercontent.com/u/767553/beermug.png');
    point-transform:scale(0.05,0.05);
  }
  point-allow-overlap:true;point-ignore-placement:true;
}

#amenities[amenity="restaurant"][zoom >= 15] {
  point-file:url('maki/renders/restaurant-18.png');
  point-allow-overlap:true;point-ignore-placement:true;
}

#amenities[amenity="fast_food"][zoom >= 15] {
  point-file:url('maki/renders/fast-food-18.png');
  point-allow-overlap:true;point-ignore-placement:true;
}

#amenities[shop="supermarket"][zoom >= 15] {
  point-file:url('maki/renders/grocery-18.png');
  point-allow-overlap:true;point-ignore-placement:true;
}
#amenities[shop="convenience"][zoom >= 15],
#amenities[shop="general"][zoom >= 15] {
//  point-file:url('maki/renders/grocery-12.png');
  point-file:url("http://www.sjjb.co.uk/mapicons/png/shopping_convenience.p.16.png");
  point-allow-overlap:true;point-ignore-placement:true;
}
#amenities[shop="bakery"][zoom >= 15] {
//  marker-file:url('http://www.sjjb.co.uk/mapicons/svg/shopping/bakery.svg');
  marker-file:url('icons/shopping_bakery.p.16.png');
  marker-allow-overlap:true;marker-ignore-placement:true;

}
#amenities[amenity="toilet"][zoom >= 15] {
  point-file:url('maki/renders/toilets-18.png');
  point-allow-overlap:true;point-ignore-placement:true;
}

#amenities[shop="bicycle"][zoom >= 15] {
  marker-file:url('http://www.sjjb.co.uk/mapicons/png/shopping_bicycle.p.20.png');
  marker-allow-overlap:true;marker-ignore-placement:true;
}

#amenities[tourism="winery"][zoom >= 13],
#amenities[amenity="winery"][zoom >= 13]
{
  marker-file:url('http://www.millerwinery.com/sites/default/files/content-images/grape.png');
  marker-allow-overlap:true;marker-ignore-placement:true;
}

#amenities[tourism="camp_site"][zoom >= 13] {
  point-file:url('maki/renders/campsite-12.png');
  point-allow-overlap:true;point-ignore-placement:true;
  [zoom >= 15] {
    text-face-name:'Roboto Condensed Light';
    text-size:10;
    text-name:'[name]';
    text-dx:4;
    text-allow-overlap:true;
    text-fill: hsl(220,90%,50%);
  }
}
#amenities[tourism="caravan_site"][zoom >= 12] {
  point-file:url('http://www.sjjb.co.uk/mapicons/png/accommodation_caravan_park.p.20.png');
  point-allow-overlap:true;point-ignore-placement:true;
  [zoom >= 15] {
    text-face-name:'Roboto Condensed Light';
    text-size:10;
    text-name:'[name]';
    text-dx:8;
    text-allow-overlap:true;
    text-fill: hsl(220,90%,50%);
    text-wrap-width:50;
  }
}
