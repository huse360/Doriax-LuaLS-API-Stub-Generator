-- ============================================================
-- Doriax Lua API for Lua Language Server
-- Generated automatically. Do not edit manually.
-- ============================================================

---@param self any
---@param event string
---@param methodName string
---@param tag? string
function RegisterEvent(self, event, methodName, tag?) end

---@param self any
---@param methodName string
---@param tag? string
function RegisterEngineEvent(self, methodName, tag?) end

---@class AABB
---@field BOXTYPE_FINITE any
---@field BOXTYPE_INFINITE any
---@field BOXTYPE_NULL any
---@field BoxType any
---@field CornerEnum any
---@field FAR_LEFT_BOTTOM any
---@field FAR_LEFT_TOP any
---@field FAR_RIGHT_BOTTOM any
---@field FAR_RIGHT_TOP any
---@field NEAR_LEFT_BOTTOM any
---@field NEAR_LEFT_TOP any
---@field NEAR_RIGHT_BOTTOM any
---@field NEAR_RIGHT_TOP any
---@field ZERO any
AABB = {}

function AABB:AABB() end

---@param L lua_State
function AABB:contains(L) end

---@param L lua_State
function AABB:distance(L) end

---@param L lua_State
function AABB:getCenter(L) end

---@param L lua_State
function AABB:getCorner(L) end

---@param L lua_State
function AABB:getCorners(L) end

---@param L lua_State
function AABB:getHalfSize(L) end

---@param L lua_State
function AABB:getSize(L) end

---@param L lua_State
function AABB:intersection(L) end

---@param L lua_State
function AABB:intersects(L) end

---@param L lua_State
function AABB:isFinite(L) end

---@param L lua_State
function AABB:isInfinite(L) end

---@param L lua_State
function AABB:isNull(L) end

---@param L lua_State
function AABB:merge(L) end

---@param L lua_State
function AABB:scale(L) end

---@param L lua_State
function AABB:setExtents(L) end

---@param L lua_State
function AABB:setFinite(L) end

---@param L lua_State
function AABB:setInfinite(L) end

---@param L lua_State
function AABB:setMaximum(L) end

---@param L lua_State
function AABB:setMaximumX(L) end

---@param L lua_State
function AABB:setMaximumY(L) end

---@param L lua_State
function AABB:setMaximumZ(L) end

---@param L lua_State
function AABB:setMinimum(L) end

---@param L lua_State
function AABB:setMinimumX(L) end

---@param L lua_State
function AABB:setMinimumY(L) end

---@param L lua_State
function AABB:setMinimumZ(L) end

---@param L lua_State
function AABB:setNull(L) end

---@param L lua_State
function AABB:squaredDistance(L) end

---@param L lua_State
function AABB:transform(L) end

---@param L lua_State
function AABB:volume(L) end

AABB.BOXTYPE_FINITE = nil
AABB.BOXTYPE_INFINITE = nil
AABB.BOXTYPE_NULL = nil
AABB.BoxType = nil
AABB.CornerEnum = nil
AABB.FAR_LEFT_BOTTOM = nil
AABB.FAR_LEFT_TOP = nil
AABB.FAR_RIGHT_BOTTOM = nil
AABB.FAR_RIGHT_TOP = nil
AABB.NEAR_LEFT_BOTTOM = nil
AABB.NEAR_LEFT_TOP = nil
AABB.NEAR_RIGHT_BOTTOM = nil
AABB.NEAR_RIGHT_TOP = nil
AABB.ZERO = nil

---@class Action
---@field _base EntityHandle
Action = {}

---@param Scene any
function Action:Action(Scene) end

function Action:getActionComponent() end

---@return number
function Action:getTimeCount() end

---@return boolean
function Action:isPaused() end

---@return boolean
function Action:isRunning() end

---@return boolean
function Action:isStopped() end

function Action:pause() end

function Action:setTarget() end

function Action:start() end

function Action:stop() end


---@class ActionComponent
ActionComponent = {}


---@class ActionFrame
ActionFrame = {}


---@class ActionSystem
ActionSystem = {}

---@param entity Entity
function ActionSystem:actionPause(entity) end

---@param entity Entity
function ActionSystem:actionStart(entity) end

---@param entity Entity
function ActionSystem:actionStop(entity) end


---@class AlphaAction
---@field _base TimedAction
AlphaAction = {}

---@param Scene any
function AlphaAction:AlphaAction(Scene) end

---@param startAlpha number
---@param endAlpha number
---@param duration number
---@param loop boolean
function AlphaAction:setAction(startAlpha, endAlpha, duration, loop) end


---@class Angle
Angle = {}

---@param angle number
---@return number
function Angle.defaultToDeg(angle) end

---@param angle number
---@return number
function Angle.defaultToRad(angle) end

---@param degrees number
---@return number
function Angle.degToDefault(degrees) end

---@param degrees number
---@return number
function Angle.degToRad(degrees) end

---@param radians number
---@return any
function Angle.radToDefault(radians) end

---@param radians number
---@return number
function Angle.radToDeg(radians) end


---@class Animation
---@field _base Action
Animation = {}

---@param Scene any
function Animation:Animation(Scene) end

function Animation:addActionFrame() end

function Animation:fadeIn() end

function Animation:fadeOut() end

---@param index number
---@return ActionFrame
function Animation:getActionFrame(index) end

---@return number
function Animation:getActionFrameSize() end

---@param index number
---@param duration number
function Animation:setActionFrameDuration(index, duration) end

---@param index number
---@param action Entity
function Animation:setActionFrameEntity(index, action) end

---@param index number
---@param startTime number
function Animation:setActionFrameStartTime(index, startTime) end


---@class AnimationComponent
AnimationComponent = {}


---@class AudioSystem
---@field globalVolume any
AudioSystem = {}

function AudioSystem.checkActive() end

function AudioSystem.pauseAll() end

function AudioSystem.resumeAll() end

function AudioSystem.stopAll() end

AudioSystem.globalVolume = nil

---@class Base64
Base64 = {}


---@class Body2D
---@field _base EntityHandle
Body2D = {}

---@param Scene any
---@param Entity any
function Body2D:Body2D(Scene, Entity) end

---@param impulse number
---@param wake boolean
function Body2D:applyAngularImpulse(impulse, wake) end

---@param force Vector2
---@param point Vector2
---@param wake boolean
function Body2D:applyForce(force, point, wake) end

---@param force Vector2
---@param wake boolean
function Body2D:applyForceToCenter(force, wake) end

---@param impulse Vector2
---@param point Vector2
---@param wake boolean
function Body2D:applyLinearImpulse(impulse, point, wake) end

---@param impulse Vector2
---@param wake boolean
function Body2D:applyLinearImpulseToCenter(impulse, wake) end

function Body2D:applyMassFromShapes() end

---@param torque number
---@param wake boolean
function Body2D:applyTorque(torque, wake) end

function Body2D:createBoxShape() end

function Body2D:createCapsuleShape() end

function Body2D:createCenteredBoxShape() end

function Body2D:createChainShape() end

function Body2D:createCircleShape() end

function Body2D:createPolygonShape() end

function Body2D:createRoundedBoxShape() end

function Body2D:createSegmentShape() end

function Body2D:getAttachedObject() end

function Body2D:getBodyContacts() end

---@return number
function Body2D:getCategoryBitsFilter() end

---@return number
function Body2D:getGroupIndexFilter() end

---@return number
function Body2D:getMaskBitsFilter() end

---@return number
function Body2D:getMass() end

function Body2D:getNumShapes() end

---@return number
function Body2D:getRotationalInertia() end

function Body2D:getShapeContacts() end

---@return number
function Body2D:getShapeDensity() end

---@return number
function Body2D:getShapeFriction() end

---@return number
function Body2D:getShapeRestitution() end

function Body2D:getShapeType() end

---@return boolean
function Body2D:isShapeContactEvents() end

---@return boolean
function Body2D:isShapeEnableHitEvents() end

---@return boolean
function Body2D:isShapePreSolveEvents() end

---@return boolean
function Body2D:isShapeSensor() end

---@return boolean
function Body2D:isShapeSensorEvents() end

function Body2D:load() end

function Body2D:removeAllShapes() end

function Body2D:setBitsFilter() end

function Body2D:setCategoryBitsFilter() end

function Body2D:setGroupIndexFilter() end

function Body2D:setMaskBitsFilter() end

function Body2D:setShapeContactEvents() end

function Body2D:setShapeDensity() end

function Body2D:setShapeEnableHitEvents() end

function Body2D:setShapeFriction() end

function Body2D:setShapePreSolveEvents() end

function Body2D:setShapeRestitution() end

function Body2D:setShapeSensor() end

function Body2D:setShapeSensorEvents() end


---@class Body3D
---@field _base EntityHandle
Body3D = {}

---@param Scene any
---@param Entity any
function Body3D:Body3D(Scene, Entity) end

function Body3D:activate() end

---@param angularImpulse Vector3
function Body3D:applyAngularImpulse(angularImpulse) end

---@param surfacePosition Vector3
---@param surfaceNormal Vector3
---@param buoyancy number
---@param linearDrag number
---@param angularDrag number
---@param fluidVelocity Vector3
---@param gravity Vector3
---@param deltaTime number
---@return boolean
function Body3D:applyBuoyancyImpulse(surfacePosition, surfaceNormal, buoyancy, linearDrag, angularDrag, fluidVelocity, gravity, deltaTime) end

function Body3D:applyForce() end

function Body3D:applyImpulse() end

function Body3D:applyTorque() end

function Body3D:canBeKinematicOrDynamic() end

function Body3D:createBoxShape() end

function Body3D:createCapsuleShape() end

---@return number
function Body3D:createConvexHullShape() end

function Body3D:createCylinderShape() end

---@return number
function Body3D:createHeightFieldShape() end

---@return number
function Body3D:createMeshShape() end

function Body3D:createSphereShape() end

function Body3D:createTaperedCapsuleShape() end

function Body3D:deactivate() end

function Body3D:getAccumulatedForce() end

function Body3D:getAccumulatedTorque() end

function Body3D:getAttachedObject() end

---@return Vector3
function Body3D:getCenterOfMassPosition() end

function Body3D:getInverseInertia() end

function Body3D:getNumShapes() end

function Body3D:getPointVelocity() end

function Body3D:getPointVelocityCOM() end

---@return number
function Body3D:getShapeDensity() end

function Body3D:getShapeType() end

function Body3D:load() end

function Body3D:setAllowedDOFs() end

function Body3D:setAllowedDOFs2DPlane() end

function Body3D:setAllowedDOFsAll() end

function Body3D:setAngularVelocityClamped() end

function Body3D:setBitsFilter() end

function Body3D:setLinearVelocityClamped() end

function Body3D:setOverrideMassAndInertia() end

function Body3D:setShapeDensity() end


---@class Bone
---@field _base Object
Bone = {}

---@param Scene any
---@param Entity any
function Bone:Bone(Scene, Entity) end


---@class BundleManager
---@field bundleCount any
BundleManager = {}

function BundleManager.clearAll() end

function BundleManager.createBundle() end

---@param scene Scene
---@param rootEntity Entity
---@return boolean
function BundleManager.destroyBundle(scene, rootEntity) end

---@param name string
---@return number
function BundleManager.getBundleId(name) end

---@param id number
---@return string
function BundleManager.getBundleName(id) end

---@return string[]
function BundleManager.getBundleNames() end

BundleManager.bundleCount = nil

---@class Button
---@field _base Image
Button = {}

---@param Scene any
function Button:Button(Scene) end

function Button:getButtonComponent() end

function Button:getLabelObject() end

function Button:setColorDisabled() end

function Button:setColorHovered() end

function Button:setColorNormal() end

function Button:setColorPressed() end

function Button:setLabelColor() end

function Button:setTextureDisabled() end

function Button:setTextureHovered() end

function Button:setTextureNormal() end

function Button:setTexturePressed() end


