//created by hazzza https://openprocessing.org/user/224122
class Ray {
	constructor(x, y, angle) {
		this.position = createVector(x, y);
		this.angle = angle;
	}

	cast() {

		var p = this.position.copy();
		var v = createVector(1, 0).setHeading(this.angle);
		var ss = rayStep;
		for (var a = 0; a < 600; a++) {
			v.setMag(ss);
			p.add(v);

			for (var cyl of Cylinders) {
		

				if (cyl.intersect(p)) {
					var rs = 0;
					
					if(colours[colours.length-1] == cyl.colour) {
						if(shades[shades.length-1] == 0) {
							rs = 1;
						}
					}
							if (showDebug) {
					push();
					stroke(255, 0, 0);
					strokeWeight(5);
					line(this.position.x, this.position.y, p.x, p.y);
					pop();


				}
					return {
						d: p5.Vector.dist(p, this.position),
						s: rs,
						c: cyl.colour
					};
				}
			}

			if (this.checkTile(p.x, p.y)) {
				if (showDebug) {
					push();
					stroke(0);
					strokeWeight(2);
					line(this.position.x, this.position.y, p.x, p.y);
					pop();


				}
				var i = floor(p.x / TileSize);
				var j = floor(p.y / TileSize);
				var rs = 0;
				var rc = gp(p.x, p.y);
				if (i % 2 == 0 && j % 2 != 0) {
					rs = 1;

				} else {
					//	fill(0, 155, 255);
				}
				if (j % 2 == 0 && i % 2 != 0) {
					rs = 1;

				}
				return {
					d: p5.Vector.dist(p, this.position),
					s: rs,
					c: rc
				};
			}

		}
	}

	checkTile(x, y) {
		return gp(x, y) != 0;
	}
}