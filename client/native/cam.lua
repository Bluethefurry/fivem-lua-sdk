-- ease - smooth transition between the camera's positions easeTime - Time in milliseconds for the transition to happen  If you have created a script (rendering) camera, and want to go back to the  character (gameplay) camera, call this native with render set to 0. Setting ease to 1 will smooth the transition.
-- @module native
-- @submodule cam
-- @see RENDER_SCRIPT_CAMS
-- @usage void RENDER_SCRIPT_CAMS(BOOL render, BOOL ease, int easeTime, BOOL p3, BOOL p4);
-- @param render BOOL
-- @param BOOL
-- @param int
-- @return void
function RenderScriptCams() end

-- "DEFAULT_SCRIPTED_CAMERA" "DEFAULT_ANIMATED_CAMERA" "DEFAULT_SPLINE_CAMERA" "DEFAULT_SCRIPTED_FLY_CAMERA" "TIMED_SPLINE_CAMERA"
-- @module native
-- @submodule cam
-- @see CREATE_CAM
-- @usage Cam CREATE_CAM(char* camName, BOOL p1);
-- @param camName char*
-- @param BOOL
-- @return Cam
function CreateCam() end

-- camName is always set to "DEFAULT_SCRIPTED_CAMERA" in Rockstar's scripts. ------------ Camera names found in the b617d scripts: "DEFAULT_ANIMATED_CAMERA" "DEFAULT_SCRIPTED_CAMERA" "DEFAULT_SCRIPTED_FLY_CAMERA" "DEFAULT_SPLINE_CAMERA" ------------ Side Note: It seems p8 is basically to represent what would be the bool p1 within CREATE_CAM native. As well as the p9 since it's always 2 in scripts seems to represent what would be the last param within SET_CAM_ROT native which normally would be 2.
-- @module native
-- @submodule cam
-- @see CREATE_CAM_WITH_PARAMS
-- @usage Cam CREATE_CAM_WITH_PARAMS(char* camName, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fov, BOOL p8, int p9);
-- @param camName char*
-- @param float
-- @param BOOL
-- @param int
-- @return Cam
function CreateCamWithParams() end

-- @todo
-- @module native
-- @submodule cam
-- @see CREATE_CAMERA
-- @usage Cam CREATE_CAMERA(Hash camHash, BOOL p1);
-- @param camHash Hash
-- @param BOOL
-- @return Cam
function CreateCamera() end

-- CAM::_GET_GAMEPLAY_CAM_COORDS can be used instead of posX,Y,Z CAM::_GET_GAMEPLAY_CAM_ROT can be used instead of rotX,Y,Z CAM::_80EC114669DAEFF4() can be used instead of p7 (Possible p7 is FOV parameter. ) p8 ??? p9 uses 2 by default
-- @module native
-- @submodule cam
-- @see CREATE_CAMERA_WITH_PARAMS
-- @usage Cam CREATE_CAMERA_WITH_PARAMS(Hash camHash, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fov, BOOL p8, Any p9);
-- @param camHash Hash
-- @param float
-- @param BOOL
-- @param Any
-- @return Cam
function CreateCameraWithParams() end

-- BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.
-- @module native
-- @submodule cam
-- @see DESTROY_CAM
-- @usage void DESTROY_CAM(Cam cam, BOOL thisScriptCheck);
-- @param cam Cam
-- @param BOOL
-- @return void
function DestroyCam() end

-- BOOL param indicates whether the cam should be destroyed if it belongs to the calling script.
-- @module native
-- @submodule cam
-- @see DESTROY_ALL_CAMS
-- @usage void DESTROY_ALL_CAMS(BOOL thisScriptCheck);
-- @param thisScriptCheck BOOL
-- @return void
function DestroyAllCams() end

-- Returns whether or not the passed camera handle exists.
-- @module native
-- @submodule cam
-- @see DOES_CAM_EXIST
-- @usage BOOL DOES_CAM_EXIST(Cam cam);
-- @param cam Cam
-- @return BOOL
function DoesCamExist() end

-- Set camera as active/inactive.
-- @module native
-- @submodule cam
-- @see SET_CAM_ACTIVE
-- @usage void SET_CAM_ACTIVE(Cam cam, BOOL active);
-- @param cam Cam
-- @param BOOL
-- @return void
function SetCamActive() end

-- Returns whether or not the passed camera handle is active.
-- @module native
-- @submodule cam
-- @see IS_CAM_ACTIVE
-- @usage BOOL IS_CAM_ACTIVE(Cam cam);
-- @param cam Cam
-- @return BOOL
function IsCamActive() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_CAM_RENDERING
-- @usage BOOL IS_CAM_RENDERING(Cam cam);
-- @param cam Cam
-- @return BOOL
function IsCamRendering() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_RENDERING_CAM
-- @usage Cam GET_RENDERING_CAM();
-- @param undefined
-- @return Cam
function GetRenderingCam() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_CAM_COORD
-- @usage Vector3 GET_CAM_COORD(Cam cam);
-- @param cam Cam
-- @return Vector3
function GetCamCoord() end

