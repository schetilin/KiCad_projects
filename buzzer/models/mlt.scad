$fs = 0.1;
plate_thick = 1/30;
plate_len = 1/2.5;
underground = 2;

module pin(d, l, h) {
	r = d;

	union() {
		cylinder(h = l-r, d = d);
	
		translate([-h - underground, 0, l])
		rotate(a = 90, v = [0, 1, 0])
		cylinder(h = h + underground-r, d = d);
	
		translate([-d, 0, l - r])
		rotate([90, 0, 0])
		intersection() {
			rotate_extrude()
			translate([r, 0, 0])
			circle(d = d);
	
			translate([0, 0, -d])
			cube(d*2);
		}
	}
}

module plate(d) {
	thick = d * plate_thick;
	l = d * plate_len;
	r = 0.5;
	rotate_extrude() union() {
		translate([d/2 - thick, 0, 0])
		square([thick, l - r]);

		translate([d/2 - r, l - r, 0])
		circle(r);

		translate([0, l - thick, 0])
		square([d/2 - r, thick]);
	}
}

module r(D, L, d, step) {
	thick = D * plate_thick;
	red_color = [0.9, 0.31, 0.3];
	translate([L/2, 0, D / 2]) rotate([0, -90, 0]) union() {
		color(red_color)
		translate([0, 0, D * plate_len-0.5])
		cylinder(h = L - (D * plate_len * 2)+1, d = D - thick*2);
	
		color(red_color)
		translate([0, 0, L - D * plate_len])
		plate(D);
	
		color([0.75, 0.75, 0.75])
		translate([0, 0, L])
		pin(d, (step - L) / 2, D/2);
	
		color(red_color)
		translate([0, 0, D * plate_len])
		mirror([0, 0, 1])
		plate(D);
	
		color([0.75, 0.75, 0.75])
		mirror([0, 0, 1])
		pin(d, (step - L) / 2, D/2);
	}
}

_inch = 1/2.54;
scale([_inch, _inch, _inch]) {
	// 0.125
	r(2.2, 6, 0.6, 10);
	// 0.25
	//r(3, 7, 0.6, 10);
	// 0.5
	//r(4.2, 10.8, 0.8, 13);
	//r(4.2, 10.8, 0.8, 16);
	// 1
	//r(6.6, 13, 0.8, 17);
	//r(6.6, 13, 0.8, 20);
	// 2
	//r(8.6, 18.5, 1, 25);
}