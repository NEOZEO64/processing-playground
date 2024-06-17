class TextTip {
	constructor(t, x, y, r) {
		this.t = t;
		this.x = x;
		this.y = y;
		this.radius = r;
		this.sy = 0;
	}
	
	update() {
		if(dist(this.x, this.y, player.x, player.y) < this.radius) {
			this.sy = lerp(this.sy, 40, 0.5);
		} else {
			this.sy = lerp(this.sy, -80, 0.1);
		}
	}
//created by hazzza https://openprocessing.org/user/224122
	display() {
		push();
		textSize(36);
		textAlign(CENTER);
		fill(255);
		stroke(0);
		strokeWeight(2);
		text(this.t, width/2, this.sy);
		pop();
		if(showDebug) {
			this.debug();
		}
	}
	
	debug() {
		push();
		noFill();
		strokeWeight(3);
		stroke(255);
		circle(this.x, this.y, this.radius*2);
		pop();
	}
}