-- The last parameter, as in other "ROT" methods, is usually 2.
-- @module native
-- @submodule cam
-- @see GET_CAM_ROT
-- @usage Vector3 GET_CAM_ROT(Cam cam, int rotationOrder);
-- @param cam Cam
-- @param int
-- @return Vector3
function GetCamRot() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_CAM_FOV
-- @usage float GET_CAM_FOV(Cam cam);
-- @param cam Cam
-- @return float
function GetCamFov() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_CAM_NEAR_CLIP
-- @usage float GET_CAM_NEAR_CLIP(Cam cam);
-- @param cam Cam
-- @return float
function GetCamNearClip() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_CAM_FAR_CLIP
-- @usage float GET_CAM_FAR_CLIP(Cam cam);
-- @param cam Cam
-- @return float
function GetCamFarClip() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_CAM_FAR_DOF
-- @usage float GET_CAM_FAR_DOF(Cam cam);
-- @param cam Cam
-- @return float
function GetCamFarDof() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CAM_PARAMS
-- @usage void SET_CAM_PARAMS(Cam cam, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float fieldOfView, Any p8, int p9, int p10, int p11);
-- @param cam Cam
-- @param float
-- @param Any
-- @param int
-- @return void
function SetCamParams() end

-- Sets the position of the cam.
-- @module native
-- @submodule cam
-- @see SET_CAM_COORD
-- @usage void SET_CAM_COORD(Cam cam, float posX, float posY, float posZ);
-- @param cam Cam
-- @param float
-- @return void
function SetCamCoord() end

-- Sets the rotation of the cam. Last parameter unknown.  Last parameter seems to always be set to 2.
-- @module native
-- @submodule cam
-- @see SET_CAM_ROT
-- @usage void SET_CAM_ROT(Cam cam, float rotX, float rotY, float rotZ, int rotationOrder);
-- @param cam Cam
-- @param float
-- @param int
-- @return void
function SetCamRot() end

-- Sets the field of view of the cam. --------------------------------------------- Min: 1.0f Max: 130.0f
-- @module native
-- @submodule cam
-- @see SET_CAM_FOV
-- @usage void SET_CAM_FOV(Cam cam, float fieldOfView);
-- @param cam Cam
-- @param float
-- @return void
function SetCamFov() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CAM_NEAR_CLIP
-- @usage void SET_CAM_NEAR_CLIP(Cam cam, float nearClip);
-- @param cam Cam
-- @param float
-- @return void
function SetCamNearClip() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CAM_FAR_CLIP
-- @usage void SET_CAM_FAR_CLIP(Cam cam, float farClip);
-- @param cam Cam
-- @param float
-- @return void
function SetCamFarClip() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CAM_MOTION_BLUR_STRENGTH
-- @usage void SET_CAM_MOTION_BLUR_STRENGTH(Cam cam, float strength);
-- @param cam Cam
-- @param float
-- @return void
function SetCamMotionBlurStrength() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CAM_NEAR_DOF
-- @usage void SET_CAM_NEAR_DOF(Cam cam, float nearDOF);
-- @param cam Cam
-- @param float
-- @return void
function SetCamNearDof() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CAM_FAR_DOF
-- @usage void SET_CAM_FAR_DOF(Cam cam, float farDOF);
-- @param cam Cam
-- @param float
-- @return void
function SetCamFarDof() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CAM_DOF_STRENGTH
-- @usage void SET_CAM_DOF_STRENGTH(Cam cam, float dofStrength);
-- @param cam Cam
-- @param float
-- @return void
function SetCamDofStrength() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CAM_DOF_PLANES
-- @usage void SET_CAM_DOF_PLANES(Cam cam, float p1, float p2, float p3, float p4);
-- @param cam Cam
-- @param float
-- @return void
function SetCamDofPlanes() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CAM_USE_SHALLOW_DOF_MODE
-- @usage void SET_CAM_USE_SHALLOW_DOF_MODE(Cam cam, BOOL toggle);
-- @param cam Cam
-- @param BOOL
-- @return void
function SetCamUseShallowDofMode() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_USE_HI_DOF
-- @usage void SET_USE_HI_DOF();
-- @param undefined
-- @return void
function SetUseHiDof() end

-- Last param determines if its relative to the Entity
-- @module native
-- @submodule cam
-- @see ATTACH_CAM_TO_ENTITY
-- @usage void ATTACH_CAM_TO_ENTITY(Cam cam, Entity entity, float xOffset, float yOffset, float zOffset, BOOL isRelative);
-- @param cam Cam
-- @param Entity
-- @param float
-- @param BOOL
-- @return void
function AttachCamToEntity() end

-- @todo
-- @module native
-- @submodule cam
-- @see ATTACH_CAM_TO_PED_BONE
-- @usage void ATTACH_CAM_TO_PED_BONE(Cam cam, Ped ped, int boneIndex, float x, float y, float z, BOOL heading);
-- @param cam Cam
-- @param Ped
-- @param int
-- @param float
-- @param BOOL
-- @return void
function AttachCamToPedBone() end

