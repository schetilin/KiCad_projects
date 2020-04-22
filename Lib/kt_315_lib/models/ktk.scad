$fs = 0.1;
underground = 2;

module capacitor(_length, _diameter, _wire) {
	_inch = 1 / 2.54;
	_vert_offset = _diameter/2 + _wire + 0.5;
	_thick = _diameter / 4;
	_conn_offset = _length / 40;
	rotate(a = 90, v = [0, 0, 1]) 
	scale(v = [_inch, _inch, _inch]) {
		translate([0, _length / 2, _vert_offset])
		rotate(a = 90, v = [1, 0, 0]) 
		color("silver") difference() {
			union() {
				cylinder(h = _length, d = _diameter);
				translate([0, 0, _conn_offset]) cylinder(h = _wire, d = _diameter + _wire*2);
				translate([0, 0, _length - _conn_offset - _wire]) cylinder(h = _wire, d = _diameter + _wire*2);
			}
			translate([0, 0, -1])
			cylinder(h = _length + 2, d = _diameter - _thick);
		}
	
		translate([0, _length / 2 - _conn_offset - _wire / 2, -underground])
		cylinder(h = _vert_offset - _diameter / 2 + underground, d = _wire);
	
		translate([0, -(_length / 2 - _conn_offset - _wire / 2), -underground])
		cylinder(h = _vert_offset - _diameter / 2 + underground, d = _wire);
	}
}

//capacitor(11, 3, 0.3);
//capacitor(12, 4, 0.5);
//capacitor(14, 3, 0.3);
//capacitor(16.5, 4, 0.5);
//capacitor(17, 3, 0.3);
//capacitor(21, 3, 0.3);
capacitor(21, 4, 0.5);