---@class ButtonComponent
ButtonComponent = {}


---@class Camera
---@field _base Object
Camera = {}

---@param Scene any
function Camera:Camera(Scene) end

function Camera:activate() end

function Camera:disableTarget() end

---@param angle number
function Camera:elevatePosition(angle) end

---@param angle number
function Camera:elevateView(angle) end

---@return Vector3
function Camera:getDirection() end

---@return number
function Camera:getDistanceFromTarget() end

---@return Framebuffer
function Camera:getFramebuffer() end

---@return Matrix4
function Camera:getProjectionMatrix() end

---@return Vector3
function Camera:getRight() end

---@return Vector3
function Camera:getUp() end

---@return Matrix4
function Camera:getViewMatrix() end

---@return Matrix4
function Camera:getViewProjectionMatrix() end

---@return Vector3
function Camera:getWorldDirection() end

---@return Vector3
function Camera:getWorldRight() end

---@return Vector3
function Camera:getWorldTarget() end

---@return Vector3
function Camera:getWorldUp() end

---@return boolean
function Camera:isUsingTarget() end

---@param angle number
function Camera:rotatePosition(angle) end

---@param angle number
function Camera:rotateView(angle) end

---@param x number
---@param y number
---@return Ray
function Camera:screenToRay(x, y) end

---@param filter TextureFilter
function Camera:setFramebufferFilter(filter) end

---@param width number
---@param height number
function Camera:setFramebufferSize(width, height) end

---@param left number
---@param right number
---@param bottom number
---@param top number
---@param nearValue number
---@param farValue number
function Camera:setOrtho(left, right, bottom, top, nearValue, farValue) end

---@param yfov number
---@param aspect number
---@param nearValue number
---@param farValue number
function Camera:setPerspective(yfov, aspect, nearValue, farValue) end

---@param target Vector3
function Camera:setTarget(target) end

---@param type CameraType
function Camera:setType(type) end

---@param up Vector3
function Camera:setUp(up) end

---@param distance number
function Camera:slide(distance) end

---@param distance number
function Camera:slideForward(distance) end

---@param distance number
function Camera:slideUp(distance) end

function Camera:updateCamera() end

---@param distance number
function Camera:walkForward(distance) end

---@param distance number
function Camera:zoom(distance) end


---@class CollideShapeResult3D
CollideShapeResult3D = {}

---@return Vector3
function CollideShapeResult3D:getContactPointOnA() end

---@return Vector3
function CollideShapeResult3D:getContactPointOnB() end

---@return Vector3
function CollideShapeResult3D:getPenetrationAxis() end

---@return number
function CollideShapeResult3D:getShapeIndex1() end

---@return number
function CollideShapeResult3D:getShapeIndex2() end


---@class Color
Color = {}

function Color.linearTosRGB() end

function Color.sRGBToLinear() end


---@class ColorAction
---@field _base TimedAction
ColorAction = {}

---@param Scene any
function ColorAction:ColorAction(Scene) end

function ColorAction:setAction() end


---@class Contact2D
Contact2D = {}

---@return Body2D
function Contact2D:getBodyA() end

---@return Body2D
function Contact2D:getBodyB() end

---@return Entity
function Contact2D:getBodyEntityA() end

---@return Entity
function Contact2D:getBodyEntityB() end

---@return Manifold2D
function Contact2D:getManifold() end

---@return number
function Contact2D:getShapeIndexA() end

---@return number
function Contact2D:getShapeIndexB() end


---@class Contact3D
Contact3D = {}

---@return Vector3
function Contact3D:getBaseOffset() end

---@return number
function Contact3D:getPenetrationDepth() end

---@param index number
---@return Vector3
function Contact3D:getRelativeContactPointsOnA(index) end

---@param index number
---@return Vector3
function Contact3D:getRelativeContactPointsOnB(index) end

---@return number
function Contact3D:getShapeIndex1() end

---@return number
function Contact3D:getShapeIndex2() end

---@return Vector3
function Contact3D:getWorldSpaceNormal() end


---@class Container
---@field _base UILayout
Container = {}

---@param Scene any
function Container:Container(Scene) end

---@param id number
---@return boolean
function Container:isBoxExpand(id) end

function Container:resize() end

function Container:setBoxExpand() end


---@class Data
---@field _base FileData
Data = {}

function Data:Data() end

---@param arg1 any
---@param aDataLength number
---@param aCopy boolean
---@param aTakeOwnership boolean
---@return number
function Data:open(arg1, aDataLength, aCopy, aTakeOwnership) end


---@class DoriaxScript
---@field entity number
---@field properties table
---@field scene Scene
DoriaxScript = {}

DoriaxScript.entity = nil
DoriaxScript.properties = nil
DoriaxScript.scene = nil

---@class Engine
---@field allowEventsOutCanvas any
---@field asyncLoading any
---@field callMouseInTouchEvent any
---@field callTouchInMouseEvent any
---@field canvasHeight any
---@field canvasWidth any
---@field deltatime any
---@field framebuffer any
---@field framerate any
---@field graphicBackend any
---@field ignoreEventsHandledByUI any
---@field interpolationAlpha any
---@field mouseCursor any
---@field mouseMode any
---@field onCanvasChanged any
---@field onCharInput any
---@field onDraw any
---@field onFixedUpdate any
---@field onGamepadAxisMove any
---@field onGamepadButtonDown any
---@field onGamepadButtonUp any
---@field onGamepadConnect any
---@field onGamepadDisconnect any
---@field onKeyDown any
---@field onKeyUp any
---@field onMouseDown any
---@field onMouseEnter any
---@field onMouseLeave any
---@field onMouseMove any
---@field onMouseScroll any
---@field onMouseUp any
---@field onPause any
---@field onPostUpdate any
---@field onResume any
---@field onShutdown any
---@field onTouchCancel any
---@field onTouchEnd any
---@field onTouchMove any
---@field onTouchStart any
---@field onUpdate any
---@field onViewDestroyed any
---@field onViewLoaded any
---@field openGL any
---@field platform any
---@field preferredCanvasHeight any
---@field preferredCanvasWidth any
---@field scalingMode any
---@field scene any
---@field systemTime any
---@field textureStrategy any
---@field updateTime any
---@field useDegrees any
---@field viewRect any
Engine = {}

function Engine.addSceneLayer() end

function Engine.clearAllSubscriptions() end

function Engine.clearComponentSubscriptions() end

function Engine.commitThreadQueue() end

function Engine.endAsyncThread() end

function Engine.executeSceneOnce() end

function Engine.getLastScene() end

function Engine.getMainScene() end

function Engine.getQueuedResourceCount() end

function Engine.getScene() end

function Engine.hasScenesToExecuteOnce() end

function Engine.isAsyncThread() end

function Engine.isSceneRunning() end

function Engine.isUIEventReceived() end

function Engine.isViewLoaded() end

function Engine.pauseGameEvents() end

function Engine.removeAllSceneLayers() end

function Engine.removeAllScenes() end

function Engine.removeScene() end

function Engine.setCallTouchInMouseEvent() end

function Engine.setCanvasSize() end

function Engine.setMaxResourceLoadingThreads() end

function Engine.setMousePosition() end

function Engine.setScene() end

function Engine.setUpdateTimeMS() end

function Engine.startAsyncThread() end

Engine.allowEventsOutCanvas = nil
Engine.asyncLoading = nil
Engine.callMouseInTouchEvent = nil
Engine.callTouchInMouseEvent = nil
Engine.canvasHeight = nil
Engine.canvasWidth = nil
Engine.deltatime = nil
Engine.framebuffer = nil
Engine.framerate = nil
Engine.graphicBackend = nil
Engine.ignoreEventsHandledByUI = nil
Engine.interpolationAlpha = nil
Engine.mouseCursor = nil
Engine.mouseMode = nil
Engine.onCanvasChanged = nil
Engine.onCharInput = nil
Engine.onDraw = nil
Engine.onFixedUpdate = nil
Engine.onGamepadAxisMove = nil
Engine.onGamepadButtonDown = nil
Engine.onGamepadButtonUp = nil
Engine.onGamepadConnect = nil
Engine.onGamepadDisconnect = nil
Engine.onKeyDown = nil
Engine.onKeyUp = nil
Engine.onMouseDown = nil
Engine.onMouseEnter = nil
Engine.onMouseLeave = nil
Engine.onMouseMove = nil
Engine.onMouseScroll = nil
Engine.onMouseUp = nil
Engine.onPause = nil
Engine.onPostUpdate = nil
Engine.onResume = nil
Engine.onShutdown = nil
Engine.onTouchCancel = nil
Engine.onTouchEnd = nil
Engine.onTouchMove = nil
Engine.onTouchStart = nil
Engine.onUpdate = nil
Engine.onViewDestroyed = nil
Engine.onViewLoaded = nil
Engine.openGL = nil
Engine.platform = nil
Engine.preferredCanvasHeight = nil
Engine.preferredCanvasWidth = nil
Engine.scalingMode = nil
Engine.scene = nil
Engine.systemTime = nil
Engine.textureStrategy = nil
Engine.updateTime = nil
Engine.useDegrees = nil
Engine.viewRect = nil

---@class EntityHandle
EntityHandle = {}

---@param Scene any
function EntityHandle:EntityHandle(Scene) end


---@class EntityManager
EntityManager = {}

function EntityManager:EntityManager() end

function EntityManager:createSystemEntity() end

function EntityManager:createUserEntity() end

function EntityManager:destroy() end

function EntityManager:getLastUserEntity() end

function EntityManager:getName() end

function EntityManager:getSignature() end

function EntityManager:isCreated() end

function EntityManager:recreateEntity() end

function EntityManager:setName() end

function EntityManager:setSignature() end


---@class EntityRegistry
EntityRegistry = {}

function EntityRegistry:EntityRegistry() end

function EntityRegistry:addEntityChild() end

function EntityRegistry:clear() end

function EntityRegistry:createEntity() end

function EntityRegistry:createSystemEntity() end

function EntityRegistry:createUserEntity() end

function EntityRegistry:destroyEntity() end

function EntityRegistry:findBranchLastIndex() end

function EntityRegistry:findEntity() end

function EntityRegistry:findOldestParent() end

function EntityRegistry:getDefaultEntityPool() end

function EntityRegistry:getEntityList() end

function EntityRegistry:getEntityName() end

function EntityRegistry:getLastEntity() end

function EntityRegistry:getSignature() end

function EntityRegistry:isEntityCreated() end

function EntityRegistry:isParentOf() end

function EntityRegistry:moveChildDown() end

function EntityRegistry:moveChildToBottom() end

function EntityRegistry:moveChildToIndex() end

function EntityRegistry:moveChildToTop() end

function EntityRegistry:moveChildUp() end

function EntityRegistry:recreateEntity() end

function EntityRegistry:setDefaultEntityPool() end

function EntityRegistry:setEntityName() end


---@class File
---@field _base FileData
File = {}

function File:File() end

function File:close() end

function File:flush() end

---@param arg1 any
---@param write boolean
---@return number
function File:open(arg1, write) end


---@class FileData
FileData = {}

---@return string
function FileData:eof() end

---@return string
function FileData:length() end

---@return string
function FileData:pos() end

---@return string
function FileData:read16() end

---@return string
function FileData:read32() end

---@return string
function FileData:read8() end

---@return string
function FileData:readString() end

---@return string
function FileData:seek() end

---@param s string
---@return number
function FileData:writeString(s) end

---@return string
function FileData.getBaseDir() end

---@return string
function FileData.getFilePathExtension() end

---@return string
function FileData.getSystemPath() end

function FileData.newFile() end


---@class Fog
---@field _base EntityHandle
Fog = {}

---@param Scene any
function Fog:Fog(Scene) end

---@param color Vector3
function Fog:setColor(color) end

---@param start number
---@param end number
function Fog:setLinearStartEnd(start, end) end


---@class Framebuffer
Framebuffer = {}

