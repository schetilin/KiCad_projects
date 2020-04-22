$fs = .5;

module transistor() {
	d1 = 8; h1 = 1.7;
	d2 = 11.7; h2 = 0.8;
	d3 = 8.5; h3 = 4.7; r3 = 1;
	pd = 0.5;
	union() {
		color("silver")
		difference() {
			rotate_extrude() {
					translate([-d1/2, 0])
					square([d1/2, h1]);
					translate([-d2/2, h1])
					square([d2/2, h2]);
					translate([-d3/2, h1+h2])
					square([d3/2, h3 - r3]);
					translate([-(d3-r3*2)/2, h1+h2+h3-r3])
					square([d3/2-r3, r3]);
					translate([-(d3-r3*2)/2, h1+h2+h3-r3])
					circle(r3);
			}
			
			translate([2.1, 0, -1]) cylinder(d = 1.5, h = 2);
			translate([-2.1, 0, -1]) cylinder(d = 1.5, h = 2);
		}
		translate([2.1, 0, 0.1]) {
			color([0.1, 0.1, 0.1]) cylinder(d = 1.5, h = 2);
			color("silver") rotate([180, 0, 0]) cylinder(d = pd, h = 40);
		}
		translate([-2.1, 0, 0.1]) {
			color([0.1, 0.1, 0.1]) cylinder(d = 1.5, h = 2);
			color("silver") rotate([180, 0, 0]) cylinder(d = pd, h = 40);
		}
		color("silver")
		translate([0, 2.1, 0])
		rotate([90, 0, 0])
		cylinder(h = pd*3, d = pd);
		color("silver")
		translate([0, 2.1, 0])
		rotate([180, 0, 0])
		cylinder(d = pd, h = 40);
	}
}

_inch = 1/2.54;
scale([_inch, _inch, _inch]) {
	translate([0, 0, 5])
	transistor();
}