-- @todo
-- @module native
-- @submodule cam
-- @see DETACH_CAM
-- @usage void DETACH_CAM(Cam cam);
-- @param cam Cam
-- @return void
function DetachCam() end

-- The native seems to only be called once.  The native is used as so, CAM::SET_CAM_INHERIT_ROLL_VEHICLE(l_544, getElem(2, &l_525, 4)); In the exile1 script.
-- @module native
-- @submodule cam
-- @see SET_CAM_INHERIT_ROLL_VEHICLE
-- @usage void SET_CAM_INHERIT_ROLL_VEHICLE(Cam cam, BOOL p1);
-- @param cam Cam
-- @param BOOL
-- @return void
function SetCamInheritRollVehicle() end

-- @todo
-- @module native
-- @submodule cam
-- @see POINT_CAM_AT_COORD
-- @usage void POINT_CAM_AT_COORD(Cam cam, float x, float y, float z);
-- @param cam Cam
-- @param float
-- @return void
function PointCamAtCoord() end

-- p5 always seems to be 1 i.e TRUE
-- @module native
-- @submodule cam
-- @see POINT_CAM_AT_ENTITY
-- @usage void POINT_CAM_AT_ENTITY(Cam cam, Entity entity, float p2, float p3, float p4, BOOL p5);
-- @param cam Cam
-- @param Entity
-- @param float
-- @param BOOL
-- @return void
function PointCamAtEntity() end

-- Parameters p0-p5 seems correct. The bool p6 is unknown, but through every X360 script it's always 1. Please correct p0-p5 if any prove to be wrong.
-- @module native
-- @submodule cam
-- @see POINT_CAM_AT_PED_BONE
-- @usage void POINT_CAM_AT_PED_BONE(Cam cam, int ped, int boneIndex, float x, float y, float z, BOOL p6);
-- @param cam Cam
-- @param int
-- @param float
-- @param BOOL
-- @return void
function PointCamAtPedBone() end

-- @todo
-- @module native
-- @submodule cam
-- @see STOP_CAM_POINTING
-- @usage void STOP_CAM_POINTING(Cam cam);
-- @param cam Cam
-- @return void
function StopCamPointing() end

-- Allows you to aim and shoot at the direction the camera is facing.
-- @module native
-- @submodule cam
-- @see SET_CAM_AFFECTS_AIMING
-- @usage void SET_CAM_AFFECTS_AIMING(Cam cam, BOOL toggle);
-- @param cam Cam
-- @param BOOL
-- @return void
function SetCamAffectsAiming() end

-- NOTE: Debugging functions are not present in the retail version of the game.
-- @module native
-- @submodule cam
-- @see SET_CAM_DEBUG_NAME
-- @usage void SET_CAM_DEBUG_NAME(Cam camera, char* name);
-- @param camera Cam
-- @param char*
-- @return void
function SetCamDebugName() end

-- I filled p1-p6 (the floats) as they are as other natives with 6 floats in a row are similar and I see no other method. So if a test from anyone proves them wrong please correct.  p7 (length) determines the length of the spline, affects camera path and duration of transition between previous node and this one  p8 big values ~100 will slow down the camera movement before reaching this node  p9 != 0 seems to override the rotation/pitch (bool?)
-- @module native
-- @submodule cam
-- @see ADD_CAM_SPLINE_NODE
-- @usage void ADD_CAM_SPLINE_NODE(Cam camera, float x, float y, float z, float xRot, float yRot, float zRot, int length, int p8, int p9);
-- @param camera Cam
-- @param float
-- @param int
-- @return void
function AddCamSplineNode() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CAM_SPLINE_PHASE
-- @usage void SET_CAM_SPLINE_PHASE(Cam cam, float p1);
-- @param cam Cam
-- @param float
-- @return void
function SetCamSplinePhase() end

-- Can use this with SET_CAM_SPLINE_PHASE to set the float it this native returns.  (returns 1.0f when no nodes has been added, reached end of non existing spline)
-- @module native
-- @submodule cam
-- @see GET_CAM_SPLINE_PHASE
-- @usage float GET_CAM_SPLINE_PHASE(Cam cam);
-- @param cam Cam
-- @return float
function GetCamSplinePhase() end

-- I'm pretty sure the parameter is the camera as usual, but I am not certain so I'm going to leave it as is.
-- @module native
-- @submodule cam
-- @see GET_CAM_SPLINE_NODE_PHASE
-- @usage float GET_CAM_SPLINE_NODE_PHASE(Cam cam);
-- @param cam Cam
-- @return float
function GetCamSplineNodePhase() end

-- I named p1 as timeDuration as it is obvious. I'm assuming tho it is ran in ms(Milliseconds) as usual.
-- @module native
-- @submodule cam
-- @see SET_CAM_SPLINE_DURATION
-- @usage void SET_CAM_SPLINE_DURATION(int cam, int timeDuration);
-- @param cam int
-- @param int
-- @return void
function SetCamSplineDuration() end

