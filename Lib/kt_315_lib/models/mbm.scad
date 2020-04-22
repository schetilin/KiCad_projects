$fs = 1;

underground = 2;
herm_l = 2;

module pin(d, l, h) {
	$fs = 0.1;
	r = d;

	color([0.75, 0.75, 0.75])
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

module herm(d) {
	color([0.4, 0.9, 0.45])
	difference() {
		resize([0, 0, herm_l*2])
		sphere(d = d, center = true);

		translate([-d/2, -d/2, -d])
		cube(d);
	}
}

module c_herm(d, l, step) {
	translate([(l - herm_l*2)/2, 0, d/2])
	rotate([0, -90, 0]) {
		color("silver")
		cylinder(h = l - herm_l*2, d = d);
	
		translate([0, 0, l - herm_l*2]) {
			herm(d);
			translate([0, 0, herm_l])
			pin(0.8, (step - l)/2, d/2+underground);
		}
	
		mirror([0, 0, 1]) {
			herm(d);
			translate([0, 0, herm_l])
			pin(0.8, (step - l)/2, d/2+underground);
		}
	}
}

_inch = 1/2.54;
scale([_inch, _inch, _inch]) {
	c_herm(5, 16, 25);
	//c_herm(5, 17, 25);
	//c_herm(6.5, 17, 25);
	//c_herm(6.5, 19, 27);
	//c_herm(7.5, 22, 30);
	//c_herm(8.5, 19.5, 26);
	//c_herm(8.5, 33, 40);
	//c_herm(11, 33, 40);
}