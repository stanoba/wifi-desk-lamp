// WiFi Controlled Desk Lamp
// by stanoba http://www.thingiverse.com/stanoba/about
// https://www.thingiverse.com/thing:4697599
// https://github.com/stanoba/wifi-desk-lamp

height = 31;
width = 80;

/// PCB
//translate([0,-49.5,0]) rotate([0,0,45]) color([0,1,0]) import("PCB.stl", convexity=3);

module main(){
	difference(){
		translate([0,0,height/2]) cylinder(h = height, d = width, center = true, $fn = 160);
		translate([0,0,height-(5/2)]) cylinder(h = 5, d = width-2, center = true, $fn = 160);
		translate([0,0,(height/2)+2.5]) cylinder(h = height, d = 73, center = true, $fn = 160);
	}
	// Reinforcement - Power plug
	rotate([0,0,45]) translate([-36.9,0,13])  cube([3,19,height-5],center = true);
	
	// Reinforcement - Button
	rotate([0,0,-135]) translate([-36.9,0,13])  cube([3,19,height-5],center = true);
	
	// IR - Button
	rotate([0,0,-45]) translate([-36.9,0,13])  cube([3,19,height-5],center = true);
}

module pillars(){
	// pillars
	translate([32,0,(height/2)]) cylinder(h = height, d = 7, center = true, $fn = 30);
	translate([-32,0,(height/2)]) cylinder(h = height, d = 7, center = true, $fn = 30);
	translate([0,32,(height/2)]) cylinder(h = height, d = 7, center = true, $fn = 30);
	translate([0,-32,(height/2)]) cylinder(h = height, d = 7, center = true, $fn = 30);
	
	// pillar reinforcement
	translate([0,-35.5,(height/2)-2.5]) cube([7,7,height-5],center = true);
	translate([0,35.5,(height/2)-2.5]) cube([7,7,height-5],center = true);
	translate([-35.5,0,(height/2)-2.5]) cube([7,7,height-5],center = true);
	translate([35.5,0,(height/2)-2.5]) cube([7,7,height-5],center = true);

	// PCB pillars
	translate([22,0,(4)]) cylinder(h = 3, d = 6, center = true, $fn = 30);
	translate([-22,0,(4)]) cylinder(h = 3, d = 6, center = true, $fn = 30);
	translate([0,22,(4)]) cylinder(h = 3, d = 6, center = true, $fn = 30);
	translate([0,-22,(4)]) cylinder(h = 3, d = 6, center = true, $fn = 30);
}

module pillar_holes(){
	// pillar holes
	translate([32,0,(height/2)+2.5]) cylinder(h = height, d = 2.5, center = true, $fn = 30);
	translate([-32,0,(height/2)+2.5]) cylinder(h = height, d = 2.5, center = true, $fn = 30);
	translate([0,32,(height/2)+2.5]) cylinder(h = height, d = 2.5, center = true, $fn = 30);
	translate([0,-32,(height/2)+2.5]) cylinder(h = height, d = 2.5, center = true, $fn = 30);

	// PCB pillar holes
	translate([22,0,(4.5)]) cylinder(h = 6, d = 2.5, center = true, $fn = 20);
	translate([-22,0,(4.5)]) cylinder(h = 6, d = 2.5, center = true, $fn = 20);
	translate([0,22,(4.5)]) cylinder(h = 6, d = 2.5, center = true, $fn = 20);
	translate([0,-22,(4.5)]) cylinder(h = 6, d = 2.5, center = true, $fn = 20);
}    



///////////////////////////////////////////////////////

module cutouts(){
	// Button hole
	translate([28,28,11]) rotate([-45,90,0]) cylinder(h = 10, d = 7.5, center = true, $fn = 30);
	rotate([0,0,-135]) translate([-36,0,24])  cube([4,7.5,height-5],center = true);
	
	// Power plug
	translate([-28,-28,13.5]) rotate([-45,90,0]) cylinder(h = 10, d = 9, center = true, $fn = 30);
	
	// IR sensor
	translate([0,0,5]){
		hull(){
			translate([-28,28,16]) rotate([45,90,0]) cylinder(h = 7, d1 = 14, d2 = 3.5, center = true, $fn = 30);
			translate([-28,28,14]) rotate([45,90,0]) cylinder(h = 7, d1 = 14, d2 = 3.5, center = true, $fn = 30);
		}
		hull(){
			translate([-28,28,16]) rotate([45,90,0]) cylinder(h = 15, d = 3.5, center = true, $fn = 30);
			translate([-28,28,14]) rotate([45,90,0]) cylinder(h = 15, d = 3.5, center = true, $fn = 30);
		}
	}
	// Microphone
	translate([-31,13.5,20.3]) rotate([22,90,0]) cylinder(h = 8, d = 10.5, center = true, $fn = 30);
	translate([-31,13.5,23.2]) rotate([22,90,0]) cube([6,10.5,8],center = true);
	
	// Microphone holes
	translate([-31,13.5,20.3]) rotate([22,90,0]) cylinder(h = 15, d = 1.2, center = true, $fn = 30);
	translate([-31,16,20.3]) rotate([22,90,0]) cylinder(h = 15, d = 1.2, center = true, $fn = 30);
	translate([-31,11,20.3]) rotate([22,90,0]) cylinder(h = 15, d = 1.2, center = true, $fn = 30);
	
	translate([-31,13.5,22.8]) rotate([22,90,0]) cylinder(h = 15, d = 1.2, center = true, $fn = 30);
	translate([-31,16,22.8]) rotate([22,90,0]) cylinder(h = 15, d = 1.2, center = true, $fn = 30);
	translate([-31,11,22.8]) rotate([22,90,0]) cylinder(h = 15, d = 1.2, center = true, $fn = 30);

	translate([-31,13.5,17.8]) rotate([22,90,0]) cylinder(h = 15, d = 1.2, center = true, $fn = 30);
	translate([-31,16,17.8]) rotate([22,90,0]) cylinder(h = 15, d = 1.2, center = true, $fn = 30);
	translate([-31,11,17.8]) rotate([22,90,0]) cylinder(h = 15, d = 1.2, center = true, $fn = 30);

	
	
}

difference(){
	union(){
		pillars();
		main();
	}
	pillar_holes();
	cutouts();    
}