-- I named the beginning from Any to BOOL as this native is used in an if statement as well.
-- @module native
-- @submodule cam
-- @see GET_CAM_SPLINE_NODE_INDEX
-- @usage BOOL GET_CAM_SPLINE_NODE_INDEX(Cam cam);
-- @param cam Cam
-- @return BOOL
function GetCamSplineNodeIndex() end

-- @todo
-- @module native
-- @submodule cam
-- @see OVERRIDE_CAM_SPLINE_VELOCITY
-- @usage void OVERRIDE_CAM_SPLINE_VELOCITY(Cam cam, int p1, float p2, float p3);
-- @param cam Cam
-- @param int
-- @param float
-- @return void
function OverrideCamSplineVelocity() end

-- Max value for p1 is 15.
-- @module native
-- @submodule cam
-- @see OVERRIDE_CAM_SPLINE_MOTION_BLUR
-- @usage void OVERRIDE_CAM_SPLINE_MOTION_BLUR(Cam cam, int p1, float p2, float p3);
-- @param cam Cam
-- @param int
-- @param float
-- @return void
function OverrideCamSplineMotionBlur() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_CAM_SPLINE_PAUSED
-- @usage BOOL IS_CAM_SPLINE_PAUSED(Any p0);
-- @param p0 Any
-- @return BOOL
function IsCamSplinePaused() end

-- Previous declaration void SET_CAM_ACTIVE_WITH_INTERP(Cam camTo, Cam camFrom, int duration, BOOL easeLocation, BOOL easeRotation) is completely wrong. The last two params are integers not BOOLs...
-- @module native
-- @submodule cam
-- @see SET_CAM_ACTIVE_WITH_INTERP
-- @usage void SET_CAM_ACTIVE_WITH_INTERP(Cam camTo, Cam camFrom, int duration, int easeLocation, int easeRotation);
-- @param camTo Cam
-- @param Cam
-- @param int
-- @return void
function SetCamActiveWithInterp() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_CAM_INTERPOLATING
-- @usage BOOL IS_CAM_INTERPOLATING(Cam cam);
-- @param cam Cam
-- @return BOOL
function IsCamInterpolating() end

-- Possible shake types (updated b617d):  DEATH_FAIL_IN_EFFECT_SHAKE DRUNK_SHAKE FAMILY5_DRUG_TRIP_SHAKE HAND_SHAKE JOLT_SHAKE LARGE_EXPLOSION_SHAKE MEDIUM_EXPLOSION_SHAKE SMALL_EXPLOSION_SHAKE ROAD_VIBRATION_SHAKE SKY_DIVING_SHAKE VIBRATE_SHAKE
-- @module native
-- @submodule cam
-- @see SHAKE_CAM
-- @usage void SHAKE_CAM(Cam cam, char* type, float amplitude);
-- @param cam Cam
-- @param char*
-- @param float
-- @return void
function ShakeCam() end

-- Example from michael2 script.  CAM::ANIMATED_SHAKE_CAM(l_5069, "shake_cam_all@", "light", "", 1f);
-- @module native
-- @submodule cam
-- @see ANIMATED_SHAKE_CAM
-- @usage void ANIMATED_SHAKE_CAM(Cam cam, char* p1, char* p2, char* p3, float amplitude);
-- @param cam Cam
-- @param char*
-- @param float
-- @return void
function AnimatedShakeCam() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_CAM_SHAKING
-- @usage BOOL IS_CAM_SHAKING(Cam cam);
-- @param cam Cam
-- @return BOOL
function IsCamShaking() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CAM_SHAKE_AMPLITUDE
-- @usage void SET_CAM_SHAKE_AMPLITUDE(Cam cam, float amplitude);
-- @param cam Cam
-- @param float
-- @return void
function SetCamShakeAmplitude() end

-- @todo
-- @module native
-- @submodule cam
-- @see STOP_CAM_SHAKING
-- @usage void STOP_CAM_SHAKING(Cam cam, BOOL p1);
-- @param cam Cam
-- @param BOOL
-- @return void
function StopCamShaking() end

-- In drunk_controller.c4, sub_309 if (CAM::_C912AF078AF19212()) {     CAM::_1C9D7949FA533490(0); }  What does "IS_SCRIPT_GLOBAL_SHAKING" mean..? :/ Is this a hash collision?
-- @module native
-- @submodule cam
-- @see IS_SCRIPT_GLOBAL_SHAKING
-- @usage BOOL IS_SCRIPT_GLOBAL_SHAKING();
-- @param undefined
-- @return BOOL
function IsScriptGlobalShaking() end

-- In drunk_controller.c4, sub_309 if (CAM::_C912AF078AF19212()) {     CAM::_1C9D7949FA533490(0); }
-- @module native
-- @submodule cam
-- @see STOP_SCRIPT_GLOBAL_SHAKING
-- @usage void STOP_SCRIPT_GLOBAL_SHAKING(BOOL p0);
-- @param p0 BOOL
-- @return void
function StopScriptGlobalShaking() end