function Framebuffer:Framebuffer() end

function Framebuffer:create() end

function Framebuffer:destroy() end

function Framebuffer:getRender() end

function Framebuffer:getVersion() end

function Framebuffer:height() end

function Framebuffer:isCreated() end

function Framebuffer:width() end


---@class FramebufferRender
FramebufferRender = {}

function FramebufferRender:FramebufferRender() end

function FramebufferRender:createFramebuffer() end

function FramebufferRender:destroyFramebuffer() end

function FramebufferRender:getColorTexture() end

function FramebufferRender:isCreated() end


---@class Image
---@field _base UILayout
Image = {}

---@param Scene any
function Image:Image(Scene) end

function Image:getAABB() end

---@param name string
---@return Vector4
function Image:getShaderUniform(name) end

function Image:getUIComponent() end

function Image:getWorldAABB() end

---@param name string
---@return boolean
function Image:removeShaderUniform(name) end

function Image:setColor() end

function Image:setPatchMargin() end

function Image:setShaderUniform() end

function Image:setTexture() end


---@class Input
---@field GAMEPAD_AXIS_LAST number
---@field GAMEPAD_AXIS_LEFT_TRIGGER number
---@field GAMEPAD_AXIS_LEFT_X number
---@field GAMEPAD_AXIS_LEFT_Y number
---@field GAMEPAD_AXIS_RIGHT_TRIGGER number
---@field GAMEPAD_AXIS_RIGHT_X number
---@field GAMEPAD_AXIS_RIGHT_Y number
---@field GAMEPAD_BUTTON_A number
---@field GAMEPAD_BUTTON_B number
---@field GAMEPAD_BUTTON_BACK number
---@field GAMEPAD_BUTTON_CIRCLE number
---@field GAMEPAD_BUTTON_CROSS number
---@field GAMEPAD_BUTTON_DPAD_DOWN number
---@field GAMEPAD_BUTTON_DPAD_LEFT number
---@field GAMEPAD_BUTTON_DPAD_RIGHT number
---@field GAMEPAD_BUTTON_DPAD_UP number
---@field GAMEPAD_BUTTON_GUIDE number
---@field GAMEPAD_BUTTON_LAST number
---@field GAMEPAD_BUTTON_LEFT_BUMPER number
---@field GAMEPAD_BUTTON_LEFT_THUMB number
---@field GAMEPAD_BUTTON_RIGHT_BUMPER number
---@field GAMEPAD_BUTTON_RIGHT_THUMB number
---@field GAMEPAD_BUTTON_SQUARE number
---@field GAMEPAD_BUTTON_START number
---@field GAMEPAD_BUTTON_TRIANGLE number
---@field GAMEPAD_BUTTON_X number
---@field GAMEPAD_BUTTON_Y number
---@field KEY_0 number
---@field KEY_1 number
---@field KEY_2 number
---@field KEY_3 number
---@field KEY_4 number
---@field KEY_5 number
---@field KEY_6 number
---@field KEY_7 number
---@field KEY_8 number
---@field KEY_9 number
---@field KEY_A number
---@field KEY_APOSTROPHE number
---@field KEY_B number
---@field KEY_BACKSLASH number
---@field KEY_BACKSPACE number
---@field KEY_C number
---@field KEY_CAPS_LOCK number
---@field KEY_COMMA number
---@field KEY_D number
---@field KEY_DELETE number
---@field KEY_DOWN number
---@field KEY_E number
---@field KEY_END number
---@field KEY_ENTER number
---@field KEY_EQUAL number
---@field KEY_ESCAPE number
---@field KEY_F number
---@field KEY_F1 number
---@field KEY_F10 number
---@field KEY_F11 number
---@field KEY_F12 number
---@field KEY_F13 number
---@field KEY_F14 number
---@field KEY_F15 number
---@field KEY_F16 number
---@field KEY_F17 number
---@field KEY_F18 number
---@field KEY_F19 number
---@field KEY_F2 number
---@field KEY_F20 number
---@field KEY_F21 number
---@field KEY_F22 number
---@field KEY_F23 number
---@field KEY_F24 number
---@field KEY_F25 number
---@field KEY_F3 number
---@field KEY_F4 number
---@field KEY_F5 number
---@field KEY_F6 number
---@field KEY_F7 number
---@field KEY_F8 number
---@field KEY_F9 number
---@field KEY_G number
---@field KEY_GRAVE_ACCENT number
---@field KEY_H number
---@field KEY_HOME number
---@field KEY_I number
---@field KEY_INSERT number
---@field KEY_J number
---@field KEY_K number
---@field KEY_KP_0 number
---@field KEY_KP_1 number
---@field KEY_KP_2 number
---@field KEY_KP_3 number
---@field KEY_KP_4 number
---@field KEY_KP_5 number
---@field KEY_KP_6 number
---@field KEY_KP_7 number
---@field KEY_KP_8 number
---@field KEY_KP_9 number
---@field KEY_KP_ADD number
---@field KEY_KP_DECIMAL number
---@field KEY_KP_DIVIDE number
---@field KEY_KP_ENTER number
---@field KEY_KP_EQUAL number
---@field KEY_KP_MULTIPLY number
---@field KEY_KP_SUBTRACT number
---@field KEY_L number
---@field KEY_LAST number
---@field KEY_LEFT number
---@field KEY_LEFT_ALT number
---@field KEY_LEFT_BRACKET number
---@field KEY_LEFT_CONTROL number
---@field KEY_LEFT_SHIFT number
---@field KEY_LEFT_SUPER number
---@field KEY_M number
---@field KEY_MENU number
---@field KEY_MINUS number
---@field KEY_N number
---@field KEY_NUM_LOCK number
---@field KEY_O number
---@field KEY_P number
---@field KEY_PAGE_DOWN number
---@field KEY_PAGE_UP number
---@field KEY_PAUSE number
---@field KEY_PERIOD number
---@field KEY_PRINT_SCREEN number
---@field KEY_Q number
---@field KEY_R number
---@field KEY_RIGHT number
---@field KEY_RIGHT_ALT number
---@field KEY_RIGHT_BRACKET number
---@field KEY_RIGHT_CONTROL number
---@field KEY_RIGHT_SHIFT number
---@field KEY_RIGHT_SUPER number
---@field KEY_S number
---@field KEY_SCROLL_LOCK number
---@field KEY_SEMICOLON number
---@field KEY_SLASH number
---@field KEY_SPACE number
---@field KEY_T number
---@field KEY_TAB number
---@field KEY_U number
---@field KEY_UNKNOWN number
---@field KEY_UP number
---@field KEY_V number
---@field KEY_W number
---@field KEY_WORLD_1 number
---@field KEY_WORLD_2 number
---@field KEY_X number
---@field KEY_Y number
---@field KEY_Z number
---@field MODIFIER_ALT number
---@field MODIFIER_CAPS_LOCK number
---@field MODIFIER_CONTROL number
---@field MODIFIER_NUM_LOCK number
---@field MODIFIER_SHIFT number
---@field MODIFIER_SUPER number
---@field MOUSE_BUTTON_1 number
---@field MOUSE_BUTTON_2 number
---@field MOUSE_BUTTON_3 number
---@field MOUSE_BUTTON_4 number
---@field MOUSE_BUTTON_5 number
---@field MOUSE_BUTTON_6 number
---@field MOUSE_BUTTON_7 number
---@field MOUSE_BUTTON_8 number
---@field MOUSE_BUTTON_LAST number
---@field MOUSE_BUTTON_LEFT number
---@field MOUSE_BUTTON_MIDDLE number
---@field MOUSE_BUTTON_RIGHT number
Input = {}

---@param pointer number
---@return number
function Input.findTouchIndex(pointer) end

---@param id number
---@param axis number
---@return number
function Input.getGamepadAxis(id, axis) end

---@param index number
---@return number
function Input.getGamepadId(index) end

---@param id number
---@return string
function Input.getGamepadName(id) end

---@return number
function Input.getModifiers() end

---@return Vector2
function Input.getMousePosition() end

---@return Vector2
function Input.getMouseScroll() end

---@param pointer number
---@return Vector2
function Input.getTouchPosition(pointer) end

---@return Touch[]
function Input.getTouches() end

---@param id number
---@param button number
---@return boolean
function Input.isGamepadButtonPressed(id, button) end

---@param id number
---@return boolean
function Input.isGamepadConnected(id) end

---@param key number
---@return any
function Input.isKeyPressed(key) end

---@return boolean
function Input.isMouseEntered() end

---@param button number
---@return boolean
function Input.isMousePressed(button) end

---@return boolean
function Input.isTouch() end

---@return number
function Input.numGamepads() end

---@return number
function Input.numTouches() end

