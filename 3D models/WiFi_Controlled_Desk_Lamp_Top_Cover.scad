// WiFi Controlled Desk Lamp
// by stanoba http://www.thingiverse.com/stanoba/about
// https://www.thingiverse.com/thing:4697599
// https://github.com/stanoba/wifi-desk-lamp

height = 3; //22.5;
width = 80;

module main(){
	difference(){
		union(){
			translate([0,0,height/2]) cylinder(h = height, d = width, center = true, $fn = 160);
			translate([0,0,(height/2)+3]) cylinder(h = 3, d = width-3 , center = true, $fn = 160);
		}
		translate([0,0,(height/2)+3]) cylinder(h = 3, d = width-6, center = true, $fn = 160);
	}
}

module pillars(){
	// pillars
	translate([32,0,(height/2)+height])  cylinder(h = height, d = 11, center = true, $fn = 30);
	translate([-32,0,(height/2)+height]) cylinder(h = height, d = 11, center = true, $fn = 30);
	translate([0,32,(height/2)+height])  cylinder(h = height, d = 11, center = true, $fn = 30);
	translate([0,-32,(height/2)+height]) cylinder(h = height, d = 11, center = true, $fn = 30);
}

module pillar_holes(){
	// pillar holes
	translate([32,0,(height/2)]) cylinder(h = height, d = 3.2, center = true, $fn = 30);
	translate([-32,0,(height/2)]) cylinder(h = height, d = 3.2, center = true, $fn = 30);
	translate([0,32,(height/2)]) cylinder(h = height, d = 3.2, center = true, $fn = 30);
	translate([0,-32,(height/2)]) cylinder(h = height, d = 3.2, center = true, $fn = 30);
	
	translate([32,0,1]) cylinder(h = 2, d1 = 6, d2 = 3.2, center = true, $fn = 30);
	translate([-32,0,1]) cylinder(h = 2, d1 = 6, d2 = 3.2, center = true, $fn = 30);
	translate([0,32,1]) cylinder(h = 2, d1 = 6, d2 = 3.2, center = true, $fn = 30);
	translate([0,-32,1]) cylinder(h = 2, d1 = 6, d2 = 3.2, center = true, $fn = 30);
	
	
	// pillar big holes
	translate([32,0,(height/2)+height]) cylinder(h = height, d = 7.5, center = true, $fn = 30);
	translate([-32,0,(height/2)+height]) cylinder(h = height, d = 7.5, center = true, $fn = 30);
	translate([0,32,(height/2)+height]) cylinder(h = height, d = 7.5, center = true, $fn = 30);
	translate([0,-32,(height/2)+height]) cylinder(h = height, d = 7.5, center = true, $fn = 30);
}    



///////////////////////////////////////////////////////

module cutouts(){
	// Cable hole
	rotate([0,0,45]){
		translate([width/2,0,(height/2)+0.5+14]) cube([10,6,30],center = true);
		translate([(width/2)-5,0,(height/2)+0.5+5]) rotate([90,90,0]) cylinder(h = 6, d = 12, center = true, $fn = 60);
	}
}

difference(){
	union(){
		pillars();
		main();
	}
	pillar_holes();   
	cutouts();
}
