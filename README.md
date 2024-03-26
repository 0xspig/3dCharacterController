# UPDATE MARCH 2024
Godot 4 now has an old school physics feature by default which makes this project more or less obsolete.
That as well as the fact it has been broken in the lastet Godot version for a couple years has compelled me to archive it.
Thanks for all the nice comments. Hope everyone who used it had fun and made some cool stuff.

# Old Style FPS Controller
Godot 3D Character Controller with BHops, air strafing, and old style "broken" kinematic movement.

This is a character controller that mimics the older "broken" version of move_and_slide. It has a constant move speed on slopes rather than the "correct" decelerating on ascent and accelerating descent and will stop on slopes below the max climb angle. Also supports bunny hopping and air strafing. Uses mouse for look. Inputs are mapped to "forward", "back, "left, "right", "crouch", and "jump". Max climb angle, move speed, acceleration, and friction all set with exports. 

Crosshair is available standalone at https://github.com/0xspig/CrosshairShader