Input.GAMEPAD_AXIS_LAST = nil
Input.GAMEPAD_AXIS_LEFT_TRIGGER = nil
Input.GAMEPAD_AXIS_LEFT_X = nil
Input.GAMEPAD_AXIS_LEFT_Y = nil
Input.GAMEPAD_AXIS_RIGHT_TRIGGER = nil
Input.GAMEPAD_AXIS_RIGHT_X = nil
Input.GAMEPAD_AXIS_RIGHT_Y = nil
Input.GAMEPAD_BUTTON_A = nil
Input.GAMEPAD_BUTTON_B = nil
Input.GAMEPAD_BUTTON_BACK = nil
Input.GAMEPAD_BUTTON_CIRCLE = nil
Input.GAMEPAD_BUTTON_CROSS = nil
Input.GAMEPAD_BUTTON_DPAD_DOWN = nil
Input.GAMEPAD_BUTTON_DPAD_LEFT = nil
Input.GAMEPAD_BUTTON_DPAD_RIGHT = nil
Input.GAMEPAD_BUTTON_DPAD_UP = nil
Input.GAMEPAD_BUTTON_GUIDE = nil
Input.GAMEPAD_BUTTON_LAST = nil
Input.GAMEPAD_BUTTON_LEFT_BUMPER = nil
Input.GAMEPAD_BUTTON_LEFT_THUMB = nil
Input.GAMEPAD_BUTTON_RIGHT_BUMPER = nil
Input.GAMEPAD_BUTTON_RIGHT_THUMB = nil
Input.GAMEPAD_BUTTON_SQUARE = nil
Input.GAMEPAD_BUTTON_START = nil
Input.GAMEPAD_BUTTON_TRIANGLE = nil
Input.GAMEPAD_BUTTON_X = nil
Input.GAMEPAD_BUTTON_Y = nil
Input.KEY_0 = nil
Input.KEY_1 = nil
Input.KEY_2 = nil
Input.KEY_3 = nil
Input.KEY_4 = nil
Input.KEY_5 = nil
Input.KEY_6 = nil
Input.KEY_7 = nil
Input.KEY_8 = nil
Input.KEY_9 = nil
Input.KEY_A = nil
Input.KEY_APOSTROPHE = nil
Input.KEY_B = nil
Input.KEY_BACKSLASH = nil
Input.KEY_BACKSPACE = nil
Input.KEY_C = nil
Input.KEY_CAPS_LOCK = nil
Input.KEY_COMMA = nil
Input.KEY_D = nil
Input.KEY_DELETE = nil
Input.KEY_DOWN = nil
Input.KEY_E = nil
Input.KEY_END = nil
Input.KEY_ENTER = nil
Input.KEY_EQUAL = nil
Input.KEY_ESCAPE = nil
Input.KEY_F = nil
Input.KEY_F1 = nil
Input.KEY_F10 = nil
Input.KEY_F11 = nil
Input.KEY_F12 = nil
Input.KEY_F13 = nil
Input.KEY_F14 = nil
Input.KEY_F15 = nil
Input.KEY_F16 = nil
Input.KEY_F17 = nil
Input.KEY_F18 = nil
Input.KEY_F19 = nil
Input.KEY_F2 = nil
Input.KEY_F20 = nil
Input.KEY_F21 = nil
Input.KEY_F22 = nil
Input.KEY_F23 = nil
Input.KEY_F24 = nil
Input.KEY_F25 = nil
Input.KEY_F3 = nil
Input.KEY_F4 = nil
Input.KEY_F5 = nil
Input.KEY_F6 = nil
Input.KEY_F7 = nil
Input.KEY_F8 = nil
Input.KEY_F9 = nil
Input.KEY_G = nil
Input.KEY_GRAVE_ACCENT = nil
Input.KEY_H = nil
Input.KEY_HOME = nil
Input.KEY_I = nil
Input.KEY_INSERT = nil
Input.KEY_J = nil
Input.KEY_K = nil
Input.KEY_KP_0 = nil
Input.KEY_KP_1 = nil
Input.KEY_KP_2 = nil
Input.KEY_KP_3 = nil
Input.KEY_KP_4 = nil
Input.KEY_KP_5 = nil
Input.KEY_KP_6 = nil
Input.KEY_KP_7 = nil
Input.KEY_KP_8 = nil
Input.KEY_KP_9 = nil
Input.KEY_KP_ADD = nil
Input.KEY_KP_DECIMAL = nil
Input.KEY_KP_DIVIDE = nil
Input.KEY_KP_ENTER = nil
Input.KEY_KP_EQUAL = nil
Input.KEY_KP_MULTIPLY = nil
Input.KEY_KP_SUBTRACT = nil
Input.KEY_L = nil
Input.KEY_LAST = nil
Input.KEY_LEFT = nil
Input.KEY_LEFT_ALT = nil
Input.KEY_LEFT_BRACKET = nil
Input.KEY_LEFT_CONTROL = nil
Input.KEY_LEFT_SHIFT = nil
Input.KEY_LEFT_SUPER = nil
Input.KEY_M = nil
Input.KEY_MENU = nil
Input.KEY_MINUS = nil
Input.KEY_N = nil
Input.KEY_NUM_LOCK = nil
Input.KEY_O = nil
Input.KEY_P = nil
Input.KEY_PAGE_DOWN = nil
Input.KEY_PAGE_UP = nil
Input.KEY_PAUSE = nil
Input.KEY_PERIOD = nil
Input.KEY_PRINT_SCREEN = nil
Input.KEY_Q = nil
Input.KEY_R = nil
Input.KEY_RIGHT = nil
Input.KEY_RIGHT_ALT = nil
Input.KEY_RIGHT_BRACKET = nil
Input.KEY_RIGHT_CONTROL = nil
Input.KEY_RIGHT_SHIFT = nil
Input.KEY_RIGHT_SUPER = nil
Input.KEY_S = nil
Input.KEY_SCROLL_LOCK = nil
Input.KEY_SEMICOLON = nil
Input.KEY_SLASH = nil
Input.KEY_SPACE = nil
Input.KEY_T = nil
Input.KEY_TAB = nil
Input.KEY_U = nil
Input.KEY_UNKNOWN = nil
Input.KEY_UP = nil
Input.KEY_V = nil
Input.KEY_W = nil
Input.KEY_WORLD_1 = nil
Input.KEY_WORLD_2 = nil
Input.KEY_X = nil
Input.KEY_Y = nil
Input.KEY_Z = nil
Input.MODIFIER_ALT = nil
Input.MODIFIER_CAPS_LOCK = nil
Input.MODIFIER_CONTROL = nil
Input.MODIFIER_NUM_LOCK = nil
Input.MODIFIER_SHIFT = nil
Input.MODIFIER_SUPER = nil
Input.MOUSE_BUTTON_1 = nil
Input.MOUSE_BUTTON_2 = nil
Input.MOUSE_BUTTON_3 = nil
Input.MOUSE_BUTTON_4 = nil
Input.MOUSE_BUTTON_5 = nil
Input.MOUSE_BUTTON_6 = nil
Input.MOUSE_BUTTON_7 = nil
Input.MOUSE_BUTTON_8 = nil
Input.MOUSE_BUTTON_LAST = nil
Input.MOUSE_BUTTON_LEFT = nil
Input.MOUSE_BUTTON_MIDDLE = nil
Input.MOUSE_BUTTON_RIGHT = nil

---@class InstanceData
InstanceData = {}


---@class Joint2D
Joint2D = {}

---@param Scene any
function Joint2D:Joint2D(Scene) end

---@return Joint2DType
function Joint2D:getType() end

function Joint2D:setDistanceJoint() end

---@param bodyA Entity
---@param bodyB Entity
function Joint2D:setMotorJoint(bodyA, bodyB) end

---@param bodyA Entity
---@param bodyB Entity
---@param target Vector2
function Joint2D:setMouseJoint(bodyA, bodyB, target) end

---@param bodyA Entity
---@param bodyB Entity
---@param worldAnchor Vector2
---@param worldAxis Vector2
function Joint2D:setPrismaticJoint(bodyA, bodyB, worldAnchor, worldAxis) end

---@param bodyA Entity
---@param bodyB Entity
---@param worldAnchor Vector2
function Joint2D:setRevoluteJoint(bodyA, bodyB, worldAnchor) end

---@param bodyA Entity
---@param bodyB Entity
---@param worldAnchor Vector2
function Joint2D:setWeldJoint(bodyA, bodyB, worldAnchor) end

---@param bodyA Entity
---@param bodyB Entity
---@param worldAnchor Vector2
---@param worldAxis Vector2
function Joint2D:setWheelJoint(bodyA, bodyB, worldAnchor, worldAxis) end


---@class Joint3D
Joint3D = {}

---@param Scene any
function Joint3D:Joint3D(Scene) end

---@return Joint3DType
function Joint3D:getType() end

---@param bodyA Entity
---@param bodyB Entity
---@param worldAnchor Vector3
---@param twistAxis Vector3
function Joint3D:setConeJoint(bodyA, bodyB, worldAnchor, twistAxis) end

function Joint3D:setDistanceJoint() end

function Joint3D:setFixedJoint() end

---@param bodyA Entity
---@param bodyB Entity
---@param hingeA Entity
---@param hingeB Entity
---@param numTeethGearA number
---@param numTeethGearB number
function Joint3D:setGearJoint(bodyA, bodyB, hingeA, hingeB, numTeethGearA, numTeethGearB) end

---@param bodyA Entity
---@param bodyB Entity
---@param worldAnchor Vector3
---@param axis Vector3
---@param normal Vector3
function Joint3D:setHingeJoint(bodyA, bodyB, worldAnchor, axis, normal) end

---@param bodyA Entity
---@param bodyB Entity
---@param positions Vector3[]
---@param tangents Vector3[]
---@param normals Vector3[]
---@param pathPosition Vector3
---@param isLooping boolean
function Joint3D:setPathJoint(bodyA, bodyB, positions, tangents, normals, pathPosition, isLooping) end

---@param bodyA Entity
---@param bodyB Entity
---@param worldAnchor Vector3
function Joint3D:setPointJoint(bodyA, bodyB, worldAnchor) end

---@param bodyA Entity
---@param bodyB Entity
---@param sliderAxis Vector3
---@param limitsMin number
---@param limitsMax number
function Joint3D:setPrismaticJoint(bodyA, bodyB, sliderAxis, limitsMin, limitsMax) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param worldAnchorOnBodyA Vector3
---@param worldAnchorOnBodyB Vector3
---@param fixedPointA Vector3
---@param fixedPointB Vector3
function Joint3D:setPulleyJoint(joint, bodyA, bodyB, worldAnchorOnBodyA, worldAnchorOnBodyB, fixedPointA, fixedPointB) end

---@param bodyA Entity
---@param bodyB Entity
---@param hinge Entity
---@param slider Entity
---@param numTeethRack number
---@param numTeethGear number
---@param rackLength number
function Joint3D:setRackAndPinionJoint(bodyA, bodyB, hinge, slider, numTeethRack, numTeethGear, rackLength) end

---@param bodyA Entity
---@param bodyB Entity
---@param worldAnchorOnBodyA Vector3
---@param worldAnchorOnBodyB Vector3
---@param axisX Vector3
---@param axisY Vector3
function Joint3D:setSixDOFJoint(bodyA, bodyB, worldAnchorOnBodyA, worldAnchorOnBodyB, axisX, axisY) end

---@param bodyA Entity
---@param bodyB Entity
---@param worldAnchor Vector3
---@param twistAxis Vector3
---@param planeAxis Vector3
---@param normalHalfConeAngle number
---@param planeHalfConeAngle number
---@param twistMinAngle number
---@param twistMaxAngle number
function Joint3D:setSwingTwistJoint(bodyA, bodyB, worldAnchor, twistAxis, planeAxis, normalHalfConeAngle, planeHalfConeAngle, twistMinAngle, twistMaxAngle) end


---@class Light
---@field _base Object
Light = {}

---@param Scene any
function Light:Light(Scene) end

function Light:clearSpotMask() end

---@param farValue number
function Light:setCameraFar(farValue) end

---@param nearValue number
function Light:setCameraNear(nearValue) end

function Light:setColor() end

function Light:setConeAngle() end

function Light:setDirection() end

function Light:setInnerConeAngle() end

function Light:setIntensity() end

---@param numCascades number
function Light:setNumCascades(numCascades) end

function Light:setOuterConeAngle() end

function Light:setRange() end

---@param nearValue number
---@param farValue number
function Light:setShadowCameraNearFar(nearValue, farValue) end

---@param shadows boolean
function Light:setShadows(shadows) end

function Light:setSpotMask() end

function Light:setType() end


---@class Light2D
---@field _base Object
Light2D = {}

---@param Scene any
function Light2D:Light2D(Scene) end

---@param color Vector3
function Light2D:setColor(color) end

---@param falloff number
function Light2D:setFalloff(falloff) end

---@param height number
function Light2D:setHeight(height) end

---@param intensity number
function Light2D:setIntensity(intensity) end

---@param range number
function Light2D:setRange(range) end

---@param shadows boolean
function Light2D:setShadows(shadows) end


---@class LineData
LineData = {}


---@class Lines
---@field _base Object
Lines = {}

---@param Scene any
function Lines:Lines(Scene) end

function Lines:addLine() end

function Lines:clearLines() end

function Lines:getLine() end

function Lines:getNumLines() end

---@param name string
---@return Vector4
function Lines:getShaderUniform(name) end

function Lines:removeLine() end

---@param name string
---@return boolean
function Lines:removeShaderUniform(name) end

function Lines:setShaderUniform() end

function Lines:updateLine() end

function Lines:updateLines() end


---@class Log
Log = {}

---@param text string
function Log.debug(text) end

---@param text string
function Log.error(text) end

---@param text string
function Log.print(text) end

---@param text string
function Log.verbose(text) end

---@param text string
function Log.warn(text) end


---@class Manifold2D
Manifold2D = {}

---@param index number
---@return Vector2
function Manifold2D:getManifoldPointAnchorA(index) end

---@param index number
---@return Vector2
function Manifold2D:getManifoldPointAnchorB(index) end

---@param index number
---@return number
function Manifold2D:getManifoldPointNormalImpulse(index) end

---@param index number
---@return number
function Manifold2D:getManifoldPointNormalVelocity(index) end

---@param index number
---@return Vector2
function Manifold2D:getManifoldPointPosition(index) end

---@param index number
---@return number
function Manifold2D:getManifoldPointSeparation(index) end

---@param index number
---@return number
function Manifold2D:getManifoldPointTangentImpulse(index) end

---@return Vector2
function Manifold2D:getNormal() end

---@return number
function Manifold2D:getPointCount() end

---@param index number
---@return boolean
function Manifold2D:isManifoldPointPersisted(index) end


---@class Material
Material = {}


---@class Matrix3
Matrix3 = {}

function Matrix3:Matrix3() end

function Matrix3:__add() end

function Matrix3:__eq() end

function Matrix3:__mul() end

function Matrix3:__sub() end

function Matrix3:__tostring() end

