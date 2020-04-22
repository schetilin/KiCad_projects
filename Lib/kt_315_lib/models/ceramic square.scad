$fs = 0.1;
underground = 2;

module square(size, pin_dist) {
	_inch = 1 / 2.54;
	upground = 3;
	wire = 0.3;
	scale([_inch, _inch, _inch])
	translate([0, 0, size / 2 + upground]) {
		color("red") {
			intersection() {
				union() {
					resize([size / 10, 0, 0])
					sphere(d = size * sqrt(2));

					translate([-size / 40, pin_dist / 2, -size / 2 - wire / 2])
					rotate(a = 30, v = [1, 0, 0])
					cylinder(h = size * 0.75, r = wire);

					translate([size / 40, -pin_dist / 2, -size / 2 - wire / 2])
					rotate(a = 30, v = [-1, 0, 0])
					cylinder(h = size * 0.75, r = wire);
				}
		
				translate([-size / 2, -size / 2, -size / 2])
				cube(size);
			}
		}
		
		translate([0, pin_dist / 2, -(size / 2 + upground + underground)])
		cylinder(h = upground + underground, d = wire);

		translate([0, -pin_dist / 2, -(size / 2 + upground + underground)])
		cylinder(h = upground + underground, d = wire);
	}
}

//square(5, 2.5);
//square(8, 4.5);
//square(10, 5.5);
//square(11.5, 5.5);
square(13, 6);