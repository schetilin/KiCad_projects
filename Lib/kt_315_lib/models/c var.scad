$fs = 0.1;
underground = 2;

module pin() {
	w = 2;
	d = 0.5;
	h = 7;
	color("gray")
	translate([-w/2, -d/2, -h])
	difference() {
		union() {
			translate([0, 0, w/2])
			cube([w, d, h - w/2]);

			translate([w/2, d, w/2])
			rotate(a = 90, v = [1, 0, 0])
			cylinder(h = d, d = w);
		}

		union() {
			translate([w/2, d+0.1, w])
			rotate(a = 90, v = [1, 0, 0])
			cylinder(h = d + 0.2, d = w/2);

			translate([w/4, d+0.1, w/2])
			rotate(a = 90, v = [1, 0, 0])
			cube([w/2, w/2, d+0.2]);

			translate([w/2, d+0.1, w/2])
			rotate(a = 90, v = [1, 0, 0])
			cylinder(h = d + 0.2, d = w/2);
		}		
	}
}

module cvar(diameter, height) {
	_inch = 1/2.54;
	depth = diameter * 0.6;
	scale([_inch, _inch, _inch]) {
		color("white") union() {
			cylinder(h = height, d = diameter);

			translate([0, -depth / 2, 0])
			cube([diameter * 0.9, depth, height]);
		}
		difference() {
			union() {
				color("yellow") 
				translate([0, 0, height])
				cylinder(h = 1.5, d = diameter);

				// nut
				color("gray")
				translate([0, 0, height+1.5]) 
				difference() {
					cylinder(h = 1, d = 3.8);

					rotate(a = 30, v = [0, 0, 1])
					translate([-1.9, -0.25, 0.51])
					cube([3.8, 0.5, 1]);
				}
			}

			color("yellow")
			difference() {
				translate([0, 0, height+0.5])
				cylinder(h = 1.5, d = diameter * 0.9);

				translate([0, 0, height+0.5])
				cylinder(h = 1.5, d = 4);
			}
		}
		translate([0, diameter / 2, 2])
		pin();

		translate([0, -diameter / 2, 2])
		pin();

		translate([9, 0, 2])
		rotate(a = 90, v = [0, 0, 1])
		pin();
	}
}

cvar(10, 5);