-- Atleast one time in a script for the zRot Rockstar uses GET_ENTITY_HEADING to help fill the parameter.  p9 is unknown at this time. p10 throughout all the X360 Scripts is always 2.  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule cam
-- @see PLAY_CAM_ANIM
-- @usage BOOL PLAY_CAM_ANIM(Cam cam, char* animName, char* animDictionary, float x, float y, float z, float xRot, float yRot, float zRot, BOOL p9, int p10);
-- @param cam Cam
-- @param char*
-- @param float
-- @param BOOL
-- @param int
-- @return BOOL
function PlayCamAnim() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_CAM_PLAYING_ANIM
-- @usage BOOL IS_CAM_PLAYING_ANIM(Cam cam, char* animName, char* animDictionary);
-- @param cam Cam
-- @param char*
-- @return BOOL
function IsCamPlayingAnim() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CAM_ANIM_CURRENT_PHASE
-- @usage void SET_CAM_ANIM_CURRENT_PHASE(Cam cam, float phase);
-- @param cam Cam
-- @param float
-- @return void
function SetCamAnimCurrentPhase() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_CAM_ANIM_CURRENT_PHASE
-- @usage float GET_CAM_ANIM_CURRENT_PHASE(Cam cam);
-- @param cam Cam
-- @return float
function GetCamAnimCurrentPhase() end

-- Examples:  CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_2734, NETWORK::_02C40BF885C567B6(l_2739), "PLAYER_EXIT_L_CAM", "mp_doorbell");  CAM::PLAY_SYNCHRONIZED_CAM_ANIM(l_F0D[7/*1*/], l_F4D[15/*1*/], "ah3b_attackheli_cam2", "missheistfbi3b_helicrash");
-- @module native
-- @submodule cam
-- @see PLAY_SYNCHRONIZED_CAM_ANIM
-- @usage BOOL PLAY_SYNCHRONIZED_CAM_ANIM(Any p0, Any p1, char* animName, char* animDictionary);
-- @param p0 Any
-- @param Any
-- @param char*
-- @return BOOL
function PlaySynchronizedCamAnim() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_SCREEN_FADED_OUT
-- @usage BOOL IS_SCREEN_FADED_OUT();
-- @param undefined
-- @return BOOL
function IsScreenFadedOut() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_SCREEN_FADED_IN
-- @usage BOOL IS_SCREEN_FADED_IN();
-- @param undefined
-- @return BOOL
function IsScreenFadedIn() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_SCREEN_FADING_OUT
-- @usage BOOL IS_SCREEN_FADING_OUT();
-- @param undefined
-- @return BOOL
function IsScreenFadingOut() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_SCREEN_FADING_IN
-- @usage BOOL IS_SCREEN_FADING_IN();
-- @param undefined
-- @return BOOL
function IsScreenFadingIn() end

-- Fades the screen in.  duration: The time the fade should take, in milliseconds.
-- @module native
-- @submodule cam
-- @see DO_SCREEN_FADE_IN
-- @usage void DO_SCREEN_FADE_IN(int duration);
-- @param duration int
-- @return void
function DoScreenFadeIn() end

-- Fades the screen out.  duration: The time the fade should take, in milliseconds.
-- @module native
-- @submodule cam
-- @see DO_SCREEN_FADE_OUT
-- @usage void DO_SCREEN_FADE_OUT(int duration);
-- @param duration int
-- @return void
function DoScreenFadeOut() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_WIDESCREEN_BORDERS
-- @usage Any SET_WIDESCREEN_BORDERS(BOOL p0, int p1);
-- @param p0 BOOL
-- @param int
-- @return Any
function SetWidescreenBorders() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_GAMEPLAY_CAM_COORD
-- @usage Vector3 GET_GAMEPLAY_CAM_COORD();
-- @param undefined
-- @return Vector3
function GetGameplayCamCoord() end

-- p0 dosen't seem to change much, I tried it with 0, 1, 2: 0-Pitch(X): -70.000092 0-Roll(Y): -0.000001 0-Yaw(Z): -43.886459 1-Pitch(X): -70.000092 1-Roll(Y): -0.000001 1-Yaw(Z): -43.886463 2-Pitch(X): -70.000092 2-Roll(Y): -0.000002 2-Yaw(Z): -43.886467
-- @module native
-- @submodule cam
-- @see GET_GAMEPLAY_CAM_ROT
-- @usage Vector3 GET_GAMEPLAY_CAM_ROT(int rotationOrder);
-- @param rotationOrder int
-- @return Vector3
function GetGameplayCamRot() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_GAMEPLAY_CAM_FOV
-- @usage float GET_GAMEPLAY_CAM_FOV();
-- @param undefined
-- @return float
function GetGameplayCamFov() end

