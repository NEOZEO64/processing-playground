//created by hazzza https://openprocessing.org/user/224122
class Cylinder {
	constructor(x, y, r, c) {
		this.position = createVector(x, y);
		this.radius = r;
		this.colour = c;
	}

	intersect(v) {
		return (p5.Vector.dist(this.position, v) < this.radius)

	}

	display() {
		push();
		fill(255, 0, 0);
		circle(this.position.x, this.position.y, this.radius * 2);
		pop();
	}

	update() {

	}
		delete(i){
		Cylinders.splice(i, 1);
	}
}

class BouncingCylinder extends Cylinder {
	constructor(x, y, r, c, xv, yv) {
		super(x, y, r, c);
		this.xv = xv;
		this.yv = yv;
	}

	update() {
		var nx = this.position.x + (this.xv * (60 / frameRate()));
		var ny = this.position.y + (this.yv * (60 / frameRate()));

		if (gp(nx, ny) != 0) {
			this.xv *= -1;
			this.yv *= -1;
			return;
		}

		this.position.x = nx;
		this.position.y = ny;
	}
}

class Turret extends Cylinder {
	constructor(x, y, r, c, ff, sp) {
		super(x, y, r, c);
		this.ff = ff;
		this.fc = ff;
		this.sp = sp;
	}

	update() {
		this.fc--;
		if (this.fc < 0) {
			this.fc = this.ff;
			this.fire();
		}
	}

	fire() {
		var ballSpeed = createVector(this.position.x - player.x, this.position.y - player.y).normalize().mult(-this.sp);
		Cylinders.push(new Fireball(this.position.x, this.position.y, TileSize * 0.2, 2, ballSpeed.x, ballSpeed.y, false));
	}
}

class Fireball extends Cylinder {
	constructor(x, y, r, c, xv, yv, players) {
		super(x, y, r, c);
		this.xv = xv;
		this.yv = yv;
		this.players = players;
	}

	update(i) {
		var nx = this.position.x + (this.xv * (60 / frameRate()));
		var ny = this.position.y + (this.yv * (60 / frameRate()));
		
		if(gp(nx, ny) == 8) {
			this.delete(i);
			st(nx, ny, 0);
			return;
		}
		else if (gp(nx, ny) != 0) {
			this.delete(i);
			return;
		}

		this.position.x = nx;
		this.position.y = ny;
	}
	

}