function Matrix3:calcInverse() end

function Matrix3:column() end

---@param kQ Matrix3
---@param kD Vector3
---@param kU Vector3
function Matrix3:decomposeQDU(kQ, kD, kU) end

function Matrix3:get() end

function Matrix3:identity() end

function Matrix3:inverse() end

function Matrix3:isValid() end

function Matrix3:row() end

function Matrix3:set() end

function Matrix3:setColumn() end

function Matrix3:setRow() end

function Matrix3:transpose() end

function Matrix3.rotateMatrix() end

function Matrix3.rotateXMatrix() end

function Matrix3.rotateYMatrix() end

function Matrix3.rotateZMatrix() end

function Matrix3.scaleMatrix() end


---@class Matrix4
Matrix4 = {}

function Matrix4:Matrix4() end

function Matrix4:__add() end

function Matrix4:__eq() end

function Matrix4:__mul() end

function Matrix4:__sub() end

function Matrix4:__tostring() end

function Matrix4:column() end

---@param position Vector3
---@param scale Vector3
---@param rotation Quaternion
function Matrix4:decompose(position, scale, rotation) end

---@param position Vector3
---@param scale Vector3
---@param rotation Quaternion
function Matrix4:decomposeQDU(position, scale, rotation) end

---@param position Vector3
---@param scale Vector3
---@param rotation Quaternion
function Matrix4:decomposeStandard(position, scale, rotation) end

function Matrix4:determinant() end

function Matrix4:get() end

function Matrix4:identity() end

function Matrix4:inverse() end

function Matrix4:isValid() end

function Matrix4:linear() end

function Matrix4:row() end

function Matrix4:set() end

function Matrix4:setColumn() end

function Matrix4:setRow() end

function Matrix4:translateInPlace() end

function Matrix4:transpose() end

---@param left number
---@param right number
---@param bottom number
---@param top number
---@param near number
---@param far number
---@return Matrix4
function Matrix4.frustumMatrix(left, right, bottom, top, near, far) end

---@param eye Vector3
---@param center Vector3
---@param up Vector3
---@return Matrix4
function Matrix4.lookAtMatrix(eye, center, up) end

---@param l number
---@param r number
---@param b number
---@param t number
---@param n number
---@param f number
---@return Matrix4
function Matrix4.orthoMatrix(l, r, b, t, n, f) end

---@param yfov number
---@param aspect number
---@param near number
---@param far number
---@return Matrix4
function Matrix4.perspectiveMatrix(yfov, aspect, near, far) end

function Matrix4.rotateMatrix() end

function Matrix4.rotateXMatrix() end

function Matrix4.rotateYMatrix() end

function Matrix4.rotateZMatrix() end

function Matrix4.scaleMatrix() end

function Matrix4.translateMatrix() end


---@class Mesh
---@field _base Object
Mesh = {}

---@param Scene any
function Mesh:Mesh(Scene) end

function Mesh:addInstance() end

function Mesh:clearInstances() end

function Mesh:createInstancedMesh() end

function Mesh:getAABB() end

function Mesh:getInstance() end

---@return Material
function Mesh:getMaterial() end

---@return number
function Mesh:getNumInstances() end

function Mesh:getNumSubmeshes() end

---@return PrimitiveType
function Mesh:getPrimitiveType() end

function Mesh:getShaderUniform() end

function Mesh:getVerticesAABB() end

function Mesh:getWorldAABB() end

function Mesh:hasInstancedMesh() end

---@return boolean
function Mesh:isCastShadowsWithTexture() end

---@return boolean
function Mesh:isFaceCulling() end

---@param index number
---@return boolean
function Mesh:isInstanceVisible(index) end

function Mesh:isMirror() end

---@param index number
function Mesh:removeInstance(index) end

function Mesh:removeInstancedMesh() end

function Mesh:removeMirror() end

function Mesh:removeShaderUniform() end

function Mesh:setAsMirror() end

function Mesh:setCastShadowsWithTexture() end

function Mesh:setColor() end

function Mesh:setFaceCulling() end

---@param index number
---@param visible boolean
function Mesh:setInstanceVisible(index, visible) end

function Mesh:setInstancedBillboard() end

function Mesh:setMaterial() end

function Mesh:setPrimitiveType() end

function Mesh:setShaderUniform() end

function Mesh:setTexture() end

function Mesh:updateInstance() end

function Mesh:updateInstances() end


---@class MeshPolygon
---@field _base Mesh
MeshPolygon = {}

---@param Scene any
function MeshPolygon:MeshPolygon(Scene) end

---@param self MeshPolygon
---@return number
function MeshPolygon:addVertex(self) end


---@class MeshSystem
MeshSystem = {}

---@param mesh MeshComponent
---@param width number
---@param height number
---@param depth number
---@param tiles number
function MeshSystem:createBox(mesh, width, height, depth, tiles) end

---@param mesh MeshComponent
---@param baseRadius number
---@param topRadius number
---@param height number
---@param slices number
---@param stacks number
function MeshSystem:createCapsule(mesh, baseRadius, topRadius, height, slices, stacks) end

---@param mesh MeshComponent
---@param baseRadius number
---@param topRadius number
---@param height number
---@param slices number
---@param stacks number
function MeshSystem:createCylinder(mesh, baseRadius, topRadius, height, slices, stacks) end

---@param entity Entity
function MeshSystem:createInstancedMesh(entity) end

---@param mesh MeshComponent
---@param width number
---@param depth number
---@param tiles number
function MeshSystem:createPlane(mesh, width, depth, tiles) end

---@param mesh MeshComponent
---@param radius number
---@param slices number
---@param stacks number
function MeshSystem:createSphere(mesh, radius, slices, stacks) end

---@param mesh MeshComponent
---@param radius number
---@param ringRadius number
---@param sides number
---@param rings number
function MeshSystem:createTorus(mesh, radius, ringRadius, sides, rings) end

---@param entity Entity
---@param filename string
---@param asyncLoad boolean
---@param skipEntities boolean
---@param changeRootTransform boolean
---@return boolean
function MeshSystem:loadGLTF(entity, filename, asyncLoad, skipEntities, changeRootTransform) end

---@param entity Entity
---@param filename string
---@param asyncLoad boolean
---@return boolean
function MeshSystem:loadOBJ(entity, filename, asyncLoad) end

---@param entity Entity
function MeshSystem:removeInstancedMesh(entity) end


---@class Mirror
---@field _base Shape
Mirror = {}

---@param Scene any
function Mirror:Mirror(Scene) end

---@param normal Vector3
function Mirror:setNormal(normal) end


---@class Model
---@field _base Mesh
Model = {}

---@param Scene any
function Model:Model(Scene) end

function Model:findAnimation() end

function Model:getAnimation() end

function Model:getBone() end

function Model:getMorphWeight() end

function Model:loadGLTF() end

function Model:loadModel() end

function Model:loadOBJ() end

function Model:playAnimation() end

function Model:resetToBindPose() end

function Model:setMorphWeight() end

function Model:stopAnimations() end


---@class MorphTracks
---@field _base Action
MorphTracks = {}

---@param Scene any
function MorphTracks:MorphTracks(Scene) end

---@param segment number
---@param ease EaseType
function MorphTracks:setEasing(segment, ease) end

---@param easings EaseType[]
function MorphTracks:setEasings(easings) end

---@param times number[]
function MorphTracks:setTimes(times) end

---@param values number[][]
function MorphTracks:setValues(values) end


---@class OBB
---@field BOXTYPE_FINITE any
---@field BOXTYPE_INFINITE any
---@field BOXTYPE_NULL any
---@field BoxType any
---@field CornerEnum any
---@field FAR_LEFT_BOTTOM any
---@field FAR_LEFT_TOP any
---@field FAR_RIGHT_BOTTOM any
---@field FAR_RIGHT_TOP any
---@field NEAR_LEFT_BOTTOM any
---@field NEAR_LEFT_TOP any
---@field NEAR_RIGHT_BOTTOM any
---@field NEAR_RIGHT_TOP any
OBB = {}

function OBB:OBB() end

---@param L lua_State
function OBB:closestPoint(L) end

---@param L lua_State
function OBB:contains(L) end

---@param L lua_State
function OBB:distance(L) end

---@param L lua_State
function OBB:enclose(L) end

---@param L lua_State
function OBB:getAxisX(L) end

---@param L lua_State
function OBB:getAxisY(L) end

---@param L lua_State
function OBB:getAxisZ(L) end

---@param L lua_State
function OBB:getCorner(L) end

---@param L lua_State
function OBB:getCorners(L) end

---@param L lua_State
function OBB:intersects(L) end

---@param L lua_State
function OBB:isFinite(L) end

---@param L lua_State
function OBB:isInfinite(L) end

---@param L lua_State
function OBB:isNull(L) end

---@param L lua_State
function OBB:setAxes(L) end

---@param L lua_State
function OBB:setFinite(L) end

---@param L lua_State
function OBB:setInfinite(L) end

---@param L lua_State
function OBB:setNull(L) end

---@param L lua_State
function OBB:squaredDistance(L) end

---@param L lua_State
function OBB:toAABB(L) end

---@param L lua_State
function OBB:toMatrix(L) end

---@param L lua_State
function OBB:toString(L) end

---@param L lua_State
function OBB:transform(L) end

---@param L lua_State
function OBB:volume(L) end

OBB.BOXTYPE_FINITE = nil
OBB.BOXTYPE_INFINITE = nil
OBB.BOXTYPE_NULL = nil
OBB.BoxType = nil
OBB.CornerEnum = nil
OBB.FAR_LEFT_BOTTOM = nil
OBB.FAR_LEFT_TOP = nil
OBB.FAR_RIGHT_BOTTOM = nil
OBB.FAR_RIGHT_TOP = nil
OBB.NEAR_LEFT_BOTTOM = nil
OBB.NEAR_LEFT_TOP = nil
OBB.NEAR_RIGHT_BOTTOM = nil
OBB.NEAR_RIGHT_TOP = nil

---@class Object
---@field _base EntityHandle
Object = {}

---@param Scene any
function Object:Object(Scene) end

function Object:addChild() end

---@return Body2D
function Object:getBody2D() end

---@return Body3D
function Object:getBody3D() end

---@param direction Vector3
---@return Ray
function Object:getRay(direction) end

---@return Vector3
function Object:getWorldPosition() end

---@return Quaternion
function Object:getWorldRotation() end

---@return Vector3
function Object:getWorldScale() end

function Object:moveDown() end

function Object:moveToBottom() end

function Object:moveToTop() end

function Object:moveUp() end

function Object:removeBody2D() end

function Object:removeBody3D() end

function Object:removeChild() end

function Object:removeParent() end

---@param billboard boolean
---@param fake boolean
---@param cylindrical boolean
function Object:setBillboard(billboard, fake, cylindrical) end

---@param rotation Quaternion
function Object:setBillboardRotation(rotation) end

function Object:setPosition() end

---@param rotation Quaternion
function Object:setRotation(rotation) end

---@param factor number
function Object:setScale(factor) end

---@param visible boolean
function Object:setVisibleOnly(visible) end

function Object:updateTransform() end


---@class Occluder2D
---@field _base Object
Occluder2D = {}

---@param Scene any
function Occluder2D:Occluder2D(Scene) end

---@param vertex Vector2
function Occluder2D:addVertex(vertex) end

function Occluder2D:clearVertices() end

---@return number
function Occluder2D:getVertexCount() end


---@class OverallBuildProgress
OverallBuildProgress = {}


---@class Panel
---@field _base Image
Panel = {}

---@param Scene any
function Panel:Panel(Scene) end

---@return Container
function Panel:getHeaderContainerObject() end

---@return Image
function Panel:getHeaderImageObject() end

---@return Text
function Panel:getHeaderTextObject() end

function Panel:getPanelComponent() end

---@param color Vector4
function Panel:setHeaderColor(color) end