-- some camera effect that is used in the drunk-cheat, and turned off (by setting it to 0.0) along with the shaking effects once the drunk cheat is disabled.
-- @module native
-- @submodule cam
-- @see CUSTOM_MENU_COORDINATES
-- @usage void CUSTOM_MENU_COORDINATES(float p0);
-- @param p0 float
-- @return void
function CustomMenuCoordinates() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_GAMEPLAY_CAM_RELATIVE_HEADING
-- @usage float GET_GAMEPLAY_CAM_RELATIVE_HEADING();
-- @param undefined
-- @return float
function GetGameplayCamRelativeHeading() end

-- Sets the camera position relative to heading in float from -360 to +360.  Heading is alwyas 0 in aiming camera.
-- @module native
-- @submodule cam
-- @see SET_GAMEPLAY_CAM_RELATIVE_HEADING
-- @usage void SET_GAMEPLAY_CAM_RELATIVE_HEADING(float heading);
-- @param heading float
-- @return void
function SetGameplayCamRelativeHeading() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_GAMEPLAY_CAM_RELATIVE_PITCH
-- @usage float GET_GAMEPLAY_CAM_RELATIVE_PITCH();
-- @param undefined
-- @return float
function GetGameplayCamRelativePitch() end

-- Sets the camera pitch.  Parameters: x = pitches the camera on the x axis. Value2 = always seems to be hex 0x3F800000 (1.000000 float).
-- @module native
-- @submodule cam
-- @see SET_GAMEPLAY_CAM_RELATIVE_PITCH
-- @usage Any SET_GAMEPLAY_CAM_RELATIVE_PITCH(float x, float Value2);
-- @param x float
-- @param float
-- @return Any
function SetGameplayCamRelativePitch() end

-- Possible shake types (updated b617d):  DEATH_FAIL_IN_EFFECT_SHAKE DRUNK_SHAKE FAMILY5_DRUG_TRIP_SHAKE HAND_SHAKE JOLT_SHAKE LARGE_EXPLOSION_SHAKE MEDIUM_EXPLOSION_SHAKE SMALL_EXPLOSION_SHAKE ROAD_VIBRATION_SHAKE SKY_DIVING_SHAKE VIBRATE_SHAKE
-- @module native
-- @submodule cam
-- @see SHAKE_GAMEPLAY_CAM
-- @usage void SHAKE_GAMEPLAY_CAM(char* shakeName, float intensity);
-- @param shakeName char*
-- @param float
-- @return void
function ShakeGameplayCam() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_GAMEPLAY_CAM_SHAKING
-- @usage BOOL IS_GAMEPLAY_CAM_SHAKING();
-- @param undefined
-- @return BOOL
function IsGameplayCamShaking() end

-- Sets the amplitude for the gameplay (i.e. 3rd or 1st) camera to shake. Used in script "drunk_controller.ysc.c4" to simulate making the player drunk.
-- @module native
-- @submodule cam
-- @see SET_GAMEPLAY_CAM_SHAKE_AMPLITUDE
-- @usage void SET_GAMEPLAY_CAM_SHAKE_AMPLITUDE(float amplitude);
-- @param amplitude float
-- @return void
function SetGameplayCamShakeAmplitude() end

-- @todo
-- @module native
-- @submodule cam
-- @see STOP_GAMEPLAY_CAM_SHAKING
-- @usage void STOP_GAMEPLAY_CAM_SHAKING(BOOL p0);
-- @param p0 BOOL
-- @return void
function StopGameplayCamShaking() end

-- Examples when this function will return 0 are: - During busted screen. - When player is coming out from a hospital. - When player is coming out from a police station.
-- @module native
-- @submodule cam
-- @see IS_GAMEPLAY_CAM_RENDERING
-- @usage BOOL IS_GAMEPLAY_CAM_RENDERING();
-- @param undefined
-- @return BOOL
function IsGameplayCamRendering() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_GAMEPLAY_CAM_LOOKING_BEHIND
-- @usage BOOL IS_GAMEPLAY_CAM_LOOKING_BEHIND();
-- @param undefined
-- @return BOOL
function IsGameplayCamLookingBehind() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_SPHERE_VISIBLE
-- @usage BOOL IS_SPHERE_VISIBLE(float x, float y, float z, float radius);
-- @param x float
-- @param float
-- @return BOOL
function IsSphereVisible() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_FOLLOW_PED_CAM_ACTIVE
-- @usage BOOL IS_FOLLOW_PED_CAM_ACTIVE();
-- @param undefined
-- @return BOOL
function IsFollowPedCamActive() end

