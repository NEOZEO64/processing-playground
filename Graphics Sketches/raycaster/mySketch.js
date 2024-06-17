// a 3d engine using raycasting
//i could not be bothered to properly do the maths to optimise the raycasting process
//so i just used a simplified caveman version instead.
//this is why the resolution is so low, and only 100 rays are drawn at a time
// the basic raycasting is also why walls sometimes look strange up close or at certain angles

var Tiles = [
	[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
	[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
];

var TilesNum = 16;
var TileSize = 750 / 16; //700 / 16
var quality = 100;
var rayStep = TileSize * 0.1; //TileSize*0.1
var showDebug = false;

var Cylinders = [];
var TextTips = [];
player = {
	x: TileSize * 8,
	y: TileSize * 8,
	rot: 0.01,
	dir: 0.01,
	rotSpeed: 0.05,
	speed: 0.1,
	moveSpeed: 1.6,
	sideSpeed: 0,
};
var heights = [];
var shades = [];
var colours = [];
var currentLevel = 0;
//created by hazzza https://openprocessing.org/user/224122
function mousePressed() {


	if (mouseY > height - 50) {
		currentLevel++;
		clearLevel();
		initLevel(currentLevel);
	} else {
		showDebug = !showDebug;
	}
}

function setup() {
	createCanvas(1000, 800);
	//player = createVector(200, 400);
	clearLevel();

	initLevel(0);
}

function draw() {
timeSinceLast--;

	if (showDebug) {
		background(100);
		drawTiles();
		for (var c in Cylinders) {
			Cylinders[c].display();
			Cylinders[c].update(c);
		}
		castRays();
	} else {
		background(20, 200);
		castRays();
		for (var ci in Cylinders) {
			Cylinders[ci].update(ci);
		}

		push();
		noStroke();
		fill(0, 150, 255);
		rect(0, 0, width, height / 2);
		fill(100);
		rect(0, height / 2, width, height / 2);
		pop();
		for (var i = 0; i < heights.length; i++) {
			var h = heights[i];

			var ht = 7000 / h / cos(radians(i - (quality / 2)));

			var c = ht * 2 + 20;
			var topMult = 1;
			push();
			if (colours[i] == 1) {
				if (shades[i] == 0) {

					stroke(0, 0, c);
				} else {
					stroke(0, 50, c);

				}

			} else if (colours[i] == 2) {
				if (shades[i] == 0) {
					stroke(c, 0, 0);
				} else {
					stroke(c - 20, 30, 0);

				}
				topMult = 1.2;
			} else if (colours[i] == 3) {
				if (shades[i] == 0) {
					stroke(0, c, 0);
				} else {
					stroke(30, c - 50, 0);

				}
				topMult = 1.2;
			} else if (colours[i] == 4) {
				if (shades[i] == 0) {
					stroke(c * 2, c * 2, 0);
				} else {
					stroke(c, c, 0);

				}
				topMult = 1.2;
			} else if (colours[i] == 5) {
				if (shades[i] == 0) {

					stroke(0, 0, c);
				} else {
					stroke(0, 50, c);

				}
				topMult = 5;
			} else if (colours[i] == 6) {
				if (shades[i] == 0) {

					stroke(0, 0, c);
				} else {
					stroke(0, 50, c);

				}
				topMult = 6;
			} else if (colours[i] == 7) {
				if (shades[i] == 0) {

					stroke(min(c * 0.7, 150));
				} else {
					stroke(min(c + 50 * 0.7, 130));

				}
				topMult = 100;
			}
			else if (colours[i] == 8) {
				if (shades[i] == 0) {

					stroke(0, c * 0.7, 0);
				} else {
					stroke(0, c + 50 * 0.7, 0);

				}
				topMult = 100;
			}

			var sy = (height / 2) - ht * topMult;
			var ey = (height / 2) + ht;
			strokeWeight((width / 100) * (100 / quality));
			line((width / 100) * i * (100 / quality), sy, (width / 100) * i * (100 / quality), ey);
			if (colours[i] == 3) {
				stroke(100);
				line((width / 100) * i * (100 / quality), sy, (width / 100) * i * (100 / quality), (height / 2) + ht * -0.2);
			}
			pop();
		}
	}
	push();
	stroke(255);
	strokeWeight(1);
	fill(255);
	textSize(30);
	text(floor(frameRate()), 30, 30);
	pop();

	for (var tt in TextTips) {
		TextTips[tt].display();
		TextTips[tt].update();
	}
	playerInput();
	move();
}

function castRays() {
	heights = [];
	shades = [];
	colours = [];
	for (var i = -50; i < 51; i += 100 / quality) {
		var r = new Ray(player.x, player.y, (i / 50 + player.rot));
		var rr = r.cast();
		heights.push(rr.d);
		shades.push(rr.s);
		colours.push(rr.c);
	}
}

function gg(i, j) {
	try {
		return Tiles[j][i];
	} catch {} //i have no idea
}

function gp(x, y) {
	return gg(
		constrain(floor(x / TileSize), 0, TilesNum - 1),
		constrain(floor(y / TileSize), 0, TilesNum - 1)
	);
}

function st(x, y, v) {
	Tiles[constrain(floor(y / TileSize), 0, TilesNum - 1)][constrain(floor(x / TileSize), 0, TilesNum - 1)] = v;
}


function ap(x, y) {
	return createVector(
		floor(x / TileSize) * TileSize,
		floor(y / TileSize) * TileSize
	);
}

function drawTiles() {
	for (var i = 0; i < TilesNum; i++) {
		for (var j = 0; j < TilesNum; j++) {
			var x = j * TileSize;
			var y = i * TileSize;

			switch (Tiles[i][j]) {
				case 1:
					fill(0, 0, 255);
					rect(x, y, TileSize, TileSize);
					break;
				case 2:
					fill(255, 0, 0);
					rect(x, y, TileSize, TileSize);
					break;
				case 3:
					fill(0, 255, 0);
					rect(x, y, TileSize, TileSize);
					break;
				case 4:
					fill(255, 255, 0);
					rect(x, y, TileSize, TileSize);
					break;
				case 5:
					fill(0, 0, 100);
					rect(x, y, TileSize, TileSize);
					break;
				case 6:
					fill(0, 0, 50);
					rect(x, y, TileSize, TileSize);
					break;
									case 7:
					fill(150);
					rect(x, y, TileSize, TileSize);
					break;
			}
		}
	}
}

function playerInput() {
	player.speed *= 0.7;
	player.sideSpeed *= 0.7;
	player.dir = 0;


	if (keyIsDown(68)) {
		player.sideSpeed = 1;
	} else if (keyIsDown(65)) {
		player.sideSpeed = -1;
	}

	if (keyIsDown(LEFT_ARROW)) {
		player.dir = -1 * (60 / frameRate()) * 0.8;
	} else if (keyIsDown(RIGHT_ARROW)) {
		player.dir = 1 * (60 / frameRate()) * 0.8;
	}
	if (keyIsDown(87)) {
		player.speed = 1;
	} else if (keyIsDown(83)) {
		player.speed = -1;
	}

}

function keyPressed() {
	if(keyCode == 32) {
		if(timeSinceLast <= 0)shootFireball();
	}
}
var timeSinceLast = 0;
function shootFireball() {
	timeSinceLast = 40;
	playerDir = createVector(2.2, 0).setHeading(player.rot);
	Cylinders.push(new Fireball(player.x + (playerDir.x*5), player.y + (playerDir.y*5), 10, 1, playerDir.x, playerDir.y, true));
}


function move() {
	var moveStep = player.speed * player.moveSpeed * (60 / frameRate());
	var sideStep = player.sideSpeed * player.moveSpeed * (60 / frameRate());
	//console.log("speed: " + player.speed + " sideSpeed: " + player.sideSpeed);
	
	//this took me way to long to figure out
	var newX = player.x + (Math.cos(player.rot) * moveStep) + (Math.cos(player.rot + radians(90)) * sideStep);
	var newY = player.y + (Math.sin(player.rot) * moveStep) + (Math.sin(player.rot + radians(90)) * sideStep);
	player.rot += player.dir * player.rotSpeed;

	if (gp(newX, newY) != 0) {
		if (gp(newX, newY) == 2) {

			clearLevel();
			initLevel(currentLevel);
		} else if (gp(newX, newY) == 4) {

			currentLevel++;
			clearLevel();
			initLevel(currentLevel);
		}
		return;
	}

	for (var cy of Cylinders) {
		if (cy.intersect(createVector(newX, newY))) {
			switch (cy.colour) {
				case 2:

					clearLevel();
					initLevel(currentLevel);
					break;
				case 4:
				if(!cy.players) {
					currentLevel++;
					clearLevel();
					initLevel(currentLevel);
				}
					break;
			}

			return;
		}
	}

	player.x = newX;
	player.y = newY;
}