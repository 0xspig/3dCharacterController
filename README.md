# Old Style FPS Controller
Godot 3D Character Controller with BHops, air strafing, and old style "broken" kinematic movement.

This is a character controller that mimics the older "broken" version of move_and_slide. It has a constant move speed on slopes rather than the "correct" decelerating on ascent and accelerating descent and will stop on slopes below the max climb angle. Also supports bunny hopping and air strafing. Uses mouse for look. Inputs are mapped to "forward", "back, "left, "right", "crouch", and "jump". Max climb angle, move speed, acceleration, and friction all set with exports. 

Crosshair is available standalone at https://github.com/0xspig/CrosshairShader
