$fs = 0.5;
$fa = 0.1;

// толщина металла
tm = 0.2;
// толщина платы
t = 0.75;

module pin(h1) {
	$fs = 0.2;
	l = 4;
	w = 1;
	color("silver")
	union() {
		translate([0, -1, 0])
		cube([h1, 2, tm]);

		translate([h1, -w/2, 0])
		cube([l - w/2, w, tm]);

		translate([h1 + l - w/2, 0, 0])
		cylinder(h = tm, d = w);
	}
}

module pin_holder() {
	// держалки крайних пинов
	color("silver")
	translate([0, 0, tm/2])
	union() {
		cube([1, 3.25, tm], center = true);
		cube([2, 2, tm], center = true);

		translate([0, 3.25/2, -(t+tm)/2])
		cube([1, tm, t + 2*tm], center = true);

		translate([0, -3.25/2, -(t+tm)/2])
		cube([1, tm, t + 2*tm], center = true);

		translate([0, 3.25/2-0.25, -(t+tm)])
		cube([1, 0.5, tm], center = true);

		translate([0, -(3.25/2-0.25), -(t+tm)])
		cube([1, 0.5, tm], center = true);

	}
}

module rezistor(pos) {
	d = 9.5;
	l = 11.8;
	// длина квадратной части
	sl = l - d/2;
	// диаметр отверстия
	dh = 3.5;
	// высота держалки среднего пина
	hp = 1.3;
	// размер отверстия для отвёртки
	hh = 1;
	wh = 2;

	// base
	color([0.1, 0.1, 0.1])
	linear_extrude(height = t)
	difference() {
		union() {
			circle(d = d);
			
			translate([sl/2, 0, 0])
			square([sl, d], center = true);
		}
		
		circle(d = dh);

		translate([sl/2, 0])
		square([sl+0.1, 1], center = true);

		// выемки под крепления концевых пинов
		translate([sl-2, d/2-0.5])
		square([1, 0.51]);

		translate([sl - 2, -d/2 - 0.01])
		square([1, 0.51]);

		translate([sl - 2, -1])
		square([1, 2]);

		translate([sl-0.55, (d/2-0.5)/2+0.5-1 - 0.05])
		square(2.1);

		translate([sl-0.55, -0.5-1-(d/2-0.5)/2 - 0.05])
		square(2.1);

		translate([1, d/2-0.25])
		square(1);

		translate([1, -d/2-1+0.25])
		square(1);
	}
	// кольцо
	color([0.5, 0.3, 0])
	translate([0, 0, t])
	difference() {
		cylinder(h = t, d = dh+1.75);
		translate([0, 0, -0.1])
		cylinder(h = t+0.2, d = dh);
	}
	// ползунок
	color("silver")
	translate([0, 0, 2*t])
	union() {
		difference() {
			cylinder(h=tm, d = d);
	
			translate([0, 0, -tm/2]) {
				difference() {
					cylinder(h = 2*tm, d = 6.2);
		
					translate([0, 0, -tm/2]) {
						cylinder(h = 3*tm, d = 5.2);
			
						translate([d-2.75, 0, 0])
						cube(d, center = true);
					}
				}
				cube([hh, wh + tm*2, tm*4], center = true);
				
				// токосъёмник
				translate([-d/2+1, 0, 0])
				cube(2, center = true);
			}
		}
		difference() {
			translate([-d/2+1, 0, -tm/2])
			cube([1.7, 2, tm], center = true);
			translate([-d/2+1, 0, -tm+0.01])
			cylinder(h = tm+0.02, d = 0.5);
		}

		translate([-d/2+1, 0, -tm-1])
		cylinder(h = 1, d = 0.5);
	}
	// нижняя железка
	color("silver")
	translate([0, 0, -tm])
	union() {
		linear_extrude(height = tm) union() {
			difference() {
				circle(d = d-0.5);
	
				circle(d = dh);
	
				translate([2, -d/2])
				square(d);
	
				translate([0, d/2-1])
				square(1);
	
				translate([0, -d/2])
				square(1);
			}
			translate([1, d/2-1])
			square(1);
			translate([1, -d/2])
			square(1);
		}
		translate([1, d/2-tm, 0])
		cube([1, tm, 0.5]);

		translate([1, -d/2, 0])
		cube([1, tm, 0.5]);
		// держалка среднего пина
		translate([2 - tm/2, 0, -hp/2])
		cube([tm, 3, hp], center = true);
	}
	// держалка ползунка
	color("gray")
	union() {
		translate([0, 0, -tm])
		difference() {
			cylinder(h = 2*t + 2*tm - 0.1, d = dh-tm);
			translate([0, 0, -tm-0.1])
			cylinder(h = 2*t + 2*tm, d = dh-tm-tm);
			translate([0, 0, 2*t+tm])
			cube([hh, wh, 2*tm], center = true);
		}
		translate([0, wh/2 + tm/2, 2*t + tm])
		cube([hh, tm, tm*2], center = true);
		translate([0, wh/2 + tm, 2*t + 1.5*tm])
		cube([hh, 2*tm, tm], center = true);

		translate([0, -wh/2 - tm/2, 2*t + tm])
		cube([hh, tm, tm*2], center = true);
		translate([0, -wh/2 - tm, 2*t + 1.5*tm])
		cube([hh, 2*tm, tm], center = true);

		translate([0, 0, -2*tm])
		linear_extrude(height = tm)
		difference() {
			circle(d = d-2.5);
			union() {
				circle(d = dh-2*tm);
				difference() {
					circle(d = d);
					circle(d = dh+1*tm);
					translate([-2.5, 0])
					square(2.5, center = true);
				}
			}
		}
	}
	translate([sl-1.5, (d/2-0.5)/2+0.5, t])
	pin_holder();

	translate([sl-1.5, -(d/2-0.5)/2-0.5, t])
	pin_holder();
	
	if (0 == pos) {
		// vertical
		translate([sl - 0.5, (d/2-0.5)/2+0.5, t])
		pin(1.8);
	
		translate([sl - 0.5, -(d/2-0.5)/2-0.5, t])
		pin(1.8);
	
		translate([2 - tm, 0, -hp-tm-tm])
		pin(4.7+1.75);
	}
	if (1 == pos) {
		// horizontal
		translate([sl - 0.51, (d/2-0.5)/2+0.5, t + tm])
		rotate([0, 90, 0])
		pin(3.0);
	
		translate([sl - 0.51, -(d/2-0.5)/2-0.5, t + tm])
		rotate([0, 90, 0])
		pin(3.0);

		translate([-(d/2)+tm*2, 0, 0])
		rotate([0, 90, 0])
		pin(2);
	}
}

_inch = 1/2.54;
scale([_inch, _inch, _inch])
translate([0, 0, 2]) {
	rezistor(1);
}