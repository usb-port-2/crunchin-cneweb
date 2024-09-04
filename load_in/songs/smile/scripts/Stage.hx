function postCreate() {
    strumLines.members[1].characters[0].flipX = healthBar.flipX = true;
    strumLines.members[1].characters[0].swapLeftRightAnimations();

    for(icon in [iconP1, iconP2])
        icon.flipX = !icon.flipX;
}

function postUpdate() {
	var center:Float = healthBar.x + healthBar.width * FlxMath.remapToRange(healthBar.percent, 100, 0, 1, 0);
	iconP1.x = center - (iconP1.width - 26);
	iconP2.x = center - 26;

}