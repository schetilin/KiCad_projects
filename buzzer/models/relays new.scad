//$fs = 0.1;
underground = 2;

module rounded_cube(x, y, z, r) {
	$fs = r/2;
	d = r*2;
	union() {
		// рёбра
		translate([r, r, r]) {
			sphere(d = d);
			cylinder(h = z-d, d = d);
			rotate([0, 90, 0])
			cylinder(h = x-d, d = d);
			rotate([-90, 0, 0])
			cylinder(h = y-d, d = d);
		}
		translate([r, y-r, z-r]) {
			sphere(d = d);
			rotate([180, 0, 0])
			cylinder(h = z-d, d = d);
			rotate([0, 90, 0])
			cylinder(h = x-d, d = d);
			rotate([90, 0, 0])
			cylinder(h = y-d, d = d);
		}
		translate([x-r, r, z-r]) {
			sphere(d = d);
			rotate([180, 0, 0])
			cylinder(h = z-d, d = d);
			rotate([0, -90, 0])
			cylinder(h = x-d, d = d);
			rotate([-90, 0, 0])
			cylinder(h = y-d, d = d);
		}
		translate([x-r, y-r, r]) {
			sphere(d = d);
			cylinder(h = z-d, d = d);
			rotate([0, -90, 0])
			cylinder(h = x-d, d = d);
			rotate([90, 0, 0])
			cylinder(h = y-d, d = d);
		}
		// недостающие углы
		translate([r, r, z-r]) sphere(d=d);
		translate([r, y-r, r]) sphere(d=d);
		translate([x-r, r, r]) sphere(d=d);
		translate([x-r, y-r, z-r]) sphere(d=d);
		// грани
		translate([0, r, r]) cube([x, y-d, z-d]);
		translate([r, 0, r]) cube([x-d, y, z-d]);
		translate([r, r, 0]) cube([x-d, y-d, z]);
	}
}

module pin(l, w, h) {
	$fs = 0.1;
	color("silver")
	translate([0, 0, -h/2 + l/4])
	union() {
		cube([l, w, h - l/2], center = true);
		translate([0, w/2, -h/2 + l/4])
		rotate([90, 0, 0])
		cylinder(d = l, h = w);
	}
	//cylinder(d = d, h = l);
}

module cyl_pin(l, d) {
	color("silver")
	union() {
		translate([0, 0, -l+d/2])
		cylinder(h = l-d/2, d = d);
		translate([0, 0, -l+d/2])
		sphere(d = d);
	}
}

module relay(l, w, h, pin_l, pin_w, pin_h, s1, s2, s3, s4) {
	_inch = 1/2.54;
	depth = diameter * 0.6;
	scale([_inch, _inch, _inch]) {
		color([0.1, 0.1, 0.1])
		translate([-w/2, -l/2, 0])
		cube([w, l, h]);
		// pins
		translate([0, -l/2, 0]) {
			// central pin
			translate([0, s1, 0])
			pin(l = pin_l, w = pin_w, h = pin_h);
			// coil
			translate([s4/2, s1 + s2, 0])
			pin(l = pin_l, w = pin_w, h = pin_h);
			translate([-s4/2, s1 + s2, 0])
			pin(l = pin_l, w = pin_w, h = pin_h);
			// contacts
			translate([s4/2, s1 + s2 + s3, 0])
			pin(l = pin_l, w = pin_w, h = pin_h);
			translate([-s4/2, s1 + s2 + s3, 0])
			pin(l = pin_l, w = pin_w, h = pin_h);
		}
	}
}

module PEC10() {
	_inch = 1/2.54;
	sx = 11.15; sy = 16.7; sz = 19.5;
	smx = 10.7; smy = 16.15; smz = 0.8;
	w = 0.3;
	pin_l = 7; pin_d = 1;
	scale([_inch, _inch, _inch]) {
		union () {
			translate([-sx/2, -sy/2, 0]) {
				translate([0, 0, smz])
				color("silver") rounded_cube(sx, sy, sz - smz, 1.5);
				color("silver") difference() {
					translate([(sx-smx)/2, (sy-smy)/2, -5])
					rounded_cube(smx, smy, 10, 1.5);
					translate([(sx-smx+w)/2, (sy-smy+w)/2, -5])
					rounded_cube(smx-w, smy-w, 10, 1.5);
					translate([0, 0, -10]) cube([sx, sy, 10]);
				}
				color([0.3, 0.2, 0.1]) difference() {
					translate([(sx-smx+w)/2, (sy-smy+w)/2, -5])
					rounded_cube(smx-w, smy-w, 10, 1.5);
					translate([0, 0, -9.8]) cube([sx, sy, 10]);
				}
			}
			translate([3, -5.75, 1]) cyl_pin(pin_l+1, pin_d);
			translate([-3, -5.75, 1]) cyl_pin(pin_l+1, pin_d);
			translate([0, 1.15, 1]) cyl_pin(pin_l+1, pin_d);
			translate([3, 5.75, 1]) cyl_pin(pin_l+1, pin_d);
			translate([-3, 5.75, 1]) cyl_pin(pin_l+1, pin_d);
		}
		
	}
}

// JZC-20F
//relay(l = 22.5, w = 16.5, h = 24, pin_h = 5, pin_l = 1, pin_w = 0.4, s1 = 2, s2 = 2, s3 = 12.2, s4 = 12);
PEC10();
