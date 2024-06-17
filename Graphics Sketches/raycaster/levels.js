	var aksjdbaskjbdasdgasjbd = [
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
//created by hazzza https://openprocessing.org/user/224122
	function clearLevel() {
		Cylinders = [];
		Tiles = [
			[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1, 1, 1, 4, 4, 1, 1, 1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1],
			[1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1],
			[1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1],
			[1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1],
			[1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1],
			[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
			[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
			[1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1],
			[1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1],
			[1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1],
			[1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1],
			[1, 1, 1, 1, 1, 1, 1, 4, 4, 1, 1, 1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
			[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
		];
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
		TextTips = [];
		TextTips.push(new TextTip("Level Missing!!??!?!?!", TileSize * 1.5, TileSize * 8, 30000));
	}

	function initLevel(l) {
		TextTips = [];

		if (l == 0) {
			Tiles = [
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1],
				[1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
			];

			Cylinders.push(new Cylinder(TileSize * 7, TileSize * 6.5, TileSize, 2));
			Cylinders.push(new Cylinder(TileSize * 7, TileSize * 9.5, TileSize, 2));
			Cylinders.push(new Cylinder(TileSize * 12, TileSize * 8, TileSize * 0.5, 4));
			player.x = TileSize * 1.5;
			player.y = TileSize * 8;
			TextTips.push(new TextTip("Use WASD to move\nUse Arrow Keys to turn", TileSize * 1.5, TileSize * 8, 30));
			TextTips.push(new TextTip("Touching red will kill you! So avoid touching red.", TileSize * 6.5, TileSize * 8, 100));
			TextTips.push(new TextTip("Get to the yellow area to proceed to the next level", TileSize * 10.5, TileSize * 8, 80));
		} else if (l == 1) {
			Tiles = [
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
			];

			Cylinders.push(new Cylinder(TileSize * 4.5, TileSize * 14, TileSize * 0.5, 4));
			player.x = TileSize * 1.5;
			player.y = TileSize * 8;
			TextTips.push(new TextTip("Level 1: Movement Basics", player.x, player.y, 20));

			TextTips.push(new TextTip("Use WASD to move", TileSize * 6, TileSize * 8, 60));
			TextTips.push(new TextTip("Use LEFT and RIGHT arrow to turn", TileSize * 6, TileSize * 5, 60));
			TextTips.push(new TextTip("One more turn...", TileSize * 6, TileSize * 11, 50));
			TextTips.push(new TextTip("Almost there...", TileSize * 2, TileSize * 11, 50));
			TextTips.push(new TextTip("You made it!", TileSize * 4.5, TileSize * 14, 50));
		} else if (l == 2) {
			Tiles = [
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 0, 2, 0, 0, 1],
				[1, 0, 0, 0, 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 1],
				[1, 0, 0, 0, 2, 0, 2, 0, 2, 0, 2, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 0, 2, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
			];
			player.x = TileSize * 1.5;
			player.y = TileSize * 8;
			TextTips.push(new TextTip("Level 2: Red Walls", player.x, player.y, 20));
			TextTips.push(new TextTip("Navigate your way around these red walls!", TileSize * 6, TileSize * 8, 120));
			Cylinders.push(new Cylinder(TileSize * 15, TileSize * 8, TileSize * 0.5, 4));
		} else if (l == 3) {
			Tiles = [
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
			];
			player.x = TileSize * 1.5;
			player.y = TileSize * 8;
			TextTips.push(new TextTip("Level 3: Moving Obstacles", player.x, player.y, 20));
			TextTips.push(new TextTip("Dodge the red cylinders", TileSize * 6, TileSize * 8, 120));
			Cylinders.push(new Cylinder(TileSize * 15, TileSize * 8, TileSize * 0.5, 4));
			Cylinders.push(new BouncingCylinder(TileSize * 13, TileSize * 8, TileSize * 0.3, 2, 0, 2));
			Cylinders.push(new BouncingCylinder(TileSize * 11, TileSize * 8, TileSize * 0.3, 2, 0, -1.8));
			Cylinders.push(new BouncingCylinder(TileSize * 9, TileSize * 8, TileSize * 0.3, 2, 0, 1.6));
			Cylinders.push(new BouncingCylinder(TileSize * 7, TileSize * 8, TileSize * 0.3, 2, 0, -1.4));
			Cylinders.push(new BouncingCylinder(TileSize * 5, TileSize * 8, TileSize * 0.3, 2, 0, 1.2));
			Cylinders.push(new BouncingCylinder(TileSize * 3, TileSize * 8, TileSize * 0.3, 2, 0, -1));
		} else if (l == 4) {
			Tiles = [
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
			];
			player.x = TileSize * 1.5;
			player.y = TileSize * 8;
			TextTips.push(new TextTip("Level 4: More Moving Obstacles", player.x, player.y, 20));
			TextTips.push(new TextTip("Dodge the red cylinders", TileSize * 6, TileSize * 8, 120));
			Cylinders.push(new BouncingCylinder(TileSize * 14, TileSize * 8, TileSize * 0.3, 4, 0, 0.5));
			Cylinders.push(new BouncingCylinder(TileSize * 13, TileSize * 8, TileSize * 0.45, 2, 0, 2.6));
			Cylinders.push(new BouncingCylinder(TileSize * 11, TileSize * 8, TileSize * 0.44, 2, 0, -2.4));
			Cylinders.push(new BouncingCylinder(TileSize * 9, TileSize * 8, TileSize * 0.43, 2, 0, 2));
			Cylinders.push(new BouncingCylinder(TileSize * 7, TileSize * 8, TileSize * 0.42, 2, 0, -1.6));
			Cylinders.push(new BouncingCylinder(TileSize * 5, TileSize * 8, TileSize * 0.41, 2, 0, 1.4));
			Cylinders.push(new BouncingCylinder(TileSize * 3, TileSize * 8, TileSize * 0.4, 2, 0, -1));
		} else if (l == 5) {
			Tiles = [
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
			];
			player.x = TileSize * 1.5;
			player.y = TileSize * 6.5;
			TextTips.push(new TextTip("Level 5: Moving Target", player.x, player.y, 20));

			Cylinders.push(new BouncingCylinder(TileSize * 8, TileSize * 7.5, TileSize * 0.3, 4, 2.3, 0));
			Cylinders.push(new BouncingCylinder(TileSize * 6.5, TileSize * 7.5, TileSize * 0.3, 2, 2.3, 0));
			Cylinders.push(new BouncingCylinder(TileSize * 9.5, TileSize * 7.5, TileSize * 0.3, 2, 2.3, 0));
		} else if (l == 6) {
			Tiles = [
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1],
				[1, 0, 1, 1, 1, 1, 1, 1, 4, 1, 1, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 1, 1, 4, 4, 4, 1, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
			];
			player.x = TileSize * 1.5;
			player.y = TileSize * 1.5;
			Cylinders.push(new Cylinder(TileSize * 2.5, TileSize * 4.5, TileSize * 0.3, 3));
			TextTips.push(new TextTip("Level 6: Turret", player.x, player.y, 20));
			TextTips.push(new TextTip("This is what a turret looks like. They shoot fireballs", TileSize * 2.5, TileSize * 4.5, TileSize * 2));
			TextTips.push(new TextTip("Watch Out!", TileSize * 1.5, TileSize * 7.5, TileSize));
			Cylinders.push(new Turret(TileSize * 3.5, TileSize * 11.5, TileSize * 0.3, 3, 70, 2)); //80

		} else if (l == 7) {
			Tiles = [
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
				[2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],

			];
			player.x = TileSize * 2;
			player.y = TileSize * 8.5;
			Cylinders.push(new Cylinder(TileSize * 10.5, TileSize * 8.5, TileSize * 0.3, 4));



			Cylinders.push(new Turret(TileSize * 13.5, TileSize * 7.5, TileSize * 0.3, 3, 45, 3)); //80
			Cylinders.push(new Turret(TileSize * 13.5, TileSize * 9.5, TileSize * 0.3, 3, 45, 3)); //80

			Cylinders.push(new Turret(TileSize * 13.5, TileSize * 6.5, TileSize * 0.3, 3, 45, 3)); //80
			Cylinders.push(new Turret(TileSize * 13.5, TileSize * 10.5, TileSize * 0.3, 3, 45, 3)); //80

			TextTips.push(new TextTip("Level 7: Firing Line", player.x, player.y, 20));

		} else if (l == 8) {
			Tiles = [
				[5, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5],
				[5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5],
				[6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6],
				[5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5],
				[6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 5, 6, 5, 5],
				[5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 6],
				[6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 6, 0, 6],
				[5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 6],
				[6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4],
				[5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 6],
				[6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 6, 0, 6],
				[5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 6],
				[6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 5, 6, 5, 5],
				[5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6],
				[6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5],
				[5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 6, 5, 5],
			];
			player.x = TileSize * 1.5;
			player.y = TileSize * 8;
			TextTips.push(new TextTip("Level 8: Castle", player.x, player.y, 20));
			Cylinders.push(new Turret(TileSize * 10.5, TileSize * 6.5, TileSize * 0.3, 3, 60, 2)); //80
			Cylinders.push(new Turret(TileSize * 10.5, TileSize * 10.5, TileSize * 0.3, 3, 60, 2)); //80
						Cylinders.push(new Turret(TileSize * 12.5, TileSize * 6.5, TileSize * 0.3, 3, 60, 2)); //80
			Cylinders.push(new Turret(TileSize * 12.5, TileSize * 10.5, TileSize * 0.3, 3, 60, 2)); //80
		}else if (l == 9) {
						Tiles = [
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 7, 7, 7, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 7, 0, 0, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 7, 0, 0, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 7, 0, 0, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[7, 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 1],
				[7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 1],
				[7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 1],
				[7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 1],
				[7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 1],
				[7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 0, 0, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 0, 0, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
			];
			player.x = TileSize * 2.5;
			player.y = TileSize * 3.5;
			TextTips.push(new TextTip("Level 9: Facility", player.x, player.y, 20));
			TextTips.push(new TextTip("Press SPACE to shoot!", TileSize * 2.5,TileSize*8, 100));
			TextTips.push(new TextTip("Shoot the green walls to break them", TileSize * 10,TileSize*8, 200));
		}
		else if (l == 10) {
						Tiles = [
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 7, 7, 7, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 7, 0, 0, 7, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1],
				[1, 7, 0, 0, 7, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1],
				[1, 7, 0, 0, 7, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1],
				[7, 0, 0, 0, 7, 7, 8, 7, 8, 7, 8, 7, 7, 7, 1, 1],
				[7, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 7, 7, 0, 0, 1],
				[7, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 1],
				[7, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 1],
				[7, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 7, 7, 0, 0, 1],
				[7, 7, 7, 7, 7, 8, 7, 8, 7, 8, 7, 7, 7, 0, 0, 1],
				[1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 0, 1, 4, 0, 0, 1, 0, 1, 0, 0, 1],
				[1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 7, 0, 0, 0, 0, 1],
				[1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 7, 0, 0, 0, 0, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
			];
			player.x = TileSize * 8;
			player.y = TileSize * 8;
			TextTips.push(new TextTip("Level 10: Find the exit", player.x, player.y, 20));
		}
				else if (l == 11) {
					Tiles	 = [
		[7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7],
		[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
		[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
		[1, 0, 0, 1, 5, 6, 1, 0, 0, 1, 5, 6, 1, 0, 0, 1],
		[1, 0, 0, 1, 7, 7, 7, 8, 8, 7, 7, 7, 3, 0, 0, 1],
		[1, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 7, 6, 0, 0, 1],
		[1, 0, 0, 3, 7, 0, 0, 0, 0, 0, 0, 7, 3, 0, 0, 1],
		[1, 0, 0, 5, 7, 0, 0, 0, 0, 0, 0, 7, 2, 0, 0, 1],
		[1, 0, 0, 6, 7, 0, 0, 0, 0, 0, 0, 7, 5, 0, 0, 1],
		[1, 0, 0, 7, 7, 0, 0, 0, 0, 0, 0, 7, 1, 0, 0, 1],
		[1, 0, 0, 1, 7, 7, 7, 7, 7, 7, 7, 7, 3, 0, 0, 1],
		[1, 0, 0, 7, 1, 6, 5, 1, 6, 1, 5, 1, 1, 0, 0, 1],
		[7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
		[7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7],
		[7, 4, 8, 8, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 1],
		[7, 7, 7, 7, 7, 7, 7, 7, 7, 1, 1, 1, 1, 1, 1, 1],
	];
			player.x = TileSize * 8;
			player.y = TileSize * 8;
			TextTips.push(new TextTip("Level 11: Hidden exit?", player.x, player.y, 20));
		}
		else if (l == 12) {
			Tiles = [
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[2, 2, 2, 2, 0, 2, 2, 0, 2, 2, 0, 2, 2, 2, 2, 2],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 4],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 4],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 4],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 4],
				[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 4],
				[2, 2, 2, 2, 0, 2, 2, 0, 2, 2, 0, 2, 2, 2, 2, 2],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
				[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],

			];
			player.x = TileSize * 2;
			player.y = TileSize * 8.5;




Cylinders.push(new BouncingCylinder(TileSize * 3.5, TileSize * 8.5, TileSize * 0.3, 2, 0, 2.3));
			
			Cylinders.push(new BouncingCylinder(TileSize * 5.5, TileSize * 8.5, TileSize * 0.3, 2, 0, 2.3));
			Cylinders.push(new BouncingCylinder(TileSize * 6, TileSize * 8.5, TileSize * 0.3, 2, 0, 2.3));
			Cylinders.push(new BouncingCylinder(TileSize * 6.5, TileSize * 8.5, TileSize * 0.3, 2, 0, 2.3));
			
			Cylinders.push(new BouncingCylinder(TileSize * 8.5, TileSize * 8.5, TileSize * 0.3, 2, 0, 2.3));
			Cylinders.push(new BouncingCylinder(TileSize * 9.5, TileSize * 8.5, TileSize * 0.3, 2, 0, 2.3));
			
			Cylinders.push(new BouncingCylinder(TileSize * 11.5, TileSize * 8.5, TileSize * 0.3, 2, 0, 2.3));
			TextTips.push(new TextTip("Level 12: Obstacle Course", player.x, player.y, 20));
		}
		else {
TextTips.push(new TextTip("You reached the end!\nHeart if you liked it!", player.x, player.y, 20000000));
		}
		

	}