-- From the b617d scripts:  CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_ATTACHED_TO_ROPE_CAMERA", 0);  CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_ON_EXILE1_LADDER_CAMERA", 1500);  CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_SKY_DIVING_CAMERA", 0);  CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_SKY_DIVING_CAMERA", 3000);  CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_SKY_DIVING_FAMILY5_CAMERA", 0); CAM::SET_FOLLOW_PED_CAM_CUTSCENE_CHAT("FOLLOW_PED_SKY_DIVING_CAMERA", 0);
-- @module native
-- @submodule cam
-- @see SET_FOLLOW_PED_CAM_CUTSCENE_CHAT
-- @usage BOOL SET_FOLLOW_PED_CAM_CUTSCENE_CHAT(char* p0, int p1);
-- @param p0 char*
-- @param int
-- @return BOOL
function SetFollowPedCamCutsceneChat() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_FOLLOW_PED_CAM_ZOOM_LEVEL
-- @usage int GET_FOLLOW_PED_CAM_ZOOM_LEVEL();
-- @param undefined
-- @return int
function GetFollowPedCamZoomLevel() end

-- Returns 0 - Third Person Close 1 - Third Person Mid 2 - Third Person Far 4 - First Person
-- @module native
-- @submodule cam
-- @see GET_FOLLOW_PED_CAM_VIEW_MODE
-- @usage int GET_FOLLOW_PED_CAM_VIEW_MODE();
-- @param undefined
-- @return int
function GetFollowPedCamViewMode() end

-- Sets the type of Player camera:  0 - Third Person Close 1 - Third Person Mid 2 - Third Person Far 4 - First Person
-- @module native
-- @submodule cam
-- @see SET_FOLLOW_PED_CAM_VIEW_MODE
-- @usage void SET_FOLLOW_PED_CAM_VIEW_MODE(int viewMode);
-- @param viewMode int
-- @return void
function SetFollowPedCamViewMode() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_FOLLOW_VEHICLE_CAM_ACTIVE
-- @usage BOOL IS_FOLLOW_VEHICLE_CAM_ACTIVE();
-- @param undefined
-- @return BOOL
function IsFollowVehicleCamActive() end

-- hash collision?
-- @module native
-- @submodule cam
-- @see SET_TIME_IDLE_DROP
-- @usage void SET_TIME_IDLE_DROP(BOOL p0, BOOL p1);
-- @param p0 BOOL
-- @param BOOL
-- @return void
function SetTimeIdleDrop() end

-- @todo
-- @module native
-- @submodule cam
-- @see GET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL
-- @usage int GET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL();
-- @param undefined
-- @return int
function GetFollowVehicleCamZoomLevel() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL
-- @usage void SET_FOLLOW_VEHICLE_CAM_ZOOM_LEVEL(int zoomLevel);
-- @param zoomLevel int
-- @return void
function SetFollowVehicleCamZoomLevel() end

-- Returns the type of camera:  0 - Third Person Close 1 - Third Person Mid 2 - Third Person Far 4 - First Person
-- @module native
-- @submodule cam
-- @see GET_FOLLOW_VEHICLE_CAM_VIEW_MODE
-- @usage int GET_FOLLOW_VEHICLE_CAM_VIEW_MODE();
-- @param undefined
-- @return int
function GetFollowVehicleCamViewMode() end

-- Sets the type of Player camera in vehicles:  0 - Third Person Close 1 - Third Person Mid 2 - Third Person Far 4 - First Person
-- @module native
-- @submodule cam
-- @see SET_FOLLOW_VEHICLE_CAM_VIEW_MODE
-- @usage void SET_FOLLOW_VEHICLE_CAM_VIEW_MODE(int viewMode);
-- @param viewMode int
-- @return void
function SetFollowVehicleCamViewMode() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_AIM_CAM_ACTIVE
-- @usage BOOL IS_AIM_CAM_ACTIVE();
-- @param undefined
-- @return BOOL
function IsAimCamActive() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_FIRST_PERSON_AIM_CAM_ACTIVE
-- @usage BOOL IS_FIRST_PERSON_AIM_CAM_ACTIVE();
-- @param undefined
-- @return BOOL
function IsFirstPersonAimCamActive() end

-- @todo
-- @module native
-- @submodule cam
-- @see DISABLE_AIM_CAM_THIS_UPDATE
-- @usage void DISABLE_AIM_CAM_THIS_UPDATE();
-- @param undefined
-- @return void
function DisableAimCamThisUpdate() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_GAMEPLAY_COORD_HINT
-- @usage void SET_GAMEPLAY_COORD_HINT(float p0, float p1, float p2, Any p3, Any p4, Any p5, Any p6);
-- @param p0 float
-- @param float
-- @param Any
-- @return void
function SetGameplayCoordHint() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_GAMEPLAY_PED_HINT
-- @usage void SET_GAMEPLAY_PED_HINT(Ped p0, float x1, float y1, float z1, BOOL p4, Any p5, Any p6, Any p7);
-- @param p0 Ped
-- @param float
-- @param BOOL
-- @param Any
-- @return void
function SetGameplayPedHint() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_GAMEPLAY_VEHICLE_HINT
-- @usage void SET_GAMEPLAY_VEHICLE_HINT(Any p0, float p1, float p2, float p3, BOOL p4, Any p5, Any p6, Any p7);
-- @param p0 Any
-- @param float
-- @param BOOL
-- @param Any
-- @return void
function SetGameplayVehicleHint() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_GAMEPLAY_OBJECT_HINT
-- @usage void SET_GAMEPLAY_OBJECT_HINT(Any p0, float p1, float p2, float p3, BOOL p4, Any p5, Any p6, Any p7);
-- @param p0 Any
-- @param float
-- @param BOOL
-- @param Any
-- @return void
function SetGameplayObjectHint() end

