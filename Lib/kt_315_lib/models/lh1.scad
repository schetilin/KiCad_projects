$fs = 0.1;

module pin(d, h) {
	pin_diameter = 0.75;
	pin_h = 6;
	union() {
		color("yellow")
		cylinder(d = d, h = h);
		translate([0, 0, -h])
		color("silver")
		cylinder(d = pin_diameter, h = pin_h);
	}
}

module inductor() {
	cyl_up = 2;
	d = 7.5;
	l = 24;
	wall = 0.5;
	coil = 0.2;
	bx = 8; by = 10; bz = 5;
	bc_diameter = 3;
	cs = 4.0;
	cx = 1; cy = 1.25; cz = 0.75;
	hh = 10; hph = 1; hpd = 4;
	hhx = 4; hhy = 1.5; hhz = 1.5;
	difference() {
		union() {
			// cylinder
			translate([-l/2, 0, d/2 + cyl_up])
			rotate([0, 90, 0])
			union() {
				color("yellow")
				cylinder(d = d, h = l);
				color("brown")
				translate([0, 0, 14])
				cylinder(d = d+coil*2, h = 7);
			}
			// base
			translate([-l/2 + 2.5, 0, 0.5])
			difference() {
				union() {
					color("yellow")
					translate([0, -by/2, 0])
					cube([bx, by, bz]);
					translate([bc_diameter/2, by/2, 0])
					pin(bc_diameter, bz);
					translate([bc_diameter/2, -by/2, 0])
					pin(bc_diameter, bz);
					translate([bx - bc_diameter/2, by/2, 0])
					pin(bc_diameter, bz);
					translate([bx - bc_diameter/2, -by/2, 0])
					pin(bc_diameter, bz);
					color("yellow")
					translate([0, cs/2, -cz])
					cube([cx, cy, cz]);
					color("yellow")
					translate([0, -cs/2 - cy, -cz])
					cube([cx, cy, cz]);
					color("yellow")
					translate([bx-cx, cs/2, -cz])
					cube([cx, cy, cz]);
					color("yellow")
					translate([bx-cx, -cs/2 - cy, -cz])
					cube([cx, cy, cz]);
				}
				translate([cx, -6.5/2, -0.1])
				cube([bx-cx*2, 6.5, bz-cx/2]);
			}
		}
		// hole
		translate([-l/2-1, 0, d/2 + cyl_up])
		rotate([0, 90, 0])
		cylinder(d = d - wall*2, h = l+2);
	}
	// heart
	color([0.2, 0.2, 0.2])
	translate([0, 0, d/2 + cyl_up])
	rotate([0, 90, 0])
	difference() {
		union() {
			cylinder(d = d - wall, h = hh);
			translate([0, 0, -hph])
			cylinder(d = hpd, h = hph);			
		}
		rotate([0, 0, 30])
		translate([-hhx/2, -hhy/2, hh - hhz + 0.1])
		cube([hhx, hhy, hhz+0.1]);
	}
}

_inch = 1/2.54;
scale([_inch, _inch, _inch])
inductor();