---@param left number
---@param top number
---@param right number
---@param bottom number
function Panel:setHeaderMargin(left, top, right, bottom) end

---@param margin number
function Panel:setHeaderPatchMargin(margin) end

---@param path string
function Panel:setHeaderTexture(path) end

---@param minWidth number
---@param minHeight number
function Panel:setMinSize(minWidth, minHeight) end

---@param color Vector4
function Panel:setTitleColor(color) end

---@param canMove boolean
---@param canResize boolean
---@param canBringToFront boolean
function Panel:setWindowProperties(canMove, canResize, canBringToFront) end


---@class PanelComponent
PanelComponent = {}


---@class ParticleAccelerationInitializer
ParticleAccelerationInitializer = {}


---@class ParticleAccelerationModifier
ParticleAccelerationModifier = {}


---@class ParticleAlphaInitializer
ParticleAlphaInitializer = {}


---@class ParticleAlphaModifier
ParticleAlphaModifier = {}


---@class ParticleBurst
ParticleBurst = {}


---@class ParticleColorGradient
ParticleColorGradient = {}


---@class ParticleColorGradientStop
ParticleColorGradientStop = {}


---@class ParticleColorInitializer
ParticleColorInitializer = {}


---@class ParticleColorModifier
ParticleColorModifier = {}


---@class ParticleLifeInitializer
ParticleLifeInitializer = {}


---@class ParticlePositionInitializer
ParticlePositionInitializer = {}


---@class ParticlePositionModifier
ParticlePositionModifier = {}


---@class ParticleRotationInitializer
ParticleRotationInitializer = {}


---@class ParticleRotationModifier
ParticleRotationModifier = {}


---@class ParticleScaleInitializer
ParticleScaleInitializer = {}


---@class ParticleScaleModifier
ParticleScaleModifier = {}


---@class ParticleSizeInitializer
ParticleSizeInitializer = {}


---@class ParticleSizeModifier
ParticleSizeModifier = {}


---@class ParticleSpriteInitializer
ParticleSpriteInitializer = {}


---@class ParticleSpriteModifier
ParticleSpriteModifier = {}


---@class ParticleVelocityInitializer
ParticleVelocityInitializer = {}


---@class ParticleVelocityModifier
ParticleVelocityModifier = {}


---@class Particles
---@field _base Action
Particles = {}

---@param Scene any
function Particles:Particles(Scene) end

function Particles:addBurst() end

function Particles:addColorGradientStop() end

function Particles:clearBursts() end

function Particles:clearColorGradient() end

function Particles:getParticlesomponent() end

function Particles:reset() end

function Particles:setAccelerationInitializer() end

function Particles:setAccelerationModifier() end

function Particles:setAlphaInitializer() end

function Particles:setAlphaModifier() end

function Particles:setBursts() end

function Particles:setCirclePositionInitializer() end

function Particles:setColorGradient() end

function Particles:setColorGradientUseSRGB() end

function Particles:setColorInitializer() end

function Particles:setColorModifier() end

function Particles:setConePositionInitializer() end

function Particles:setHemispherePositionInitializer() end

function Particles:setLifeInitializer() end

function Particles:setPositionInitializer() end

function Particles:setPositionModifier() end

function Particles:setRotationInitializer() end

function Particles:setRotationModifier() end

function Particles:setScaleInitializer() end

function Particles:setScaleModifier() end

function Particles:setSizeInitializer() end

function Particles:setSizeModifier() end

function Particles:setSpherePositionInitializer() end

function Particles:setSpriteIntializer() end

function Particles:setSpriteModifier() end

function Particles:setVelocityInitializer() end

function Particles:setVelocityModifier() end


---@class ParticlesComponent
ParticlesComponent = {}


---@class PhysicsSystem
PhysicsSystem = {}

function PhysicsSystem:addBroadPhaseLayer3D() end

function PhysicsSystem:createBody2D() end

function PhysicsSystem:createBody3D() end

function PhysicsSystem:destroyBody2D() end

function PhysicsSystem:destroyBody3D() end

function PhysicsSystem:destroyJoint2D() end

function PhysicsSystem:destroyJoint3D() end

function PhysicsSystem:destroyShape2D() end

function PhysicsSystem:destroyShape3D() end

function PhysicsSystem:loadBody2D() end

function PhysicsSystem:loadBody3D() end

function PhysicsSystem:loadConeJoint3D() end

function PhysicsSystem:loadDistanceJoint2D() end

function PhysicsSystem:loadDistanceJoint3D() end

function PhysicsSystem:loadFixedJoint3D() end

function PhysicsSystem:loadGearJoint3D() end

function PhysicsSystem:loadHingeJoint3D() end

function PhysicsSystem:loadMotorJoint2D() end

function PhysicsSystem:loadMouseJoint2D() end

function PhysicsSystem:loadPathJoint3D() end

function PhysicsSystem:loadPointJoint3D() end

function PhysicsSystem:loadPrismaticJoint2D() end

function PhysicsSystem:loadPrismaticJoint3D() end

function PhysicsSystem:loadPulleyJoint3D() end

function PhysicsSystem:loadRackAndPinionJoint3D() end

function PhysicsSystem:loadRevoluteJoint2D() end

function PhysicsSystem:loadSixDOFJoint3D() end

function PhysicsSystem:loadSwingTwistJoint3D() end

function PhysicsSystem:loadWeldJoint2D() end

function PhysicsSystem:loadWheelJoint2D() end

function PhysicsSystem:removeBody2D() end

function PhysicsSystem:removeBody3D() end

---@param self PhysicsSystem
---@param L lua_State
function PhysicsSystem:setGravity(self, L) end

---@param self PhysicsSystem
---@param L lua_State
function PhysicsSystem:setGravity2D(self, L) end

---@param self PhysicsSystem
---@param L lua_State
function PhysicsSystem:setGravity3D(self, L) end


---@class Plane
---@field BOTH_SIDE any
---@field NEGATIVE_SIDE any
---@field NO_SIDE any
---@field POSITIVE_SIDE any
---@field Side any
Plane = {}

function Plane:Plane() end

---@param L lua_State
function Plane:__eq(L) end

---@param L lua_State
function Plane:__unm(L) end

---@param L lua_State
function Plane:getDistance(L) end

---@param L lua_State
function Plane:getSide(L) end

---@param L lua_State
function Plane:normalize(L) end

---@param L lua_State
function Plane:normalized(L) end

---@param L lua_State
function Plane:projectVector(L) end

---@param L lua_State
function Plane:redefine(L) end

Plane.BOTH_SIDE = nil
Plane.NEGATIVE_SIDE = nil
Plane.NO_SIDE = nil
Plane.POSITIVE_SIDE = nil
Plane.Side = nil

---@class PointData
PointData = {}


---@class Points
---@field _base Object
Points = {}

---@param Scene any
function Points:Points(Scene) end

function Points:addPoint() end

function Points:addSpriteFrame() end

function Points:clearPoints() end

function Points:getNumPoints() end

function Points:getPoint() end

---@param name string
---@return Vector4
function Points:getShaderUniform(name) end

function Points:isPointVisible() end

function Points:removePoint() end

---@param name string
---@return boolean
function Points:removeShaderUniform(name) end

function Points:removeSpriteFrame() end

function Points:setPointVisible() end

function Points:setShaderUniform() end

function Points:setTexture() end

function Points:updatePoint() end

function Points:updatePoints() end


---@class Polygon
---@field _base UILayout
Polygon = {}

---@param Scene any
function Polygon:Polygon(Scene) end

function Polygon:addVertex() end

function Polygon:getAABB() end

---@param name string
---@return Vector4
function Polygon:getShaderUniform(name) end

function Polygon:getWorldAABB() end

---@param name string
---@return boolean
function Polygon:removeShaderUniform(name) end

function Polygon:setColor() end

function Polygon:setShaderUniform() end

function Polygon:setTexture() end


---@class PositionAction
---@field _base TimedAction
PositionAction = {}

---@param Scene any
function PositionAction:PositionAction(Scene) end

---@param startPosition Vector3
---@param endPosition Vector3
---@param duration number
---@param loop boolean
function PositionAction:setAction(startPosition, endPosition, duration, loop) end


---@class PostProcessPass
PostProcessPass = {}

function PostProcessPass:PostProcessPass() end

function PostProcessPass:getUniform() end

function PostProcessPass:removeUniform() end

function PostProcessPass:setUniform() end


---@class Progressbar
---@field _base Image
Progressbar = {}

---@param Scene any
function Progressbar:Progressbar(Scene) end

function Progressbar:getFillObject() end

function Progressbar:getProgressbarComponent() end

function Progressbar:setFillColor() end

function Progressbar:setFillMargin() end

function Progressbar:setFillPatchMargin() end

function Progressbar:setFillTexture() end


---@class ProgressbarComponent
ProgressbarComponent = {}


---@class Quaternion
---@field IDENTITY any
Quaternion = {}

function Quaternion:Quaternion() end

function Quaternion:__add() end

function Quaternion:__eq() end

function Quaternion:__mul() end

function Quaternion:__sub() end

function Quaternion:__tostring() end

function Quaternion:__unm() end

function Quaternion:dot() end

function Quaternion:exp() end

function Quaternion:fromAngle() end

function Quaternion:fromAngleAxis() end

function Quaternion:fromAxes() end

function Quaternion:fromEulerAngles() end

function Quaternion:fromRotationMatrix() end

function Quaternion:getEulerAngles() end

---@return number
function Quaternion:getPitch() end

---@return number
function Quaternion:getRoll() end

function Quaternion:getRotationMatrix() end

---@return number
function Quaternion:getYaw() end

function Quaternion:inverse() end

function Quaternion:log() end

function Quaternion:norm() end

---@param arg1 any
---@return Quaternion
function Quaternion:normalize(arg1) end

---@param arg1 any
---@return number
function Quaternion:normalizeL(arg1) end

---@return Quaternion
function Quaternion:normalized() end

function Quaternion:unitInverse() end

function Quaternion:xAxis() end

function Quaternion:yAxis() end

function Quaternion:zAxis() end

function Quaternion.nlerp() end

function Quaternion.slerp() end

function Quaternion.slerpExtraSpins() end

---@param fT number
---@param rkP Quaternion
---@param rkA Quaternion
---@param rkB Quaternion
---@param rkQ Quaternion
---@return Quaternion
function Quaternion.squad(fT, rkP, rkA, rkB, rkQ) end

Quaternion.IDENTITY = nil

---@class Ray
---@field NO_HIT any
Ray = {}

function Ray:Ray() end

function Ray:getPoint() end

function Ray:intersects() end

Ray.NO_HIT = nil

---@class RayReturn
RayReturn = {}


---@class Rect
Rect = {}

function Rect:Rect() end

function Rect:__eq() end

function Rect:__tostring() end

---@param point Vector2
---@return boolean
function Rect:contains(point) end

---@param rect Rect
---@return Rect
function Rect:fitOnRect(rect) end

function Rect:getVector() end

---@return boolean
function Rect:isNormalized() end

---@return boolean
function Rect:isZero() end

function Rect:setRect() end


---@class ReflectionProbe
---@field _base Object
ReflectionProbe = {}

---@param Scene any
function ReflectionProbe:ReflectionProbe(Scene) end

function ReflectionProbe:refresh() end

---@param boxOffset Vector3
function ReflectionProbe:setBoxOffset(boxOffset) end

---@param boxSize Vector3
function ReflectionProbe:setBoxSize(boxSize) end

---@param nearClip number
---@param farClip number
function ReflectionProbe:setClipPlanes(nearClip, farClip) end

---@param texture string
function ReflectionProbe:setTexture(texture) end

---@param texturePositiveX string
---@param textureNegativeX string
---@param texturePositiveY string
---@param textureNegativeY string
---@param texturePositiveZ string
---@param textureNegativeZ string
function ReflectionProbe:setTextures(texturePositiveX, textureNegativeX, texturePositiveY, textureNegativeY, texturePositiveZ, textureNegativeZ) end