-- p6 & p7 - possibly length or time
-- @module native
-- @submodule cam
-- @see SET_GAMEPLAY_ENTITY_HINT
-- @usage void SET_GAMEPLAY_ENTITY_HINT(Entity entity, float xOffset, float yOffset, float zOffset, BOOL p4, int p5, int p6, int p7, Any p8);
-- @param entity Entity
-- @param float
-- @param BOOL
-- @param int
-- @param Any
-- @return void
function SetGameplayEntityHint() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_GAMEPLAY_HINT_ACTIVE
-- @usage BOOL IS_GAMEPLAY_HINT_ACTIVE();
-- @param undefined
-- @return BOOL
function IsGameplayHintActive() end

-- @todo
-- @module native
-- @submodule cam
-- @see STOP_GAMEPLAY_HINT
-- @usage void STOP_GAMEPLAY_HINT(BOOL p0);
-- @param p0 BOOL
-- @return void
function StopGameplayHint() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_GAMEPLAY_HINT_FOV
-- @usage void SET_GAMEPLAY_HINT_FOV(float FOV);
-- @param FOV float
-- @return void
function SetGameplayHintFov() end

-- Hash collision
-- @module native
-- @submodule cam
-- @see GET_IS_MULTIPLAYER_BRIEF
-- @usage void GET_IS_MULTIPLAYER_BRIEF(BOOL p0);
-- @param p0 BOOL
-- @return void
function GetIsMultiplayerBrief() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CINEMATIC_BUTTON_ACTIVE
-- @usage void SET_CINEMATIC_BUTTON_ACTIVE(BOOL p0);
-- @param p0 BOOL
-- @return void
function SetCinematicButtonActive() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_CINEMATIC_CAM_RENDERING
-- @usage BOOL IS_CINEMATIC_CAM_RENDERING();
-- @param undefined
-- @return BOOL
function IsCinematicCamRendering() end

-- p0 argument found in the b617d scripts: "DRUNK_SHAKE"
-- @module native
-- @submodule cam
-- @see SHAKE_CINEMATIC_CAM
-- @usage void SHAKE_CINEMATIC_CAM(char* p0, float p1);
-- @param p0 char*
-- @param float
-- @return void
function ShakeCinematicCam() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_CINEMATIC_CAM_SHAKING
-- @usage BOOL IS_CINEMATIC_CAM_SHAKING();
-- @param undefined
-- @return BOOL
function IsCinematicCamShaking() end

-- @todo
-- @module native
-- @submodule cam
-- @see SET_CINEMATIC_CAM_SHAKE_AMPLITUDE
-- @usage void SET_CINEMATIC_CAM_SHAKE_AMPLITUDE(float p0);
-- @param p0 float
-- @return void
function SetCinematicCamShakeAmplitude() end

-- @todo
-- @module native
-- @submodule cam
-- @see STOP_CINEMATIC_CAM_SHAKING
-- @usage void STOP_CINEMATIC_CAM_SHAKING(BOOL p0);
-- @param p0 BOOL
-- @return void
function StopCinematicCamShaking() end

-- @todo
-- @module native
-- @submodule cam
-- @see CREATE_CINEMATIC_SHOT
-- @usage void CREATE_CINEMATIC_SHOT(Any p0, int p1, Any p2, Entity entity);
-- @param p0 Any
-- @param int
-- @param Any
-- @param Entity
-- @return void
function CreateCinematicShot() end

-- @todo
-- @module native
-- @submodule cam
-- @see IS_CINEMATIC_SHOT_ACTIVE
-- @usage BOOL IS_CINEMATIC_SHOT_ACTIVE(Any p0);
-- @param p0 Any
-- @return BOOL
function IsCinematicShotActive() end

-- @todo
-- @module native
-- @submodule cam
-- @see STOP_CINEMATIC_SHOT
-- @usage void STOP_CINEMATIC_SHOT(Any p0);
-- @param p0 Any
-- @return void
function StopCinematicShot() end

-- p0 = 0/1 or true/false  It doesn't seems to work
-- @module native
-- @submodule cam
-- @see SET_CINEMATIC_MODE_ACTIVE
-- @usage void SET_CINEMATIC_MODE_ACTIVE(BOOL p0);
-- @param p0 BOOL
-- @return void
function SetCinematicModeActive() end

-- @todo
-- @module native
-- @submodule cam
-- @see STOP_CUTSCENE_CAM_SHAKING
-- @usage void STOP_CUTSCENE_CAM_SHAKING();
-- @param undefined
-- @return void
function StopCutsceneCamShaking() end