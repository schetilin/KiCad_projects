$fs = 0.1;

module pin() {
	w = 1;
	d = 0.2;
	h = 6;
	color("silver")
	translate([-w/2, -d/2, -h])
	cube([w, d, h]);
}

module transistor() {
	_inch = 1 / 2.54;
	w1 = 6.5;
	w2 = 6;
	w3 = 5.5;
	d1 = 2.2;
	d2 = 2;
	h = 4.5;
	h1 = 4;
	h2 = 4.5;
	scale([_inch, _inch, _inch]) {
		color("red")
		translate([0, d1/2, 0])
		difference() {
			rotate(a = 90, v = [1, 0, 0])
			linear_extrude(height = d1)
			polygon(points = [
				[-w1/2, 0], [-w2/2, h1], [-w3/2, h2], [w3/2, h2], [w2/2, h1], [w1/2, 0]
			]);

			rotate(a = 6.34, v = [1, 0, 0])
			translate([-w1/2, 0, 0])
			cube([w1, 1, h]);

			rotate(a = 30, v = [1, 0, 0])
			translate([-w1/2, -0.5+d2, 3])
			cube([w1, 1, h]);
		}
/*		difference() {
			translate([-w1/2, -d1/2, 0])
			cube([w1, d1, h]);

			translate([-w1/2-1, d1/2, 0])
			rotate(a = 6.34, v = [1, 0, 0])
			cube([w1+2, d1, h+1]);

			cube([w1, d1, h]);
		}*/
/*		polyhedron(points = [
			[-w1/2, -d1/2, 0], [-w1/2, d1/2, 0], [w1/2, d1/2, 0], [w1/2, -d1/2, 0],
			[-w2/2, -d1/2, h1], [w2/2, -d1/2, h1], [-w3/2, -d1/2, h2], [w3/2, -d1/2, h2]
		], faces = [
			[0, 1, 2], [0, 2, 3],
			[3, 0, 4], [3, 4, 6], [3, 6, 7], [3, 7, 5]
		]);*/
		pin();
		translate([-2.5, 0, 0]) pin();
		translate([2.5, 0, 0]) pin();
	}
}


transistor();