---@class RenderSystem
RenderSystem = {}

---@param entity Entity
function RenderSystem:updateCameraSize(entity) end


---@class ResourceBuildInfo
ResourceBuildInfo = {}


---@class ResourceProgress
ResourceProgress = {}

---@param id number
function ResourceProgress.completeBuild(id) end

---@param id number
function ResourceProgress.failBuild(id) end

---@return number
function ResourceProgress.getActiveBuildCount() end

---@return ResourceBuildInfo[]
function ResourceProgress.getAllActiveBuilds() end

---@return ResourceBuildInfo
function ResourceProgress.getCurrentBuild() end

---@return OverallBuildProgress
function ResourceProgress.getOverallProgress() end

---@param type ResourceType
---@return string
function ResourceProgress.getResourceTypeName(type) end

---@return boolean
function ResourceProgress.hasActiveBuilds() end

---@param id number
---@param type ResourceType
---@param name string
---@return any
function ResourceProgress.startBuild(id, type, name) end

---@param id number
---@param progress number
function ResourceProgress.updateProgress(id, progress) end


---@class RotateTracks
---@field _base Action
RotateTracks = {}

---@param Scene any
function RotateTracks:RotateTracks(Scene) end

---@param segment number
---@param ease EaseType
function RotateTracks:setEasing(segment, ease) end

---@param easings EaseType[]
function RotateTracks:setEasings(easings) end

---@param times number[]
function RotateTracks:setTimes(times) end

---@param values Quaternion[]
function RotateTracks:setValues(values) end


---@class RotationAction
---@field _base TimedAction
RotationAction = {}

---@param Scene any
function RotationAction:RotationAction(Scene) end

---@param startRotation Quaternion
---@param endRotation Quaternion
---@param duration number
---@param loop boolean
function RotationAction:setAction(startRotation, endRotation, duration, loop) end


---@class ScaleAction
---@field _base TimedAction
ScaleAction = {}

---@param Scene any
function ScaleAction:ScaleAction(Scene) end

---@param startScale Vector3
---@param endScale Vector3
---@param duration number
---@param loop boolean
function ScaleAction:setAction(startScale, endScale, duration, loop) end


---@class ScaleTracks
---@field _base Action
ScaleTracks = {}

---@param Scene any
function ScaleTracks:ScaleTracks(Scene) end

---@param segment number
---@param ease EaseType
function ScaleTracks:setEasing(segment, ease) end

---@param easings EaseType[]
function ScaleTracks:setEasings(easings) end

---@param times number[]
function ScaleTracks:setTimes(times) end

---@param values Vector3[]
function ScaleTracks:setValues(values) end


---@class Scene
---@field _base EntityRegistry
Scene = {}

function Scene:Scene() end

---@param self Scene
---@param L lua_State
function Scene:canReceiveUIEvents(self, L) end

---@param self Scene
---@param L lua_State
function Scene:destroy(self, L) end

---@param self Scene
---@param L lua_State
function Scene:draw(self, L) end

---@param self Scene
---@param L lua_State
function Scene:getActionSystem(self, L) end

---@param self Scene
---@param L lua_State
function Scene:getAmbientLight2DColorLinear(self, L) end

---@param self Scene
---@param L lua_State
function Scene:getAudioSystem(self, L) end

---@param self Scene
---@param L lua_State
function Scene:getGlobalIlluminationColorLinear(self, L) end

---@param self Scene
---@param L lua_State
function Scene:getMeshSystem(self, L) end

---@param self Scene
---@param L lua_State
function Scene:getPhysicsSystem(self, L) end

---@param self Scene
---@param L lua_State
function Scene:getPostProcessUniform(self, L) end

---@param self Scene
---@param L lua_State
function Scene:getRenderSystem(self, L) end

---@param self Scene
---@param L lua_State
function Scene:getUISystem(self, L) end

---@param self Scene
---@param L lua_State
function Scene:isPostProcessPassEnabled(self, L) end

---@param self Scene
---@param L lua_State
function Scene:load(self, L) end

---@param self Scene
---@param L lua_State
function Scene:removePostProcessUniform(self, L) end

---@param self Scene
---@param L lua_State
function Scene:setAmbientLight2D(self, L) end

---@param self Scene
---@param L lua_State
function Scene:setBackgroundColor(self, L) end

---@param self Scene
---@param L lua_State
function Scene:setCamera(self, L) end

---@param self Scene
---@param L lua_State
function Scene:setFixedResolutionSize(self, L) end

---@param self Scene
---@param L lua_State
function Scene:setGlobalIllumination(self, L) end

---@param self Scene
---@param L lua_State
function Scene:setGravity2D(self, L) end

---@param self Scene
---@param L lua_State
function Scene:setGravity3D(self, L) end

---@param self Scene
---@param L lua_State
function Scene:setPostProcessPassEnabled(self, L) end

---@param self Scene
---@param L lua_State
function Scene:setPostProcessUniform(self, L) end

---@param self Scene
---@param L lua_State
function Scene:update(self, L) end

---@param self Scene
---@param L lua_State
function Scene:updateCameraSize(self, L) end


---@class SceneManager
---@field currentSceneId any
---@field currentSceneName any
---@field loadPending any
---@field sceneCount any
SceneManager = {}

function SceneManager.addChildScene() end

function SceneManager.clearAll() end

---@param name string
---@return number
function SceneManager.getSceneId(name) end

---@param id number
---@return string
function SceneManager.getSceneName(id) end

---@return string[]
function SceneManager.getSceneNames() end

function SceneManager.loadScene() end

function SceneManager.registerScene() end

function SceneManager.removeChildScene() end

SceneManager.currentSceneId = nil
SceneManager.currentSceneName = nil
SceneManager.loadPending = nil
SceneManager.sceneCount = nil

---@class Scrollbar
---@field _base Image
Scrollbar = {}

---@param Scene any
function Scrollbar:Scrollbar(Scene) end

function Scrollbar:getBarObject() end

function Scrollbar:getScrollbarComponent() end

function Scrollbar:setBarColor() end

function Scrollbar:setBarMargin() end

function Scrollbar:setBarPatchMargin() end

function Scrollbar:setBarTexture() end


---@class ScrollbarComponent
ScrollbarComponent = {}


---@class Shape
---@field _base Mesh
Shape = {}

---@param Scene any
function Shape:Shape(Scene) end

function Shape:createBox() end

function Shape:createCapsule() end

function Shape:createCylinder() end

function Shape:createPlane() end

function Shape:createSphere() end

function Shape:createTorus() end

function Shape:createWall() end


---@class SkyBox
---@field _base EntityHandle
SkyBox = {}

---@param Scene any
function SkyBox:SkyBox(Scene) end

---@param name string
---@return Vector4
function SkyBox:getShaderUniform(name) end

---@param name string
---@return boolean
function SkyBox:removeShaderUniform(name) end

function SkyBox:setColor() end

function SkyBox:setShaderUniform() end

function SkyBox:setTexture() end

function SkyBox:setTextureNegativeX() end

function SkyBox:setTextureNegativeY() end

function SkyBox:setTextureNegativeZ() end

function SkyBox:setTexturePositiveX() end

function SkyBox:setTexturePositiveY() end

function SkyBox:setTexturePositiveZ() end

function SkyBox:setTextures() end


---@class Sound
---@field _base EntityHandle
Sound = {}

---@param Scene any
function Sound:Sound(Scene) end

function Sound:destroySound() end

---@return number
function Sound:getLength() end

---@return Object
function Sound:getObject() end

---@return number
function Sound:getPlayingTime() end

function Sound:getSoundComponent() end

---@return boolean
function Sound:isPaused() end

---@return boolean
function Sound:isPlaying() end

---@return boolean
function Sound:isStopped() end

---@param filename string
---@return number
function Sound:loadSound(filename) end

function Sound:pause() end

function Sound:play() end

---@param time number
function Sound:seek(time) end

---@param mustTick boolean
---@param kill boolean
function Sound:setInaudibleBehavior(mustTick, kill) end

---@param minDistance number
---@param maxDistance number
function Sound:setMinMaxDistance(minDistance, maxDistance) end

function Sound:stop() end


---@class SoundComponent
SoundComponent = {}


---@class Sphere
Sphere = {}

function Sphere:Sphere() end

function Sphere:contains() end

function Sphere:intersects() end

---@param other Sphere
function Sphere:merge(other) end

---@return number
function Sphere:surfaceArea() end

function Sphere:toString() end

---@return number
function Sphere:volume() end


---@class Sprite
---@field _base Mesh
Sprite = {}

---@param Scene any
function Sprite:Sprite(Scene) end

function Sprite:addFrame() end

function Sprite:getOccluder2D() end

function Sprite:pauseAnimation() end

function Sprite:removeFrame() end

function Sprite:removeOccluder2D() end

function Sprite:setFrame() end

function Sprite:setSize() end

function Sprite:setTextureRect() end

function Sprite:startAnimation() end

function Sprite:stopAnimation() end


---@class SpriteAnimation
---@field _base Action
SpriteAnimation = {}

---@param Scene any
function SpriteAnimation:SpriteAnimation(Scene) end

function SpriteAnimation:setAnimation() end


---@class System
System = {}

function System.exitFullscreen() end

function System.gameplayStartCrazyGames() end

function System.gameplayStopCrazyGames() end

function System.getAssetPath() end

function System.getDirSeparator() end

function System.getLuaPath() end

function System.getScreenHeight() end

function System.getScreenWidth() end

function System.getShaderPath() end

function System.getUserDataPath() end

function System.happytimeCrazyGames() end

function System.hideVirtualKeyboard() end

function System.initializeAdMob() end

function System.initializeCrazyGamesSDK() end

function System.isFullscreen() end

function System.isInterstitialAdLoaded() end

function System.isWindowMaximized() end

function System.isWindowResizable() end

---@param adUnitID string
function System.loadInterstitialAd(adUnitID) end

function System.loadingStartCrazyGames() end

function System.loadingStopCrazyGames() end

function System.maximizeWindow() end

function System.quit() end

function System.requestFullscreen() end

function System.restoreWindow() end

---@param rating AdMobRating
function System.setMaxAdContentRating(rating) end

---@param resizable boolean
function System.setWindowResizable(resizable) end

---@param width number
---@param height number
function System.setWindowSize(width, height) end

---@param title string
function System.setWindowTitle(title) end

---@param type string
function System.showCrazyGamesAd(type) end

function System.showInterstitialAd() end

---@param text wstring
function System.showVirtualKeyboard(text) end


---@class Terrain
---@field _base Mesh
Terrain = {}

---@param Scene any
function Terrain:Terrain(Scene) end

---@return number
function Terrain:getNumLayers() end

---@param index number
---@return TerrainSurfaceLayer
function Terrain:getSurfaceLayer(index) end

---@param index number
function Terrain:removeSurfaceLayer(index) end

---@param path string
function Terrain:setBlendMap(path) end

---@param path string
function Terrain:setBlendMapIndex(path) end

---@param path string
function Terrain:setHeightMap(path) end

---@param index number
---@param material Material
function Terrain:setLayerFromMaterial(index, material) end

---@param index number
---@param layer TerrainSurfaceLayer
function Terrain:setSurfaceLayer(index, layer) end

---@param path string
function Terrain:setTextureDetailBlue(path) end

---@param path string
function Terrain:setTextureDetailGreen(path) end

---@param path string
function Terrain:setTextureDetailRed(path) end

---@param index number
---@param path string
function Terrain:setTextureLayer(index, path) end


---@class TerrainSurfaceLayer
TerrainSurfaceLayer = {}

function TerrainSurfaceLayer:TerrainSurfaceLayer() end


---@class Text
---@field _base UILayout
Text = {}

---@param Scene any
function Text:Text(Scene) end

---@return AABB
function Text:getAABB() end

function Text:getAscent() end

function Text:getCharPosition() end

function Text:getCharWidth() end

function Text:getDescent() end

function Text:getFont() end

function Text:getLineGap() end

function Text:getLineHeight() end

function Text:getNumChars() end

---@param name string
---@return Vector4
function Text:getShaderUniform(name) end

---@return AABB
function Text:getWorldAABB() end

---@param name string
---@return boolean
function Text:removeShaderUniform(name) end

function Text:setColor() end

function Text:setFixedSize() end

function Text:setFont() end

function Text:setShaderUniform() end


---@class TextEdit
---@field _base Image
TextEdit = {}

---@param Scene any
function TextEdit:TextEdit(Scene) end

function TextEdit:getSelectionAnchor() end

function TextEdit:getSelectionFocus() end

function TextEdit:getSelectionObject() end

function TextEdit:getTextEditComponent() end

function TextEdit:getTextObject() end

function TextEdit:setCursorColor() end

function TextEdit:setPlaceholderColor() end

function TextEdit:setSelection() end

function TextEdit:setSelectionColor() end

function TextEdit:setTextColor() end


---@class TextEditComponent
TextEditComponent = {}


---@class Texture
Texture = {}

function Texture:Texture() end

function Texture:destroy() end

function Texture:empty() end

function Texture:getData() end

function Texture:getHeight() end

function Texture:getId() end

function Texture:getNumFaces() end

function Texture:getPath() end

function Texture:getRender() end

function Texture:getType() end

function Texture:getWidth() end

function Texture:isCubeMap() end

function Texture:isFramebuffer() end

function Texture:isFramebufferOutdated() end

function Texture:isTransparent() end

function Texture:load() end

function Texture:releaseData() end

function Texture:setCubePath() end

function Texture:setCubePaths() end

function Texture:setData() end

function Texture:setFramebuffer() end

function Texture:setId() end

function Texture:setPath() end


---@class TextureData
TextureData = {}

function TextureData:TextureData() end

function TextureData:crop() end

function TextureData:fitPowerOfTwo() end

function TextureData:fitSize() end

function TextureData:flipVertical() end

function TextureData:getChannels() end

function TextureData:getColorComponent() end

function TextureData:getColorFormat() end

function TextureData:getData() end

function TextureData:getHeight() end

function TextureData:getMinNearestPowerOfTwo() end

function TextureData:getOriginalHeight() end

function TextureData:getOriginalWidth() end

function TextureData:getSize() end

function TextureData:getWidth() end

function TextureData:hasAlpha() end

function TextureData:isTransparent() end

function TextureData:loadTextureFromFile() end

function TextureData:releaseImageData() end

function TextureData:resize() end

function TextureData:resizePowerOfTwo() end


---@class TextureLoadResult
TextureLoadResult = {}

function TextureLoadResult:TextureLoadResult() end

---@param result TextureLoadResult
function TextureLoadResult:__tostring(result) end


---@class TextureRender
TextureRender = {}

function TextureRender:TextureRender() end


---@class ThreadPoolManager
ThreadPoolManager = {}

---@return number
function ThreadPoolManager:getQueueSize() end

---@return any
function ThreadPoolManager.getInstance() end

---@param maxThreads number
function ThreadPoolManager.initialize(maxThreads) end

function ThreadPoolManager.shutdown() end


---@class TileData
TileData = {}


---@class TileRectData
TileRectData = {}


---@class Tilemap
---@field _base Mesh
Tilemap = {}

---@param Scene any
function Tilemap:Tilemap(Scene) end

function Tilemap:addRect() end

function Tilemap:addTile() end

function Tilemap:clearAll() end

function Tilemap:clearRects() end

function Tilemap:clearTiles() end

function Tilemap:findRectByString() end

function Tilemap:findTileByString() end

---@return number
function Tilemap:getHeight() end

function Tilemap:getRect() end

function Tilemap:getTile() end

---@return number
function Tilemap:getWidth() end

function Tilemap:removeRect() end

function Tilemap:removeTile() end


---@class TilemapComponent
TilemapComponent = {}


---@class TimedAction
---@field _base Action
TimedAction = {}

---@param Scene any
function TimedAction:TimedAction(Scene) end

---@return number
function TimedAction:getTime() end

function TimedAction:getTimedActionComponent() end

---@return number
function TimedAction:getValue() end

---@param functionType EaseType
function TimedAction:setFunctionType(functionType) end


---@class TimedActionComponent
TimedActionComponent = {}


---@class TranslateTracks
---@field _base Action
TranslateTracks = {}

---@param Scene any
function TranslateTracks:TranslateTracks(Scene) end

---@param segment number
---@param ease EaseType
function TranslateTracks:setEasing(segment, ease) end

---@param easings EaseType[]
function TranslateTracks:setEasings(easings) end

---@param times number[]
function TranslateTracks:setTimes(times) end

---@param values Vector3[]
function TranslateTracks:setValues(values) end


---@class UIComponent
UIComponent = {}


---@class UILayout
---@field _base Object
UILayout = {}

---@param Scene any
function UILayout:UILayout(Scene) end

function UILayout:getUILayoutComponent() end

function UILayout:setAnchorOffsets() end

function UILayout:setAnchorPoints() end

function UILayout:setSize() end


---@class UILayoutComponent
UILayoutComponent = {}


---@class UISystem
UISystem = {}

function UISystem:clearAnchorReferenceSize() end

---@param codepoint wchar_t
---@return boolean
function UISystem:eventOnCharInput(codepoint) end

---@param key number
---@param repeat boolean
---@param mods number
---@return boolean
function UISystem:eventOnKeyDown(key, repeat, mods) end

---@param x number
---@param y number
---@return boolean
function UISystem:eventOnPointerDown(x, y) end

---@param x number
---@param y number
---@return boolean
function UISystem:eventOnPointerMove(x, y) end

---@param x number
---@param y number
---@return boolean
function UISystem:eventOnPointerUp(x, y) end

---@return number
function UISystem:getAnchorReferenceHeight() end

---@param layout UILayoutComponent
---@param transform Transform
---@param worldPosition boolean
---@return Rect
function UISystem:getAnchorReferenceRect(layout, transform, worldPosition) end

---@return number
function UISystem:getAnchorReferenceWidth() end

---@return boolean
function UISystem:isTextEditFocused() end

---@param width number
---@param height number
function UISystem:setAnchorReferenceSize(width, height) end


---@class UserSettings
UserSettings = {}

function UserSettings.getBoolForKey() end

function UserSettings.getDataForKey() end

function UserSettings.getDoubleForKey() end

function UserSettings.getFloatForKey() end

function UserSettings.getIntegerForKey() end

function UserSettings.getLongForKey() end

function UserSettings.getStringForKey() end

---@param arg1 any
function UserSettings.removeKey(arg1) end

---@param arg1 any
---@param value boolean
function UserSettings.setBoolForKey(arg1, value) end

---@param arg1 any
---@param value Data
function UserSettings.setDataForKey(arg1, value) end

---@param arg1 any
---@param value number
function UserSettings.setDoubleForKey(arg1, value) end

---@param arg1 any
---@param value number
function UserSettings.setFloatForKey(arg1, value) end

---@param arg1 any
---@param value number
function UserSettings.setIntegerForKey(arg1, value) end

---@param arg1 any
---@param value number
function UserSettings.setLongForKey(arg1, value) end

---@param key number
---@param value string
function UserSettings.setStringForKey(key, value) end


---@class Vector2
---@field NEGATIVE_UNIT_X any
---@field NEGATIVE_UNIT_Y any
---@field UNIT_SCALE any
---@field UNIT_X any
---@field UNIT_Y any
---@field ZERO any
Vector2 = {}

function Vector2:Vector2() end

function Vector2:__add() end

function Vector2:__div() end

function Vector2:__eq() end

function Vector2:__lt() end

function Vector2:__mul() end

function Vector2:__sub() end

function Vector2:__tostring() end

function Vector2:__unm() end

---@param rkVector Vector2
---@return number
function Vector2:crossProduct(rkVector) end

---@param rhs Vector2
---@return number
function Vector2:distance(rhs) end

---@param vec Vector2
---@return number
function Vector2:dotProduct(vec) end

---@return boolean
function Vector2:isValid() end

---@return number
function Vector2:length() end

---@param cmp Vector2
function Vector2:makeCeil(cmp) end

---@param cmp Vector2
function Vector2:makeFloor(cmp) end

---@param vec Vector2
---@return Vector2
function Vector2:midPoint(vec) end

---@return Vector2
function Vector2:normalize() end

---@return number
function Vector2:normalizeL() end

---@return Vector2
function Vector2:normalized() end

---@param arg1 any
---@return Vector2
function Vector2:normalizedCopy(arg1) end

---@param arg1 any
---@return Vector2
function Vector2:perpendicular(arg1) end

---@param normal Vector2
---@return Vector2
function Vector2:reflect(normal) end

---@param rhs Vector2
---@return number
function Vector2:squaredDistance(rhs) end

---@return number
function Vector2:squaredLength() end

---@param other Vector2
function Vector2:swap(other) end

Vector2.NEGATIVE_UNIT_X = nil
Vector2.NEGATIVE_UNIT_Y = nil
Vector2.UNIT_SCALE = nil
Vector2.UNIT_X = nil
Vector2.UNIT_Y = nil
Vector2.ZERO = nil

---@class Vector3
---@field UNIT_SCALE any
---@field UNIT_X any
---@field UNIT_Y any
---@field UNIT_Z any
---@field ZERO any
Vector3 = {}

function Vector3:Vector3() end

function Vector3:__add() end

function Vector3:__div() end

function Vector3:__eq() end

function Vector3:__lt() end

function Vector3:__mul() end

function Vector3:__sub() end

function Vector3:__tostring() end

function Vector3:__unm() end

---@param v Vector3
---@return number
function Vector3:absDotProduct(v) end

---@param v Vector3
---@return Vector3
function Vector3:crossProduct(v) end

---@param rhs Vector3
---@return number
function Vector3:distance(rhs) end

---@param v Vector3
---@return number
function Vector3:dotProduct(v) end

---@return boolean
function Vector3:isValid() end

---@return number
function Vector3:length() end

---@param v Vector3
function Vector3:makeCeil(v) end

---@param v Vector3
function Vector3:makeFloor(v) end

---@param v Vector3
---@return Vector3
function Vector3:midPoint(v) end

---@return Vector3
function Vector3:normalize() end

---@return number
function Vector3:normalizeL() end

---@return Vector3
function Vector3:normalized() end

---@return Vector3
function Vector3:perpendicular() end

---@param normal Vector3
---@return Vector3
function Vector3:reflect(normal) end

---@param rhs Vector3
---@return number
function Vector3:squaredDistance(rhs) end

---@return number
function Vector3:squaredLength() end

Vector3.UNIT_SCALE = nil
Vector3.UNIT_X = nil
Vector3.UNIT_Y = nil
Vector3.UNIT_Z = nil
Vector3.ZERO = nil

---@class Vector4
---@field UNIT_SCALE any
---@field UNIT_W any
---@field UNIT_X any
---@field UNIT_Y any
---@field UNIT_Z any
---@field ZERO any
Vector4 = {}

function Vector4:Vector4() end

function Vector4:__add() end

function Vector4:__div() end

function Vector4:__eq() end

function Vector4:__lt() end

function Vector4:__mul() end

function Vector4:__sub() end

function Vector4:__tostring() end

function Vector4:__unm() end

function Vector4:divideByW() end

---@param vec Vector4
---@return number
function Vector4:dotProduct(vec) end

---@return boolean
function Vector4:isNaN() end

---@return boolean
function Vector4:isValid() end

---@param other Vector4
function Vector4:swap(other) end

Vector4.UNIT_SCALE = nil
Vector4.UNIT_W = nil
Vector4.UNIT_X = nil
Vector4.UNIT_Y = nil
Vector4.UNIT_Z = nil
Vector4.ZERO = nil
