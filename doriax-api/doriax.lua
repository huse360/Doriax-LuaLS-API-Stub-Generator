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

---@class ActionState
---@field Paused any
---@field Running any
---@field Stopped any
ActionState = {}
ActionState.Paused = nil
ActionState.Running = nil
ActionState.Stopped = nil

---@class AdMobRating
---@field General any
---@field MatureAudience any
---@field ParentalGuidance any
---@field Teen any
AdMobRating = {}
AdMobRating.General = nil
AdMobRating.MatureAudience = nil
AdMobRating.ParentalGuidance = nil
AdMobRating.Teen = nil

---@class AnchorPreset
---@field BOTTOM_LEFT any
---@field BOTTOM_RIGHT any
---@field BOTTOM_WIDE any
---@field CENTER any
---@field CENTER_BOTTOM any
---@field CENTER_LEFT any
---@field CENTER_RIGHT any
---@field CENTER_TOP any
---@field FULL_LAYOUT any
---@field HORIZONTAL_CENTER_WIDE any
---@field LEFT_WIDE any
---@field NONE any
---@field RIGHT_WIDE any
---@field TOP_LEFT any
---@field TOP_RIGHT any
---@field TOP_WIDE any
---@field VERTICAL_CENTER_WIDE any
AnchorPreset = {}
AnchorPreset.BOTTOM_LEFT = nil
AnchorPreset.BOTTOM_RIGHT = nil
AnchorPreset.BOTTOM_WIDE = nil
AnchorPreset.CENTER = nil
AnchorPreset.CENTER_BOTTOM = nil
AnchorPreset.CENTER_LEFT = nil
AnchorPreset.CENTER_RIGHT = nil
AnchorPreset.CENTER_TOP = nil
AnchorPreset.FULL_LAYOUT = nil
AnchorPreset.HORIZONTAL_CENTER_WIDE = nil
AnchorPreset.LEFT_WIDE = nil
AnchorPreset.NONE = nil
AnchorPreset.RIGHT_WIDE = nil
AnchorPreset.TOP_LEFT = nil
AnchorPreset.TOP_RIGHT = nil
AnchorPreset.TOP_WIDE = nil
AnchorPreset.VERTICAL_CENTER_WIDE = nil

---@class Body3DMotionQuality
---@field DISCRETE any
---@field LINEAR_CAST any
Body3DMotionQuality = {}
Body3DMotionQuality.DISCRETE = nil
Body3DMotionQuality.LINEAR_CAST = nil

---@class BodyType
---@field DYNAMIC any
---@field KINEMATIC any
---@field STATIC any
BodyType = {}
BodyType.DYNAMIC = nil
BodyType.KINEMATIC = nil
BodyType.STATIC = nil

---@class CameraType
---@field CAMERA_ORTHO any
---@field CAMERA_PERSPECTIVE any
---@field CAMERA_UI any
CameraType = {}
CameraType.CAMERA_ORTHO = nil
CameraType.CAMERA_PERSPECTIVE = nil
CameraType.CAMERA_UI = nil

---@class ColorFormat
---@field RED any
---@field RGBA any
ColorFormat = {}
ColorFormat.RED = nil
ColorFormat.RGBA = nil

---@class ContainerType
---@field HORIZONTAL any
---@field HORIZONTAL_WRAP any
---@field VERTICAL any
---@field VERTICAL_WRAP any
ContainerType = {}
ContainerType.HORIZONTAL = nil
ContainerType.HORIZONTAL_WRAP = nil
ContainerType.VERTICAL = nil
ContainerType.VERTICAL_WRAP = nil

---@class CullingMode
---@field BACK any
---@field FRONT any
CullingMode = {}
CullingMode.BACK = nil
CullingMode.FRONT = nil

---@class CursorType
---@field ARROW any
---@field CROSSHAIR any
---@field IBEAM any
---@field NOT_ALLOWED any
---@field POINTING_HAND any
---@field RESIZE_ALL any
---@field RESIZE_EW any
---@field RESIZE_NESW any
---@field RESIZE_NS any
---@field RESIZE_NWSE any
CursorType = {}
CursorType.ARROW = nil
CursorType.CROSSHAIR = nil
CursorType.IBEAM = nil
CursorType.NOT_ALLOWED = nil
CursorType.POINTING_HAND = nil
CursorType.RESIZE_ALL = nil
CursorType.RESIZE_EW = nil
CursorType.RESIZE_NESW = nil
CursorType.RESIZE_NS = nil
CursorType.RESIZE_NWSE = nil

---@class EaseType
---@field BACK_IN any
---@field BACK_IN_OUT any
---@field BACK_OUT any
---@field BOUNCE_IN any
---@field BOUNCE_IN_OUT any
---@field BOUNCE_OUT any
---@field CIRC_IN any
---@field CIRC_IN_OUT any
---@field CIRC_OUT any
---@field CUBIC_IN any
---@field CUBIC_IN_OUT any
---@field CUBIC_OUT any
---@field CUSTOM any
---@field ELASTIC_IN any
---@field ELASTIC_IN_OUT any
---@field ELASTIC_OUT any
---@field EXPO_IN any
---@field EXPO_IN_OUT any
---@field EXPO_OUT any
---@field LINEAR any
---@field QUAD_IN any
---@field QUAD_IN_OUT any
---@field QUAD_OUT any
---@field QUART_IN any
---@field QUART_IN_OUT any
---@field QUART_OUT any
---@field QUINT_IN any
---@field QUINT_IN_OUT any
---@field QUINT_OUT any
---@field SINE_IN any
---@field SINE_IN_OUT any
---@field SINE_OUT any
---@field STEP any
EaseType = {}
EaseType.BACK_IN = nil
EaseType.BACK_IN_OUT = nil
EaseType.BACK_OUT = nil
EaseType.BOUNCE_IN = nil
EaseType.BOUNCE_IN_OUT = nil
EaseType.BOUNCE_OUT = nil
EaseType.CIRC_IN = nil
EaseType.CIRC_IN_OUT = nil
EaseType.CIRC_OUT = nil
EaseType.CUBIC_IN = nil
EaseType.CUBIC_IN_OUT = nil
EaseType.CUBIC_OUT = nil
EaseType.CUSTOM = nil
EaseType.ELASTIC_IN = nil
EaseType.ELASTIC_IN_OUT = nil
EaseType.ELASTIC_OUT = nil
EaseType.EXPO_IN = nil
EaseType.EXPO_IN_OUT = nil
EaseType.EXPO_OUT = nil
EaseType.LINEAR = nil
EaseType.QUAD_IN = nil
EaseType.QUAD_IN_OUT = nil
EaseType.QUAD_OUT = nil
EaseType.QUART_IN = nil
EaseType.QUART_IN_OUT = nil
EaseType.QUART_OUT = nil
EaseType.QUINT_IN = nil
EaseType.QUINT_IN_OUT = nil
EaseType.QUINT_OUT = nil
EaseType.SINE_IN = nil
EaseType.SINE_IN_OUT = nil
EaseType.SINE_OUT = nil
EaseType.STEP = nil

---@class EntityPool
---@field System any
---@field User any
EntityPool = {}
EntityPool.System = nil
EntityPool.User = nil

---@class FileErrors
---@field FILEDATA_OK any
---@field FILE_NOT_FOUND any
---@field INVALID_PARAMETER any
---@field OUT_OF_MEMORY any
FileErrors = {}
FileErrors.FILEDATA_OK = nil
FileErrors.FILE_NOT_FOUND = nil
FileErrors.INVALID_PARAMETER = nil
FileErrors.OUT_OF_MEMORY = nil

---@class FogType
---@field EXPONENTIAL any
---@field EXPONENTIALSQUARED any
---@field LINEAR any
FogType = {}
FogType.EXPONENTIAL = nil
FogType.EXPONENTIALSQUARED = nil
FogType.LINEAR = nil

---@class FrustumPlane
---@field FRUSTUM_PLANE_BOTTOM any
---@field FRUSTUM_PLANE_FAR any
---@field FRUSTUM_PLANE_LEFT any
---@field FRUSTUM_PLANE_NEAR any
---@field FRUSTUM_PLANE_RIGHT any
---@field FRUSTUM_PLANE_TOP any
FrustumPlane = {}
FrustumPlane.FRUSTUM_PLANE_BOTTOM = nil
FrustumPlane.FRUSTUM_PLANE_FAR = nil
FrustumPlane.FRUSTUM_PLANE_LEFT = nil
FrustumPlane.FRUSTUM_PLANE_NEAR = nil
FrustumPlane.FRUSTUM_PLANE_RIGHT = nil
FrustumPlane.FRUSTUM_PLANE_TOP = nil

---@class GraphicBackend
---@field D3D11 any
---@field GLCORE any
---@field GLES3 any
---@field METAL any
---@field WGPU any
GraphicBackend = {}
GraphicBackend.D3D11 = nil
GraphicBackend.GLCORE = nil
GraphicBackend.GLES3 = nil
GraphicBackend.METAL = nil
GraphicBackend.WGPU = nil

---@class Joint2DType
---@field DISTANCE any
---@field MOTOR any
---@field MOUSE any
---@field PRISMATIC any
---@field REVOLUTE any
---@field WELD any
---@field WHEEL any
Joint2DType = {}
Joint2DType.DISTANCE = nil
Joint2DType.MOTOR = nil
Joint2DType.MOUSE = nil
Joint2DType.PRISMATIC = nil
Joint2DType.REVOLUTE = nil
Joint2DType.WELD = nil
Joint2DType.WHEEL = nil

---@class Joint3DType
---@field CONE any
---@field DISTANCE any
---@field FIXED any
---@field GEAR any
---@field HINGE any
---@field PATH any
---@field POINT any
---@field PRISMATIC any
---@field PULLEY any
---@field RACKANDPINON any
---@field SIXDOF any
---@field SWINGTWIST any
Joint3DType = {}
Joint3DType.CONE = nil
Joint3DType.DISTANCE = nil
Joint3DType.FIXED = nil
Joint3DType.GEAR = nil
Joint3DType.HINGE = nil
Joint3DType.PATH = nil
Joint3DType.POINT = nil
Joint3DType.PRISMATIC = nil
Joint3DType.PULLEY = nil
Joint3DType.RACKANDPINON = nil
Joint3DType.SIXDOF = nil
Joint3DType.SWINGTWIST = nil

---@class LightState
---@field AUTO any
---@field OFF any
---@field ON any
LightState = {}
LightState.AUTO = nil
LightState.OFF = nil
LightState.ON = nil

---@class LightType
---@field DIRECTIONAL any
---@field POINT any
---@field SPOT any
LightType = {}
LightType.DIRECTIONAL = nil
LightType.POINT = nil
LightType.SPOT = nil

---@class MaterialAlphaMode
---@field ALPHA_OPAQUE any
---@field AUTO any
---@field BLEND any
---@field MASK any
MaterialAlphaMode = {}
MaterialAlphaMode.ALPHA_OPAQUE = nil
MaterialAlphaMode.AUTO = nil
MaterialAlphaMode.BLEND = nil
MaterialAlphaMode.MASK = nil

---@class MouseMode
---@field CAPTURED any
---@field CONFINED any
---@field HIDDEN any
---@field NORMAL any
MouseMode = {}
MouseMode.CAPTURED = nil
MouseMode.CONFINED = nil
MouseMode.HIDDEN = nil
MouseMode.NORMAL = nil

---@class Occluder2DShape
---@field AUTO_QUAD any
---@field POLYGON any
Occluder2DShape = {}
Occluder2DShape.AUTO_QUAD = nil
Occluder2DShape.POLYGON = nil

---@class ParticleEmitterShape
---@field Box any
---@field Circle any
---@field Cone any
---@field Hemisphere any
---@field Sphere any
ParticleEmitterShape = {}
ParticleEmitterShape.Box = nil
ParticleEmitterShape.Circle = nil
ParticleEmitterShape.Cone = nil
ParticleEmitterShape.Hemisphere = nil
ParticleEmitterShape.Sphere = nil

---@class PivotPreset
---@field BOTTOM_CENTER any
---@field BOTTOM_LEFT any
---@field BOTTOM_RIGHT any
---@field CENTER any
---@field LEFT_CENTER any
---@field RIGHT_CENTER any
---@field TOP_CENTER any
---@field TOP_LEFT any
---@field TOP_RIGHT any
PivotPreset = {}
PivotPreset.BOTTOM_CENTER = nil
PivotPreset.BOTTOM_LEFT = nil
PivotPreset.BOTTOM_RIGHT = nil
PivotPreset.CENTER = nil
PivotPreset.LEFT_CENTER = nil
PivotPreset.RIGHT_CENTER = nil
PivotPreset.TOP_CENTER = nil
PivotPreset.TOP_LEFT = nil
PivotPreset.TOP_RIGHT = nil

---@class Platform
---@field Android any
---@field Linux any
---@field MacOS any
---@field Web any
---@field Windows any
---@field iOS any
Platform = {}
Platform.Android = nil
Platform.Linux = nil
Platform.MacOS = nil
Platform.Web = nil
Platform.Windows = nil
Platform.iOS = nil

---@class PrimitiveType
---@field LINES any
---@field POINTS any
---@field TRIANGLES any
---@field TRIANGLE_STRIP any
PrimitiveType = {}
PrimitiveType.LINES = nil
PrimitiveType.POINTS = nil
PrimitiveType.TRIANGLES = nil
PrimitiveType.TRIANGLE_STRIP = nil

---@class ProgressbarType
---@field HORIZONTAL any
---@field VERTICAL any
ProgressbarType = {}
ProgressbarType.HORIZONTAL = nil
ProgressbarType.VERTICAL = nil

---@class RayFilter
---@field BODY_2D any
---@field BODY_3D any
RayFilter = {}
RayFilter.BODY_2D = nil
RayFilter.BODY_3D = nil

---@class ReflectionProbeMode
---@field DYNAMIC any
---@field STATIC any
ReflectionProbeMode = {}
ReflectionProbeMode.DYNAMIC = nil
ReflectionProbeMode.STATIC = nil

---@class ReflectionProbeUpdateMode
---@field INTERVAL any
---@field MANUAL any
---@field ON_LOAD any
---@field ON_MOVE any
ReflectionProbeUpdateMode = {}
ReflectionProbeUpdateMode.INTERVAL = nil
ReflectionProbeUpdateMode.MANUAL = nil
ReflectionProbeUpdateMode.ON_LOAD = nil
ReflectionProbeUpdateMode.ON_MOVE = nil

---@class ResourceLoadState
---@field Failed any
---@field Finished any
---@field Loading any
---@field NotStarted any
ResourceLoadState = {}
ResourceLoadState.Failed = nil
ResourceLoadState.Finished = nil
ResourceLoadState.Loading = nil
ResourceLoadState.NotStarted = nil

---@class ResourceType
---@field Model any
---@field Shader any
---@field Sound any
---@field Texture any
ResourceType = {}
ResourceType.Model = nil
ResourceType.Shader = nil
ResourceType.Sound = nil
ResourceType.Texture = nil

---@class RotationOrder
---@field XYZ any
---@field XZY any
---@field YXZ any
---@field YZX any
---@field ZXY any
---@field ZYX any
RotationOrder = {}
RotationOrder.XYZ = nil
RotationOrder.XZY = nil
RotationOrder.YXZ = nil
RotationOrder.YZX = nil
RotationOrder.ZXY = nil
RotationOrder.ZYX = nil

---@class Scaling
---@field CROP any
---@field FITHEIGHT any
---@field FITWIDTH any
---@field LETTERBOX any
---@field NATIVE any
---@field STRETCH any
Scaling = {}
Scaling.CROP = nil
Scaling.FITHEIGHT = nil
Scaling.FITWIDTH = nil
Scaling.LETTERBOX = nil
Scaling.NATIVE = nil
Scaling.STRETCH = nil

---@class ScrollbarType
---@field HORIZONTAL any
---@field VERTICAL any
ScrollbarType = {}
ScrollbarType.HORIZONTAL = nil
ScrollbarType.VERTICAL = nil

---@class ShadowQuality
---@field HIGH any
---@field LOW any
---@field MEDIUM any
---@field NONE any
ShadowQuality = {}
ShadowQuality.HIGH = nil
ShadowQuality.LOW = nil
ShadowQuality.MEDIUM = nil
ShadowQuality.NONE = nil

---@class Shape2DType
---@field CAPSULE any
---@field CHAIN any
---@field CIRCLE any
---@field POLYGON any
---@field SEGMENT any
Shape2DType = {}
Shape2DType.CAPSULE = nil
Shape2DType.CHAIN = nil
Shape2DType.CIRCLE = nil
Shape2DType.POLYGON = nil
Shape2DType.SEGMENT = nil

---@class Shape3DType
---@field BOX any
---@field CAPSULE any
---@field CONVEX_HULL any
---@field CYLINDER any
---@field HEIGHTFIELD any
---@field MESH any
---@field SPHERE any
---@field TAPERED_CAPSULE any
Shape3DType = {}
Shape3DType.BOX = nil
Shape3DType.CAPSULE = nil
Shape3DType.CONVEX_HULL = nil
Shape3DType.CYLINDER = nil
Shape3DType.HEIGHTFIELD = nil
Shape3DType.MESH = nil
Shape3DType.SPHERE = nil
Shape3DType.TAPERED_CAPSULE = nil

---@class SoundAttenuation
---@field EXPONENTIAL_DISTANCE any
---@field INVERSE_DISTANCE any
---@field LINEAR_DISTANCE any
---@field NO_ATTENUATION any
SoundAttenuation = {}
SoundAttenuation.EXPONENTIAL_DISTANCE = nil
SoundAttenuation.INVERSE_DISTANCE = nil
SoundAttenuation.LINEAR_DISTANCE = nil
SoundAttenuation.NO_ATTENUATION = nil

---@class SoundState
---@field Paused any
---@field Playing any
---@field Stopped any
SoundState = {}
SoundState.Paused = nil
SoundState.Playing = nil
SoundState.Stopped = nil

---@class TextureFilter
---@field LINEAR any
---@field LINEAR_MIPMAP_LINEAR any
---@field LINEAR_MIPMAP_NEAREST any
---@field NEAREST any
---@field NEAREST_MIPMAP_LINEAR any
---@field NEAREST_MIPMAP_NEAREST any
TextureFilter = {}
TextureFilter.LINEAR = nil
TextureFilter.LINEAR_MIPMAP_LINEAR = nil
TextureFilter.LINEAR_MIPMAP_NEAREST = nil
TextureFilter.NEAREST = nil
TextureFilter.NEAREST_MIPMAP_LINEAR = nil
TextureFilter.NEAREST_MIPMAP_NEAREST = nil

---@class TextureStrategy
---@field FIT any
---@field NONE any
---@field RESIZE any
TextureStrategy = {}
TextureStrategy.FIT = nil
TextureStrategy.NONE = nil
TextureStrategy.RESIZE = nil

---@class TextureType
---@field TEXTURE_2D any
---@field TEXTURE_3D any
---@field TEXTURE_ARRAY any
---@field TEXTURE_CUBE any
TextureType = {}
TextureType.TEXTURE_2D = nil
TextureType.TEXTURE_3D = nil
TextureType.TEXTURE_ARRAY = nil
TextureType.TEXTURE_CUBE = nil

---@class TextureWrap
---@field CLAMP_TO_BORDER any
---@field CLAMP_TO_EDGE any
---@field MIRRORED_REPEAT any
---@field REPEAT any
TextureWrap = {}
TextureWrap.CLAMP_TO_BORDER = nil
TextureWrap.CLAMP_TO_EDGE = nil
TextureWrap.MIRRORED_REPEAT = nil
TextureWrap.REPEAT = nil

---@class UIEventState
---@field DISABLED any
---@field ENABLED any
---@field NOT_SET any
UIEventState = {}
UIEventState.DISABLED = nil
UIEventState.ENABLED = nil
UIEventState.NOT_SET = nil

---@class WindingOrder
---@field CCW any
---@field CW any
WindingOrder = {}
WindingOrder.CCW = nil
WindingOrder.CW = nil

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

---@param v Vector3
---@return boolean
function AABB:contains(v) end

---@param other AABB
---@return boolean
function AABB:contains(other) end

---@param v Vector3
---@return number
function AABB:distance(v) end

---@param arg1 any
---@return Vector3
function AABB:getCenter(arg1) end

---@param cornerToGet CornerEnum
---@return Vector3
function AABB:getCorner(cornerToGet) end

---@param arg1 any
---@return Vector3
function AABB:getCorners(arg1) end

---@param arg1 any
---@return Vector3
function AABB:getHalfSize(arg1) end

---@param arg1 any
---@return Vector3
function AABB:getSize(arg1) end

---@param b2 AABB
---@return AABB
function AABB:intersection(b2) end

---@param b2 AABB
---@return boolean
function AABB:intersects(b2) end

---@param obb OBB
---@return boolean
function AABB:intersects(obb) end

---@param p Plane
---@return boolean
function AABB:intersects(p) end

---@param sp Sphere
---@return boolean
function AABB:intersects(sp) end

---@param v Vector3
---@return boolean
function AABB:intersects(v) end

---@param arg1 any
---@return boolean
function AABB:isFinite(arg1) end

---@param arg1 any
---@return boolean
function AABB:isInfinite(arg1) end

---@param arg1 any
---@return boolean
function AABB:isNull(arg1) end

---@param rhs AABB
---@return AABB
function AABB:merge(rhs) end

---@param point Vector3
---@return AABB
function AABB:merge(point) end

---@param s Vector3
function AABB:scale(s) end

---@param min Vector3
---@param max Vector3
function AABB:setExtents(min, max) end

---@param mx number
---@param my number
---@param mz number
---@param Mx number
---@param My number
---@param Mz number
function AABB:setExtents(mx, my, mz, Mx, My, Mz) end

function AABB:setFinite() end

function AABB:setInfinite() end

---@param vec Vector3
function AABB:setMaximum(vec) end

---@param x number
---@param y number
---@param z number
function AABB:setMaximum(x, y, z) end

---@param x number
function AABB:setMaximumX(x) end

---@param y number
function AABB:setMaximumY(y) end

---@param z number
function AABB:setMaximumZ(z) end

---@param vec Vector3
function AABB:setMinimum(vec) end

---@param x number
---@param y number
---@param z number
function AABB:setMinimum(x, y, z) end

---@param x number
function AABB:setMinimumX(x) end

---@param y number
function AABB:setMinimumY(y) end

---@param z number
function AABB:setMinimumZ(z) end

function AABB:setNull() end

---@param v Vector3
---@return number
function AABB:squaredDistance(v) end

---@param matrix Matrix4
---@return AABB
function AABB:transform(matrix) end

---@param arg1 any
---@return number
function AABB:volume(arg1) end

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

---@param target Object
function Action:setTarget(target) end

---@param target Entity
function Action:setTarget(target) end

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

---@param startTime number
---@param duration number
---@param action Entity
---@param target Entity
function Animation:addActionFrame(startTime, duration, action, target) end

---@param startTime number
---@param timedaction Entity
---@param target Entity
function Animation:addActionFrame(startTime, timedaction, target) end

---@param startTime number
---@param duration number
---@param action Entity
function Animation:addActionFrame(startTime, duration, action) end

---@param startTime number
---@param timedaction Entity
function Animation:addActionFrame(startTime, timedaction) end

---@param duration number
function Animation:fadeIn(duration) end

---@param duration number
function Animation:fadeOut(duration) end

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

---@param width number
---@param height number
---@return number
function Body2D:createBoxShape(width, height) end

---@param center1 Vector2
---@param center2 Vector2
---@param radius number
---@return number
function Body2D:createCapsuleShape(center1, center2, radius) end

---@param width number
---@param height number
---@return number
function Body2D:createCenteredBoxShape(width, height) end

---@param width number
---@param height number
---@param center Vector2
---@param angle number
---@return number
function Body2D:createCenteredBoxShape(width, height, center, angle) end

---@param vertices Vector2[]
---@param loop boolean
---@return number
function Body2D:createChainShape(vertices, loop) end

---@param center Vector2
---@param radius number
---@return number
function Body2D:createCircleShape(center, radius) end

---@param vertices Vector2[]
---@return number
function Body2D:createPolygonShape(vertices) end

---@param width number
---@param height number
---@param radius number
---@return number
function Body2D:createRoundedBoxShape(width, height, radius) end

---@param point1 Vector2
---@param point2 Vector2
---@return number
function Body2D:createSegmentShape(point1, point2) end

---@return Object
function Body2D:getAttachedObject() end

---@return Contact2D[]
function Body2D:getBodyContacts() end

---@return number
function Body2D:getCategoryBitsFilter() end

---@param shapeIndex number
---@return number
function Body2D:getCategoryBitsFilter(shapeIndex) end

---@return number
function Body2D:getGroupIndexFilter() end

---@param shapeIndex number
---@return number
function Body2D:getGroupIndexFilter(shapeIndex) end

---@return number
function Body2D:getMaskBitsFilter() end

---@param shapeIndex number
---@return number
function Body2D:getMaskBitsFilter(shapeIndex) end

---@return number
function Body2D:getMass() end

---@return number
function Body2D:getNumShapes() end

---@return number
function Body2D:getRotationalInertia() end

---@param index number
---@return Contact2D[]
function Body2D:getShapeContacts(index) end

---@return number
function Body2D:getShapeDensity() end

---@param index number
---@return number
function Body2D:getShapeDensity(index) end

---@return number
function Body2D:getShapeFriction() end

---@param index number
---@return number
function Body2D:getShapeFriction(index) end

---@return number
function Body2D:getShapeRestitution() end

---@param index number
---@return number
function Body2D:getShapeRestitution(index) end

---@param index number
---@return Shape2DType
function Body2D:getShapeType(index) end

---@return boolean
function Body2D:isShapeContactEvents() end

---@param index number
---@return boolean
function Body2D:isShapeContactEvents(index) end

---@return boolean
function Body2D:isShapeEnableHitEvents() end

---@param index number
---@return boolean
function Body2D:isShapeEnableHitEvents(index) end

---@return boolean
function Body2D:isShapePreSolveEvents() end

---@param index number
---@return boolean
function Body2D:isShapePreSolveEvents(index) end

---@return boolean
function Body2D:isShapeSensor() end

---@param index number
---@return boolean
function Body2D:isShapeSensor(index) end

---@return boolean
function Body2D:isShapeSensorEvents() end

---@param index number
---@return boolean
function Body2D:isShapeSensorEvents(index) end

function Body2D:load() end

function Body2D:removeAllShapes() end

---@param categoryBits number
---@param maskBits number
function Body2D:setBitsFilter(categoryBits, maskBits) end

---@param shapeIndex number
---@param categoryBits number
---@param maskBits number
function Body2D:setBitsFilter(shapeIndex, categoryBits, maskBits) end

---@param categoryBits number
function Body2D:setCategoryBitsFilter(categoryBits) end

---@param shapeIndex number
---@param categoryBits number
function Body2D:setCategoryBitsFilter(shapeIndex, categoryBits) end

---@param groupIndex number
function Body2D:setGroupIndexFilter(groupIndex) end

---@param shapeIndex number
---@param groupIndex number
function Body2D:setGroupIndexFilter(shapeIndex, groupIndex) end

---@param maskBits number
function Body2D:setMaskBitsFilter(maskBits) end

---@param shapeIndex number
---@param maskBits number
function Body2D:setMaskBitsFilter(shapeIndex, maskBits) end

---@param contactEvents boolean
function Body2D:setShapeContactEvents(contactEvents) end

---@param index number
---@param contactEvents boolean
function Body2D:setShapeContactEvents(index, contactEvents) end

---@param density number
function Body2D:setShapeDensity(density) end

---@param index number
---@param density number
function Body2D:setShapeDensity(index, density) end

---@param hitEvents boolean
function Body2D:setShapeEnableHitEvents(hitEvents) end

---@param index number
---@param hitEvents boolean
function Body2D:setShapeEnableHitEvents(index, hitEvents) end

---@param friction number
function Body2D:setShapeFriction(friction) end

---@param index number
---@param friction number
function Body2D:setShapeFriction(index, friction) end

---@param preSolveEvent boolean
function Body2D:setShapePreSolveEvents(preSolveEvent) end

---@param index number
---@param preSolveEvent boolean
function Body2D:setShapePreSolveEvents(index, preSolveEvent) end

---@param restitution number
function Body2D:setShapeRestitution(restitution) end

---@param index number
---@param restitution number
function Body2D:setShapeRestitution(index, restitution) end

---@param sensor boolean
function Body2D:setShapeSensor(sensor) end

---@param index number
---@param sensor boolean
function Body2D:setShapeSensor(index, sensor) end

---@param sensorEvents boolean
function Body2D:setShapeSensorEvents(sensorEvents) end

---@param index number
---@param sensorEvents boolean
function Body2D:setShapeSensorEvents(index, sensorEvents) end


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

---@param force Vector3
function Body3D:applyForce(force) end

---@param force Vector3
---@param point Vector3
function Body3D:applyForce(force, point) end

---@param impulse Vector3
function Body3D:applyImpulse(impulse) end

---@param impulse Vector3
---@param point Vector3
function Body3D:applyImpulse(impulse, point) end

---@param torque Vector3
function Body3D:applyTorque(torque) end

---@return boolean
function Body3D:canBeKinematicOrDynamic() end

---@param width number
---@param height number
---@param depth number
---@return number
function Body3D:createBoxShape(width, height, depth) end

---@param position Vector3
---@param rotation Quaternion
---@param width number
---@param height number
---@param depth number
---@return number
function Body3D:createBoxShape(position, rotation, width, height, depth) end

---@param halfHeight number
---@param radius number
---@return number
function Body3D:createCapsuleShape(halfHeight, radius) end

---@param position Vector3
---@param rotation Quaternion
---@param halfHeight number
---@param radius number
---@return number
function Body3D:createCapsuleShape(position, rotation, halfHeight, radius) end

---@return number
function Body3D:createConvexHullShape() end

---@param vertices Vector3[]
---@return number
function Body3D:createConvexHullShape(vertices) end

---@param position Vector3
---@param rotation Quaternion
---@param vertices Vector3[]
---@return number
function Body3D:createConvexHullShape(position, rotation, vertices) end

---@param halfHeight number
---@param radius number
---@return number
function Body3D:createCylinderShape(halfHeight, radius) end

---@param position Vector3
---@param rotation Quaternion
---@param halfHeight number
---@param radius number
---@return number
function Body3D:createCylinderShape(position, rotation, halfHeight, radius) end

---@return number
function Body3D:createHeightFieldShape() end

---@param samplesSize number
---@return number
function Body3D:createHeightFieldShape(samplesSize) end

---@return number
function Body3D:createMeshShape() end

---@param vertices Vector3[]
---@param indices number[]
---@return number
function Body3D:createMeshShape(vertices, indices) end

---@param position Vector3
---@param rotation Quaternion
---@param vertices Vector3[]
---@param indices number[]
---@return number
function Body3D:createMeshShape(position, rotation, vertices, indices) end

---@param radius number
---@return number
function Body3D:createSphereShape(radius) end

---@param position Vector3
---@param rotation Quaternion
---@param radius number
---@return number
function Body3D:createSphereShape(position, rotation, radius) end

---@param halfHeight number
---@param topRadius number
---@param bottomRadius number
---@return number
function Body3D:createTaperedCapsuleShape(halfHeight, topRadius, bottomRadius) end

---@param position Vector3
---@param rotation Quaternion
---@param halfHeight number
---@param topRadius number
---@param bottomRadius number
---@return number
function Body3D:createTaperedCapsuleShape(position, rotation, halfHeight, topRadius, bottomRadius) end

function Body3D:deactivate() end

---@return Vector3
function Body3D:getAccumulatedForce() end

---@return Vector3
function Body3D:getAccumulatedTorque() end

---@return Object
function Body3D:getAttachedObject() end

---@return Vector3
function Body3D:getCenterOfMassPosition() end

---@return Matrix4
function Body3D:getInverseInertia() end

---@return number
function Body3D:getNumShapes() end

---@param point Vector3
---@return Vector3
function Body3D:getPointVelocity(point) end

---@param pointRelativeToCOM Vector3
---@return Vector3
function Body3D:getPointVelocityCOM(pointRelativeToCOM) end

---@return number
function Body3D:getShapeDensity() end

---@param index number
---@return number
function Body3D:getShapeDensity(index) end

---@param index number
---@return Shape3DType
function Body3D:getShapeType(index) end

function Body3D:load() end

---@param translationX boolean
---@param translationY boolean
---@param translationZ boolean
---@param rotationX boolean
---@param rotationY boolean
---@param rotationZ boolean
function Body3D:setAllowedDOFs(translationX, translationY, translationZ, rotationX, rotationY, rotationZ) end

function Body3D:setAllowedDOFs2DPlane() end

function Body3D:setAllowedDOFsAll() end

---@param angularVelocity Vector3
function Body3D:setAngularVelocityClamped(angularVelocity) end

---@param category number
---@param mask number
function Body3D:setBitsFilter(category, mask) end

---@param linearVelocity Vector3
function Body3D:setLinearVelocityClamped(linearVelocity) end

---@param solidBoxSize Vector3
---@param solidBoxDensity number
function Body3D:setOverrideMassAndInertia(solidBoxSize, solidBoxDensity) end

---@param density number
function Body3D:setShapeDensity(density) end

---@param index number
---@param density number
function Body3D:setShapeDensity(index, density) end


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

---@param name string
---@param scene Scene
---@return Entity
function BundleManager.createBundle(name, scene) end

---@param id number
---@param scene Scene
---@return Entity
function BundleManager.createBundle(id, scene) end

---@param name string
---@param scene Scene
---@param parentName string
---@return Entity
function BundleManager.createBundle(name, scene, parentName) end

---@param id number
---@param scene Scene
---@param parentName string
---@return Entity
function BundleManager.createBundle(id, scene, parentName) end

---@param name string
---@param parent EntityHandle
---@return Entity
function BundleManager.createBundle(name, parent) end

---@param id number
---@param parent EntityHandle
---@return Entity
function BundleManager.createBundle(id, parent) end

---@param name string
---@param scene Scene
---@param parent Entity
---@return Entity
function BundleManager.createBundle(name, scene, parent) end

---@param id number
---@param scene Scene
---@param parent Entity
---@return Entity
function BundleManager.createBundle(id, scene, parent) end

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

---@return Text
function Button:getLabelObject() end

---@param color Vector4
function Button:setColorDisabled(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Button:setColorDisabled(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function Button:setColorDisabled(red, green, blue) end

---@param color Vector4
function Button:setColorHovered(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Button:setColorHovered(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function Button:setColorHovered(red, green, blue) end

---@param color Vector4
function Button:setColorNormal(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Button:setColorNormal(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function Button:setColorNormal(red, green, blue) end

---@param color Vector4
function Button:setColorPressed(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Button:setColorPressed(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function Button:setColorPressed(red, green, blue) end

---@param color Vector4
function Button:setLabelColor(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Button:setLabelColor(red, green, blue, alpha) end

---@param path string
function Button:setTextureDisabled(path) end

---@param path string
function Button:setTextureHovered(path) end

---@param path string
function Button:setTextureNormal(path) end

---@param path string
function Button:setTexturePressed(path) end


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

---@param x number
---@param y number
---@param z number
function Camera:setTarget(x, y, z) end

---@param type CameraType
function Camera:setType(type) end

---@param up Vector3
function Camera:setUp(up) end

---@param x number
---@param y number
---@param z number
function Camera:setUp(x, y, z) end

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

---@param r number
---@param g number
---@param b number
---@return any
function Color.linearTosRGB(r, g, b) end

---@param color Vector3
---@return Vector3
function Color.linearTosRGB(color) end

---@param r number
---@param g number
---@param b number
---@param a number
---@return Vector4
function Color.linearTosRGB(r, g, b, a) end

---@param color Vector4
---@return Vector4
function Color.linearTosRGB(color) end

---@param r number
---@param g number
---@param b number
---@return Vector3
function Color.sRGBToLinear(r, g, b) end

---@param srgbIn Vector3
---@return Vector3
function Color.sRGBToLinear(srgbIn) end

---@param r number
---@param g number
---@param b number
---@param a number
---@return Vector4
function Color.sRGBToLinear(r, g, b, a) end

---@param srgbIn Vector4
---@return Vector4
function Color.sRGBToLinear(srgbIn) end


---@class ColorAction
---@field _base TimedAction
ColorAction = {}

---@param Scene any
function ColorAction:ColorAction(Scene) end

---@param startColor Vector3
---@param endColor Vector3
---@param duration number
---@param loop boolean
function ColorAction:setAction(startColor, endColor, duration, loop) end

---@param startColor Vector4
---@param endColor Vector4
---@param duration number
---@param loop boolean
function ColorAction:setAction(startColor, endColor, duration, loop) end


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

---@param expand boolean
function Container:setBoxExpand(expand) end

---@param id number
---@param expand boolean
function Container:setBoxExpand(id, expand) end


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

---@param arg1 any
---@return number
function Data:open(arg1) end


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

---@param scene Scene
function Engine.addSceneLayer(scene) end

---@param includeLifecycle boolean
function Engine.clearAllSubscriptions(includeLifecycle) end

---@param scene Scene
function Engine.clearComponentSubscriptions(scene) end

function Engine.commitThreadQueue() end

function Engine.endAsyncThread() end

---@param scene Scene
function Engine.executeSceneOnce(scene) end

---@return Scene
function Engine.getLastScene() end

---@return Scene
function Engine.getMainScene() end

---@return number
function Engine.getQueuedResourceCount() end

---@return Scene
function Engine.getScene() end

---@return boolean
function Engine.hasScenesToExecuteOnce() end

---@return boolean
function Engine.isAsyncThread() end

---@param scene Scene
---@return boolean
function Engine.isSceneRunning(scene) end

---@return boolean
function Engine.isUIEventReceived() end

---@return boolean
function Engine.isViewLoaded() end

---@param pause boolean
function Engine.pauseGameEvents(pause) end

---@param removeOneTimeScenes boolean
function Engine.removeAllSceneLayers(removeOneTimeScenes) end

function Engine.removeAllScenes() end

---@param scene Scene
function Engine.removeScene(scene) end

---@param callTouchInMouseEvent boolean
function Engine.setCallTouchInMouseEvent(callTouchInMouseEvent) end

---@param canvasWidth number
---@param canvasHeight number
function Engine.setCanvasSize(canvasWidth, canvasHeight) end

---@param maxThreads number
function Engine.setMaxResourceLoadingThreads(maxThreads) end

---@param x number
---@param y number
function Engine.setMousePosition(x, y) end

---@param scene Scene
function Engine.setScene(scene) end

---@param updateTimeMS number
function Engine.setUpdateTimeMS(updateTimeMS) end

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

---@return number
function FileData:eof() end

---@return number
function FileData:length() end

---@return number
function FileData:pos() end

---@return number
function FileData:read16() end

---@return number
function FileData:read32() end

---@return number
function FileData:read8() end

---@return string
function FileData:readString() end

---@param stringlen number
---@return string
function FileData:readString(stringlen) end

---@param aOffset number
function FileData:seek(aOffset) end

---@param s string
---@return number
function FileData:writeString(s) end

---@param filepath string
---@return string
function FileData.getBaseDir(filepath) end

---@param arg1 any
---@return string
function FileData.getFilePathExtension(arg1) end

---@param path string
---@return string
function FileData.getSystemPath(path) end

---@param useHandle boolean
---@return FileData
function FileData.newFile(useHandle) end

---@param arg1 any
---@param useHandle boolean
---@return FileData
function FileData.newFile(arg1, useHandle) end


---@class Fog
---@field _base EntityHandle
Fog = {}

---@param Scene any
function Fog:Fog(Scene) end

---@param color Vector3
function Fog:setColor(color) end

---@param red number
---@param green number
---@param blue number
function Fog:setColor(red, green, blue) end

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

---@return AABB
function Image:getAABB() end

---@param name string
---@return Vector4
function Image:getShaderUniform(name) end

function Image:getUIComponent() end

---@return AABB
function Image:getWorldAABB() end

---@param name string
---@return boolean
function Image:removeShaderUniform(name) end

---@param color Vector4
function Image:setColor(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Image:setColor(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function Image:setColor(red, green, blue) end

---@param margin number
function Image:setPatchMargin(margin) end

---@param marginLeft number
---@param marginRight number
---@param marginTop number
---@param marginBottom number
function Image:setPatchMargin(marginLeft, marginRight, marginTop, marginBottom) end

---@param name string
---@param value Vector4
function Image:setShaderUniform(name, value) end

---@param name string
---@param value Vector3
function Image:setShaderUniform(name, value) end

---@param name string
---@param value Vector2
function Image:setShaderUniform(name, value) end

---@param name string
---@param value number
function Image:setShaderUniform(name, value) end

---@param path string
function Image:setTexture(path) end

---@param id string
---@param data TextureData
function Image:setTexture(id, data) end

---@param framebuffer Framebuffer
function Image:setTexture(framebuffer) end


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

---@param bodyA Entity
---@param bodyB Entity
function Joint2D:setDistanceJoint(bodyA, bodyB) end

---@param bodyA Entity
---@param bodyB Entity
---@param worldAnchorOnBodyA Vector2
---@param worldAnchorOnBodyB Vector2
---@param rope boolean
function Joint2D:setDistanceJoint(bodyA, bodyB, worldAnchorOnBodyA, worldAnchorOnBodyB, rope) end

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

---@param bodyA Entity
---@param bodyB Entity
function Joint3D:setDistanceJoint(bodyA, bodyB) end

---@param bodyA Entity
---@param bodyB Entity
---@param worldAnchorOnBodyA Vector3
---@param worldAnchorOnBodyB Vector3
function Joint3D:setDistanceJoint(bodyA, bodyB, worldAnchorOnBodyA, worldAnchorOnBodyB) end

---@param bodyA Entity
---@param bodyB Entity
function Joint3D:setFixedJoint(bodyA, bodyB) end

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

---@param color Vector3
function Light:setColor(color) end

---@param r number
---@param g number
---@param b number
function Light:setColor(r, g, b) end

---@param inner number
---@param outer number
function Light:setConeAngle(inner, outer) end

---@param direction Vector3
function Light:setDirection(direction) end

---@param x number
---@param y number
---@param z number
function Light:setDirection(x, y, z) end

---@param inner number
function Light:setInnerConeAngle(inner) end

---@param intensity number
function Light:setIntensity(intensity) end

---@param numCascades number
function Light:setNumCascades(numCascades) end

---@param outer number
function Light:setOuterConeAngle(outer) end

---@param range number
function Light:setRange(range) end

---@param nearValue number
---@param farValue number
function Light:setShadowCameraNearFar(nearValue, farValue) end

---@param shadows boolean
function Light:setShadows(shadows) end

---@param texture string
function Light:setSpotMask(texture) end

---@param id string
---@param data TextureData
function Light:setSpotMask(id, data) end

---@param type LightType
function Light:setType(type) end


---@class Light2D
---@field _base Object
Light2D = {}

---@param Scene any
function Light2D:Light2D(Scene) end

---@param color Vector3
function Light2D:setColor(color) end

---@param r number
---@param g number
---@param b number
function Light2D:setColor(r, g, b) end

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

---@param line LineData
function Lines:addLine(line) end

---@param pointA Vector3
---@param pointB Vector3
function Lines:addLine(pointA, pointB) end

---@param pointA Vector3
---@param pointB Vector3
---@param color Vector3
function Lines:addLine(pointA, pointB, color) end

---@param pointA Vector3
---@param pointB Vector3
---@param color Vector4
function Lines:addLine(pointA, pointB, color) end

---@param pointA Vector3
---@param pointB Vector3
---@param colorA Vector4
---@param colorB Vector4
function Lines:addLine(pointA, pointB, colorA, colorB) end

function Lines:clearLines() end

---@param index number
---@return LineData
function Lines:getLine(index) end

---@return number
function Lines:getNumLines() end

---@param name string
---@return Vector4
function Lines:getShaderUniform(name) end

---@param index number
function Lines:removeLine(index) end

---@param name string
---@return boolean
function Lines:removeShaderUniform(name) end

---@param name string
---@param value Vector4
function Lines:setShaderUniform(name, value) end

---@param name string
---@param value Vector3
function Lines:setShaderUniform(name, value) end

---@param name string
---@param value Vector2
function Lines:setShaderUniform(name, value) end

---@param name string
---@param value number
function Lines:setShaderUniform(name, value) end

---@param index number
---@param line LineData
function Lines:updateLine(index, line) end

---@param index number
---@param pointA Vector3
---@param pointB Vector3
function Lines:updateLine(index, pointA, pointB) end

---@param index number
---@param pointA Vector3
---@param pointB Vector3
---@param color Vector3
function Lines:updateLine(index, pointA, pointB, color) end

---@param index number
---@param pointA Vector3
---@param pointB Vector3
---@param color Vector4
function Lines:updateLine(index, pointA, pointB, color) end

---@param index number
---@param pointA Vector3
---@param pointB Vector3
---@param colorA Vector4
---@param colorB Vector4
function Lines:updateLine(index, pointA, pointB, colorA, colorB) end

---@param index number
---@param color Vector3
function Lines:updateLine(index, color) end

---@param index number
---@param color Vector4
function Lines:updateLine(index, color) end

---@param index number
---@param colorA Vector4
---@param colorB Vector4
function Lines:updateLine(index, colorA, colorB) end

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

---@return string
function Matrix3:__tostring() end

---@param rkInverse Matrix3
---@param fTolerance number
---@return boolean
function Matrix3:calcInverse(rkInverse, fTolerance) end

---@param column number
---@return Vector3
function Matrix3:column(column) end

---@param kQ Matrix3
---@param kD Vector3
---@param kU Vector3
function Matrix3:decomposeQDU(kQ, kD, kU) end

---@param col number
---@param row number
---@return number
function Matrix3:get(col, row) end

---@return Matrix3
function Matrix3:identity() end

---@param fTolerance number
---@return Matrix3
function Matrix3:inverse(fTolerance) end

---@return boolean
function Matrix3:isValid() end

---@param row number
---@return Vector3
function Matrix3:row(row) end

---@param col number
---@param row number
---@param val number
function Matrix3:set(col, row, val) end

---@param column number
---@param vec Vector3
function Matrix3:setColumn(column, vec) end

---@param row number
---@param vec Vector3
function Matrix3:setRow(row, vec) end

---@return Matrix3
function Matrix3:transpose() end

---@param angle number
---@param arg2 any
---@return Matrix3
function Matrix3.rotateMatrix(angle, arg2) end

---@param azimuth number
---@param elevation number
---@return Matrix3
function Matrix3.rotateMatrix(azimuth, elevation) end

---@param angle number
---@return Matrix3
function Matrix3.rotateXMatrix(angle) end

---@param angle number
---@return Matrix3
function Matrix3.rotateYMatrix(angle) end

---@param angle number
---@return Matrix3
function Matrix3.rotateZMatrix(angle) end

---@param sf number
---@return Matrix3
function Matrix3.scaleMatrix(sf) end

---@param sf Vector3
---@return Matrix3
function Matrix3.scaleMatrix(sf) end


---@class Matrix4
Matrix4 = {}

function Matrix4:Matrix4() end

function Matrix4:__add() end

function Matrix4:__eq() end

function Matrix4:__mul() end

function Matrix4:__sub() end

---@return string
function Matrix4:__tostring() end

---@param column number
---@return Vector4
function Matrix4:column(column) end

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

---@return number
function Matrix4:determinant() end

---@param col number
---@param row number
---@return number
function Matrix4:get(col, row) end

---@return Matrix4
function Matrix4:identity() end

---@return Matrix4
function Matrix4:inverse() end

---@return boolean
function Matrix4:isValid() end

---@return Matrix3
function Matrix4:linear() end

---@param row number
---@return Vector4
function Matrix4:row(row) end

---@param col number
---@param row number
---@param val number
function Matrix4:set(col, row, val) end

---@param column number
---@param vec Vector4
function Matrix4:setColumn(column, vec) end

---@param row number
---@param vec Vector4
function Matrix4:setRow(row, vec) end

---@param x number
---@param y number
---@param z number
---@return Matrix4
function Matrix4:translateInPlace(x, y, z) end

---@return Matrix4
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

---@param angle number
---@param arg2 any
---@return Matrix4
function Matrix4.rotateMatrix(angle, arg2) end

---@param azimuth number
---@param elevation number
---@return Matrix4
function Matrix4.rotateMatrix(azimuth, elevation) end

---@param angle number
---@return Matrix4
function Matrix4.rotateXMatrix(angle) end

---@param angle number
---@return Matrix4
function Matrix4.rotateYMatrix(angle) end

---@param angle number
---@return Matrix4
function Matrix4.rotateZMatrix(angle) end

---@param sf number
---@return Matrix4
function Matrix4.scaleMatrix(sf) end

---@param sf Vector3
---@return Matrix4
function Matrix4.scaleMatrix(sf) end

---@param x number
---@param y number
---@param z number
---@return Matrix4
function Matrix4.translateMatrix(x, y, z) end

---@param position Vector3
---@return Matrix4
function Matrix4.translateMatrix(position) end


---@class Mesh
---@field _base Object
Mesh = {}

---@param Scene any
function Mesh:Mesh(Scene) end

---@param instance InstanceData
function Mesh:addInstance(instance) end

---@param position Vector3
function Mesh:addInstance(position) end

---@param x number
---@param y number
---@param z number
function Mesh:addInstance(x, y, z) end

---@param position Vector3
---@param rotation Quaternion
---@param scale Vector3
function Mesh:addInstance(position, rotation, scale) end

---@param position Vector3
---@param rotation Quaternion
---@param scale Vector3
---@param color Vector4
function Mesh:addInstance(position, rotation, scale, color) end

---@param position Vector3
---@param rotation Quaternion
---@param scale Vector3
---@param color Vector4
---@param textureRect Rect
function Mesh:addInstance(position, rotation, scale, color, textureRect) end

function Mesh:clearInstances() end

function Mesh:createInstancedMesh() end

---@return AABB
function Mesh:getAABB() end

---@param index number
---@return InstanceData
function Mesh:getInstance(index) end

---@return Material
function Mesh:getMaterial() end

---@param submesh number
---@return Material
function Mesh:getMaterial(submesh) end

---@return number
function Mesh:getNumInstances() end

---@return number
function Mesh:getNumSubmeshes() end

---@return PrimitiveType
function Mesh:getPrimitiveType() end

---@param submesh number
---@return PrimitiveType
function Mesh:getPrimitiveType(submesh) end

---@param name string
---@return Vector4
function Mesh:getShaderUniform(name) end

---@return AABB
function Mesh:getVerticesAABB() end

---@return AABB
function Mesh:getWorldAABB() end

---@return boolean
function Mesh:hasInstancedMesh() end

---@return boolean
function Mesh:isCastShadowsWithTexture() end

---@param submesh number
---@return boolean
function Mesh:isCastShadowsWithTexture(submesh) end

---@return boolean
function Mesh:isFaceCulling() end

---@param submesh number
---@return boolean
function Mesh:isFaceCulling(submesh) end

---@param index number
---@return boolean
function Mesh:isInstanceVisible(index) end

---@return boolean
function Mesh:isMirror() end

---@param index number
function Mesh:removeInstance(index) end

function Mesh:removeInstancedMesh() end

function Mesh:removeMirror() end

---@param name string
---@return boolean
function Mesh:removeShaderUniform(name) end

function Mesh:setAsMirror() end

---@param normal Vector3
function Mesh:setAsMirror(normal) end

---@param castShadowsWithTexture boolean
function Mesh:setCastShadowsWithTexture(castShadowsWithTexture) end

---@param submesh number
---@param castShadowsWithTexture boolean
function Mesh:setCastShadowsWithTexture(submesh, castShadowsWithTexture) end

---@param color Vector4
function Mesh:setColor(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Mesh:setColor(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function Mesh:setColor(red, green, blue) end

---@param faceCulling boolean
function Mesh:setFaceCulling(faceCulling) end

---@param submesh number
---@param faceCulling boolean
function Mesh:setFaceCulling(submesh, faceCulling) end

---@param index number
---@param visible boolean
function Mesh:setInstanceVisible(index, visible) end

---@param billboard boolean
---@param cylindrical boolean
function Mesh:setInstancedBillboard(billboard, cylindrical) end

---@param billboard boolean
function Mesh:setInstancedBillboard(billboard) end

---@param material Material
function Mesh:setMaterial(material) end

---@param submesh number
---@param material Material
function Mesh:setMaterial(submesh, material) end

---@param primitiveType PrimitiveType
function Mesh:setPrimitiveType(primitiveType) end

---@param submesh number
---@param primitiveType PrimitiveType
function Mesh:setPrimitiveType(submesh, primitiveType) end

---@param name string
---@param value Vector4
function Mesh:setShaderUniform(name, value) end

---@param name string
---@param value Vector3
function Mesh:setShaderUniform(name, value) end

---@param name string
---@param value Vector2
function Mesh:setShaderUniform(name, value) end

---@param name string
---@param value number
function Mesh:setShaderUniform(name, value) end

---@param path string
function Mesh:setTexture(path) end

---@param id string
---@param data TextureData
function Mesh:setTexture(id, data) end

---@param framebuffer Framebuffer
function Mesh:setTexture(framebuffer) end

---@param index number
---@param instance InstanceData
function Mesh:updateInstance(index, instance) end

---@param index number
---@param position Vector3
function Mesh:updateInstance(index, position) end

---@param index number
---@param x number
---@param y number
---@param z number
function Mesh:updateInstance(index, x, y, z) end

---@param index number
---@param position Vector3
---@param rotation Quaternion
---@param scale Vector3
function Mesh:updateInstance(index, position, rotation, scale) end

---@param index number
---@param position Vector3
---@param rotation Quaternion
---@param scale Vector3
---@param color Vector4
function Mesh:updateInstance(index, position, rotation, scale, color) end

---@param index number
---@param position Vector3
---@param rotation Quaternion
---@param scale Vector3
---@param color Vector4
---@param textureRect Rect
function Mesh:updateInstance(index, position, rotation, scale, color, textureRect) end

function Mesh:updateInstances() end


---@class MeshPolygon
---@field _base Mesh
MeshPolygon = {}

---@param Scene any
function MeshPolygon:MeshPolygon(Scene) end

---@param vertex Vector3
function MeshPolygon:addVertex(vertex) end

---@param x number
---@param y number
function MeshPolygon:addVertex(x, y) end


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

---@param x number
---@param y number
---@param z number
function Mirror:setNormal(x, y, z) end


---@class Model
---@field _base Mesh
Model = {}

---@param Scene any
function Model:Model(Scene) end

---@param name string
---@return Animation
function Model:findAnimation(name) end

---@param index number
---@return Animation
function Model:getAnimation(index) end

---@param name string
---@return Bone
function Model:getBone(name) end

---@param id number
---@return Bone
function Model:getBone(id) end

---@param name string
---@return number
function Model:getMorphWeight(name) end

---@param id number
---@return number
function Model:getMorphWeight(id) end

---@param filename string
---@return boolean
function Model:loadGLTF(filename) end

---@param filename string
---@return boolean
function Model:loadModel(filename) end

---@param filename string
---@return boolean
function Model:loadOBJ(filename) end

---@param index number
function Model:playAnimation(index) end

---@param index number
---@param fadeTime number
function Model:playAnimation(index, fadeTime) end

---@param name string
function Model:playAnimation(name) end

---@param name string
---@param fadeTime number
function Model:playAnimation(name, fadeTime) end

function Model:resetToBindPose() end

---@param name string
---@param value number
function Model:setMorphWeight(name, value) end

---@param id number
---@param value number
function Model:setMorphWeight(id, value) end

---@param fadeTime number
function Model:stopAnimations(fadeTime) end


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

---@param point Vector3
---@return Vector3
function OBB:closestPoint(point) end

---@param point Vector3
---@return boolean
function OBB:contains(point) end

---@param other OBB
---@return boolean
function OBB:contains(other) end

---@param point Vector3
---@return number
function OBB:distance(point) end

---@param other OBB
function OBB:enclose(other) end

---@param point Vector3
function OBB:enclose(point) end

---@return Vector3
function OBB:getAxisX() end

---@return Vector3
function OBB:getAxisY() end

---@return Vector3
function OBB:getAxisZ() end

---@param cornerToGet CornerEnum
---@return Vector3
function OBB:getCorner(cornerToGet) end

---@return Vector3
function OBB:getCorners() end

---@param other OBB
---@return boolean
function OBB:intersects(other) end

---@param aabb AABB
---@return boolean
function OBB:intersects(aabb) end

---@param sphere Sphere
---@return boolean
function OBB:intersects(sphere) end

---@param plane Plane
---@return boolean
function OBB:intersects(plane) end

---@param point Vector3
---@return boolean
function OBB:intersects(point) end

---@return boolean
function OBB:isFinite() end

---@return boolean
function OBB:isInfinite() end

---@return boolean
function OBB:isNull() end

---@param axisX Vector3
---@param axisY Vector3
---@param axisZ Vector3
function OBB:setAxes(axisX, axisY, axisZ) end

---@param orientation Quaternion
function OBB:setAxes(orientation) end

function OBB:setFinite() end

function OBB:setInfinite() end

function OBB:setNull() end

---@param point Vector3
---@return number
function OBB:squaredDistance(point) end

---@return AABB
function OBB:toAABB() end

---@return Matrix4
function OBB:toMatrix() end

---@return string
function OBB:toString() end

---@param matrix Matrix4
function OBB:transform(matrix) end

---@param translate Vector3
---@param rotate Quaternion
---@param scale Vector3
function OBB:transform(translate, rotate, scale) end

---@return number
function OBB:volume() end

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

---@param child Object
function Object:addChild(child) end

---@param child Entity
function Object:addChild(child) end

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

---@param child Object
function Object:removeChild(child) end

---@param child Entity
function Object:removeChild(child) end

function Object:removeParent() end

---@param billboard boolean
---@param fake boolean
---@param cylindrical boolean
function Object:setBillboard(billboard, fake, cylindrical) end

---@param billboard boolean
function Object:setBillboard(billboard) end

---@param rotation Quaternion
function Object:setBillboardRotation(rotation) end

---@param xAngle number
---@param yAngle number
---@param zAngle number
function Object:setBillboardRotation(xAngle, yAngle, zAngle) end

---@param position Vector3
function Object:setPosition(position) end

---@param x number
---@param y number
---@param z number
function Object:setPosition(x, y, z) end

---@param x number
---@param y number
function Object:setPosition(x, y) end

---@param rotation Quaternion
function Object:setRotation(rotation) end

---@param xAngle number
---@param yAngle number
---@param zAngle number
function Object:setRotation(xAngle, yAngle, zAngle) end

---@param factor number
function Object:setScale(factor) end

---@param scale Vector3
function Object:setScale(scale) end

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

---@param x number
---@param y number
function Occluder2D:addVertex(x, y) end

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

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Panel:setHeaderColor(red, green, blue, alpha) end

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

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Panel:setTitleColor(red, green, blue, alpha) end

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

---@param time number
---@param count number
function Particles:addBurst(time, count) end

---@param time number
---@param minCount number
---@param maxCount number
function Particles:addBurst(time, minCount, maxCount) end

---@param time number
---@param color Vector3
function Particles:addColorGradientStop(time, color) end

function Particles:clearBursts() end

function Particles:clearColorGradient() end

function Particles:getParticlesomponent() end

function Particles:reset() end

---@param acceleration Vector3
function Particles:setAccelerationInitializer(acceleration) end

---@param minAcceleration Vector3
---@param maxAcceleration Vector3
function Particles:setAccelerationInitializer(minAcceleration, maxAcceleration) end

---@param fromTime number
---@param toTime number
---@param fromAcceleration Vector3
---@param toAcceleration Vector3
function Particles:setAccelerationModifier(fromTime, toTime, fromAcceleration, toAcceleration) end

---@param fromTime number
---@param toTime number
---@param fromAcceleration Vector3
---@param toAcceleration Vector3
---@param functionType EaseType
function Particles:setAccelerationModifier(fromTime, toTime, fromAcceleration, toAcceleration, functionType) end

---@param fromTime number
---@param toTime number
---@param fromAcceleration Vector3
---@param toAcceleration Vector3
---@param function Ease
function Particles:setAccelerationModifier(fromTime, toTime, fromAcceleration, toAcceleration, function) end

---@param alpha number
function Particles:setAlphaInitializer(alpha) end

---@param minAlpha number
---@param maxAlpha number
function Particles:setAlphaInitializer(minAlpha, maxAlpha) end

---@param fromTime number
---@param toTime number
---@param fromAlpha number
---@param toAlpha number
function Particles:setAlphaModifier(fromTime, toTime, fromAlpha, toAlpha) end

---@param fromTime number
---@param toTime number
---@param fromAlpha number
---@param toAlpha number
---@param functionType EaseType
function Particles:setAlphaModifier(fromTime, toTime, fromAlpha, toAlpha, functionType) end

---@param fromTime number
---@param toTime number
---@param fromAlpha number
---@param toAlpha number
---@param function Ease
function Particles:setAlphaModifier(fromTime, toTime, fromAlpha, toAlpha, function) end

---@param bursts ParticleBurst[]
function Particles:setBursts(bursts) end

---@param radius number
function Particles:setCirclePositionInitializer(radius) end

---@param radius number
---@param innerRadius number
function Particles:setCirclePositionInitializer(radius, innerRadius) end

---@param stops ParticleColorGradientStop[]
function Particles:setColorGradient(stops) end

---@param useSRGB boolean
function Particles:setColorGradientUseSRGB(useSRGB) end

---@param color Vector3
function Particles:setColorInitializer(color) end

---@param minColor Vector3
---@param maxColor Vector3
function Particles:setColorInitializer(minColor, maxColor) end

---@param fromTime number
---@param toTime number
---@param fromColor Vector3
---@param toColor Vector3
function Particles:setColorModifier(fromTime, toTime, fromColor, toColor) end

---@param fromTime number
---@param toTime number
---@param fromColor Vector3
---@param toColor Vector3
---@param functionType EaseType
function Particles:setColorModifier(fromTime, toTime, fromColor, toColor, functionType) end

---@param fromTime number
---@param toTime number
---@param fromColor Vector3
---@param toColor Vector3
---@param function Ease
function Particles:setColorModifier(fromTime, toTime, fromColor, toColor, function) end

---@param angle number
---@param height number
function Particles:setConePositionInitializer(angle, height) end

---@param radius number
function Particles:setHemispherePositionInitializer(radius) end

---@param radius number
---@param innerRadius number
function Particles:setHemispherePositionInitializer(radius, innerRadius) end

---@param life number
function Particles:setLifeInitializer(life) end

---@param minLife number
---@param maxLife number
function Particles:setLifeInitializer(minLife, maxLife) end

---@param position Vector3
function Particles:setPositionInitializer(position) end

---@param minPosition Vector3
---@param maxPosition Vector3
function Particles:setPositionInitializer(minPosition, maxPosition) end

---@param fromTime number
---@param toTime number
---@param fromPosition Vector3
---@param toPosition Vector3
function Particles:setPositionModifier(fromTime, toTime, fromPosition, toPosition) end

---@param fromTime number
---@param toTime number
---@param fromPosition Vector3
---@param toPosition Vector3
---@param functionType EaseType
function Particles:setPositionModifier(fromTime, toTime, fromPosition, toPosition, functionType) end

---@param fromTime number
---@param toTime number
---@param fromPosition Vector3
---@param toPosition Vector3
---@param function Ease
function Particles:setPositionModifier(fromTime, toTime, fromPosition, toPosition, function) end

---@param rotation Quaternion
function Particles:setRotationInitializer(rotation) end

---@param rotation number
function Particles:setRotationInitializer(rotation) end

---@param minRotation Quaternion
---@param maxRotation Quaternion
function Particles:setRotationInitializer(minRotation, maxRotation) end

---@param minRotation number
---@param maxRotation number
function Particles:setRotationInitializer(minRotation, maxRotation) end

---@param fromTime number
---@param toTime number
---@param fromRotation number
---@param toRotation number
function Particles:setRotationModifier(fromTime, toTime, fromRotation, toRotation) end

---@param fromTime number
---@param toTime number
---@param fromRotation Quaternion
---@param toRotation Quaternion
function Particles:setRotationModifier(fromTime, toTime, fromRotation, toRotation) end

---@param fromTime number
---@param toTime number
---@param fromRotation number
---@param toRotation number
---@param functionType EaseType
function Particles:setRotationModifier(fromTime, toTime, fromRotation, toRotation, functionType) end

---@param fromTime number
---@param toTime number
---@param fromRotation Quaternion
---@param toRotation Quaternion
---@param functionType EaseType
function Particles:setRotationModifier(fromTime, toTime, fromRotation, toRotation, functionType) end

---@param fromTime number
---@param toTime number
---@param fromRotation number
---@param toRotation number
---@param function Ease
function Particles:setRotationModifier(fromTime, toTime, fromRotation, toRotation, function) end

---@param fromTime number
---@param toTime number
---@param fromRotation Quaternion
---@param toRotation Quaternion
---@param function Ease
function Particles:setRotationModifier(fromTime, toTime, fromRotation, toRotation, function) end

---@param scale number
function Particles:setScaleInitializer(scale) end

---@param scale Vector3
function Particles:setScaleInitializer(scale) end

---@param minScale number
---@param maxScale number
function Particles:setScaleInitializer(minScale, maxScale) end

---@param minScale Vector3
---@param maxScale Vector3
function Particles:setScaleInitializer(minScale, maxScale) end

---@param fromTime number
---@param toTime number
---@param fromScale number
---@param toScale number
function Particles:setScaleModifier(fromTime, toTime, fromScale, toScale) end

---@param fromTime number
---@param toTime number
---@param fromScale Vector3
---@param toScale Vector3
function Particles:setScaleModifier(fromTime, toTime, fromScale, toScale) end

---@param fromTime number
---@param toTime number
---@param fromScale Vector3
---@param toScale Vector3
---@param functionType EaseType
function Particles:setScaleModifier(fromTime, toTime, fromScale, toScale, functionType) end

---@param fromTime number
---@param toTime number
---@param fromScale Vector3
---@param toScale Vector3
---@param function Ease
function Particles:setScaleModifier(fromTime, toTime, fromScale, toScale, function) end

---@param size number
function Particles:setSizeInitializer(size) end

---@param minSize number
---@param maxSize number
function Particles:setSizeInitializer(minSize, maxSize) end

---@param fromTime number
---@param toTime number
---@param fromSize number
---@param toSize number
function Particles:setSizeModifier(fromTime, toTime, fromSize, toSize) end

---@param fromTime number
---@param toTime number
---@param fromSize number
---@param toSize number
---@param functionType EaseType
function Particles:setSizeModifier(fromTime, toTime, fromSize, toSize, functionType) end

---@param fromTime number
---@param toTime number
---@param fromSize number
---@param toSize number
---@param function Ease
function Particles:setSizeModifier(fromTime, toTime, fromSize, toSize, function) end

---@param radius number
function Particles:setSpherePositionInitializer(radius) end

---@param radius number
---@param innerRadius number
function Particles:setSpherePositionInitializer(radius, innerRadius) end

---@param frames number[]
function Particles:setSpriteIntializer(frames) end

---@param minFrame number
---@param maxFrame number
function Particles:setSpriteIntializer(minFrame, maxFrame) end

---@param fromTime number
---@param toTime number
---@param frames number[]
function Particles:setSpriteModifier(fromTime, toTime, frames) end

---@param fromTime number
---@param toTime number
---@param frames number[]
---@param functionType EaseType
function Particles:setSpriteModifier(fromTime, toTime, frames, functionType) end

---@param fromTime number
---@param toTime number
---@param frames number[]
---@param function Ease
function Particles:setSpriteModifier(fromTime, toTime, frames, function) end

---@param velocity Vector3
function Particles:setVelocityInitializer(velocity) end

---@param minVelocity Vector3
---@param maxVelocity Vector3
function Particles:setVelocityInitializer(minVelocity, maxVelocity) end

---@param fromTime number
---@param toTime number
---@param fromVelocity Vector3
---@param toVelocity Vector3
function Particles:setVelocityModifier(fromTime, toTime, fromVelocity, toVelocity) end

---@param fromTime number
---@param toTime number
---@param fromVelocity Vector3
---@param toVelocity Vector3
---@param functionType EaseType
function Particles:setVelocityModifier(fromTime, toTime, fromVelocity, toVelocity, functionType) end

---@param fromTime number
---@param toTime number
---@param fromVelocity Vector3
---@param toVelocity Vector3
---@param function Ease
function Particles:setVelocityModifier(fromTime, toTime, fromVelocity, toVelocity, function) end


---@class ParticlesComponent
ParticlesComponent = {}


---@class PhysicsSystem
PhysicsSystem = {}

---@param index number
---@param groupsToInclude number
function PhysicsSystem:addBroadPhaseLayer3D(index, groupsToInclude) end

---@param index number
---@param groupsToInclude number
---@param groupsToExclude number
function PhysicsSystem:addBroadPhaseLayer3D(index, groupsToInclude, groupsToExclude) end

---@param entity Entity
function PhysicsSystem:createBody2D(entity) end

---@param entity Entity
function PhysicsSystem:createBody3D(entity) end

---@param body Body2DComponent
function PhysicsSystem:destroyBody2D(body) end

---@param body Body3DComponent
function PhysicsSystem:destroyBody3D(body) end

---@param joint Joint2DComponent
function PhysicsSystem:destroyJoint2D(joint) end

---@param joint Joint3DComponent
function PhysicsSystem:destroyJoint3D(joint) end

---@param body Body2DComponent
---@param index number
function PhysicsSystem:destroyShape2D(body, index) end

---@param body Body3DComponent
---@param index number
function PhysicsSystem:destroyShape3D(body, index) end

---@param entity Entity
---@return boolean
function PhysicsSystem:loadBody2D(entity) end

---@param entity Entity
---@return boolean
function PhysicsSystem:loadBody3D(entity) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param anchor Vector3
---@param twistAxis Vector3
---@return boolean
function PhysicsSystem:loadConeJoint3D(joint, bodyA, bodyB, anchor, twistAxis) end

---@param entity Entity
---@param joint Joint2DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param anchorA Vector2
---@param anchorB Vector2
---@param autoAnchors boolean
---@param rope boolean
---@return boolean
function PhysicsSystem:loadDistanceJoint2D(entity, joint, bodyA, bodyB, anchorA, anchorB, autoAnchors, rope) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param anchorA Vector3
---@param anchorB Vector3
---@param autoAnchors boolean
---@return boolean
function PhysicsSystem:loadDistanceJoint3D(joint, bodyA, bodyB, anchorA, anchorB, autoAnchors) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@return boolean
function PhysicsSystem:loadFixedJoint3D(joint, bodyA, bodyB) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param hingeA Entity
---@param hingeB Entity
---@param numTeethGearA number
---@param numTeethGearB number
---@return boolean
function PhysicsSystem:loadGearJoint3D(joint, bodyA, bodyB, hingeA, hingeB, numTeethGearA, numTeethGearB) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param anchor Vector3
---@param axis Vector3
---@param normal Vector3
---@return boolean
function PhysicsSystem:loadHingeJoint3D(joint, bodyA, bodyB, anchor, axis, normal) end

---@param entity Entity
---@param joint Joint2DComponent
---@param bodyA Entity
---@param bodyB Entity
---@return boolean
function PhysicsSystem:loadMotorJoint2D(entity, joint, bodyA, bodyB) end

---@param entity Entity
---@param joint Joint2DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param target Vector2
---@return boolean
function PhysicsSystem:loadMouseJoint2D(entity, joint, bodyA, bodyB, target) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param positions Vector3[]
---@param tangents Vector3[]
---@param normals Vector3[]
---@param pathPosition Vector3
---@param isLooping boolean
---@return boolean
function PhysicsSystem:loadPathJoint3D(joint, bodyA, bodyB, positions, tangents, normals, pathPosition, isLooping) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param anchor Vector3
---@return boolean
function PhysicsSystem:loadPointJoint3D(joint, bodyA, bodyB, anchor) end

---@param entity Entity
---@param joint Joint2DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param anchor Vector2
---@param axis Vector2
---@return boolean
function PhysicsSystem:loadPrismaticJoint2D(entity, joint, bodyA, bodyB, anchor, axis) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param sliderAxis Vector3
---@param limitsMin number
---@param limitsMax number
---@return boolean
function PhysicsSystem:loadPrismaticJoint3D(joint, bodyA, bodyB, sliderAxis, limitsMin, limitsMax) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param anchorA Vector3
---@param anchorB Vector3
---@param fixedPointA Vector3
---@param fixedPointB Vector3
---@return boolean
function PhysicsSystem:loadPulleyJoint3D(joint, bodyA, bodyB, anchorA, anchorB, fixedPointA, fixedPointB) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param hinge Entity
---@param slider Entity
---@param numTeethRack number
---@param numTeethGear number
---@param rackLength number
---@return boolean
function PhysicsSystem:loadRackAndPinionJoint3D(joint, bodyA, bodyB, hinge, slider, numTeethRack, numTeethGear, rackLength) end

---@param entity Entity
---@param joint Joint2DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param anchor Vector2
---@return boolean
function PhysicsSystem:loadRevoluteJoint2D(entity, joint, bodyA, bodyB, anchor) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param anchorA Vector3
---@param anchorB Vector3
---@param axisX Vector3
---@param axisY Vector3
---@return boolean
function PhysicsSystem:loadSixDOFJoint3D(joint, bodyA, bodyB, anchorA, anchorB, axisX, axisY) end

---@param joint Joint3DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param anchor Vector3
---@param twistAxis Vector3
---@param planeAxis Vector3
---@param normalHalfConeAngle number
---@param planeHalfConeAngle number
---@param twistMinAngle number
---@param twistMaxAngle number
---@return boolean
function PhysicsSystem:loadSwingTwistJoint3D(joint, bodyA, bodyB, anchor, twistAxis, planeAxis, normalHalfConeAngle, planeHalfConeAngle, twistMinAngle, twistMaxAngle) end

---@param entity Entity
---@param joint Joint2DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param anchor Vector2
---@return boolean
function PhysicsSystem:loadWeldJoint2D(entity, joint, bodyA, bodyB, anchor) end

---@param entity Entity
---@param joint Joint2DComponent
---@param bodyA Entity
---@param bodyB Entity
---@param anchor Vector2
---@param axis Vector2
---@return boolean
function PhysicsSystem:loadWheelJoint2D(entity, joint, bodyA, bodyB, anchor, axis) end

---@param entity Entity
function PhysicsSystem:removeBody2D(entity) end

---@param entity Entity
function PhysicsSystem:removeBody3D(entity) end

---@param gravity Vector3
function PhysicsSystem:setGravity(gravity) end

---@param x number
---@param y number
function PhysicsSystem:setGravity(x, y) end

---@param x number
---@param y number
---@param z number
function PhysicsSystem:setGravity(x, y, z) end

---@param gravity Vector2
function PhysicsSystem:setGravity2D(gravity) end

---@param x number
---@param y number
function PhysicsSystem:setGravity2D(x, y) end

---@param gravity Vector3
function PhysicsSystem:setGravity3D(gravity) end

---@param x number
---@param y number
---@param z number
function PhysicsSystem:setGravity3D(x, y, z) end


---@class Plane
---@field BOTH_SIDE any
---@field NEGATIVE_SIDE any
---@field NO_SIDE any
---@field POSITIVE_SIDE any
---@field Side any
Plane = {}

function Plane:Plane() end

function Plane:__eq() end

function Plane:__unm() end

---@param rkPoint Vector3
---@return number
function Plane:getDistance(rkPoint) end

---@param rkPoint Vector3
---@return Side
function Plane:getSide(rkPoint) end

---@param centre Vector3
---@param halfSize Vector3
---@return Side
function Plane:getSide(centre, halfSize) end

---@param rkBox AABB
---@return Side
function Plane:getSide(rkBox) end

---@param obb OBB
---@return Side
function Plane:getSide(obb) end

---@param arg1 any
---@return Plane
function Plane:normalize(arg1) end

---@return Plane
function Plane:normalized() end

---@param v Vector3
---@return Vector3
function Plane:projectVector(v) end

---@param rkPoint0 Vector3
---@param rkPoint1 Vector3
---@param rkPoint2 Vector3
function Plane:redefine(rkPoint0, rkPoint1, rkPoint2) end

---@param rkNormal Vector3
---@param rkPoint Vector3
function Plane:redefine(rkNormal, rkPoint) end

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

---@param point PointData
function Points:addPoint(point) end

---@param position Vector3
function Points:addPoint(position) end

---@param x number
---@param y number
---@param z number
function Points:addPoint(x, y, z) end

---@param position Vector3
---@param color Vector4
function Points:addPoint(position, color) end

---@param position Vector3
---@param color Vector4
---@param size number
function Points:addPoint(position, color, size) end

---@param position Vector3
---@param color Vector4
---@param size number
---@param rotation number
function Points:addPoint(position, color, size, rotation) end

---@param position Vector3
---@param color Vector4
---@param size number
---@param rotation number
---@param textureRect Rect
function Points:addPoint(position, color, size, rotation, textureRect) end

---@param id number
---@param name string
---@param rect Rect
function Points:addSpriteFrame(id, name, rect) end

---@param name string
---@param x number
---@param y number
---@param width number
---@param height number
function Points:addSpriteFrame(name, x, y, width, height) end

---@param x number
---@param y number
---@param width number
---@param height number
function Points:addSpriteFrame(x, y, width, height) end

---@param rect Rect
function Points:addSpriteFrame(rect) end

function Points:clearPoints() end

---@return number
function Points:getNumPoints() end

---@param index number
---@return PointData
function Points:getPoint(index) end

---@param name string
---@return Vector4
function Points:getShaderUniform(name) end

---@param index number
---@return boolean
function Points:isPointVisible(index) end

---@param index number
function Points:removePoint(index) end

---@param name string
---@return boolean
function Points:removeShaderUniform(name) end

---@param id number
function Points:removeSpriteFrame(id) end

---@param name string
function Points:removeSpriteFrame(name) end

---@param index number
---@param visible boolean
function Points:setPointVisible(index, visible) end

---@param name string
---@param value Vector4
function Points:setShaderUniform(name, value) end

---@param name string
---@param value Vector3
function Points:setShaderUniform(name, value) end

---@param name string
---@param value Vector2
function Points:setShaderUniform(name, value) end

---@param name string
---@param value number
function Points:setShaderUniform(name, value) end

---@param path string
function Points:setTexture(path) end

---@param id string
---@param data TextureData
function Points:setTexture(id, data) end

---@param framebuffer Framebuffer
function Points:setTexture(framebuffer) end

---@param index number
---@param point PointData
function Points:updatePoint(index, point) end

---@param index number
---@param position Vector3
function Points:updatePoint(index, position) end

---@param index number
---@param x number
---@param y number
---@param z number
function Points:updatePoint(index, x, y, z) end

---@param index number
---@param position Vector3
---@param color Vector4
function Points:updatePoint(index, position, color) end

---@param index number
---@param position Vector3
---@param color Vector4
---@param size number
function Points:updatePoint(index, position, color, size) end

---@param index number
---@param position Vector3
---@param color Vector4
---@param size number
---@param rotation number
function Points:updatePoint(index, position, color, size, rotation) end

---@param index number
---@param position Vector3
---@param color Vector4
---@param size number
---@param rotation number
---@param textureRect Rect
function Points:updatePoint(index, position, color, size, rotation, textureRect) end

function Points:updatePoints() end


---@class Polygon
---@field _base UILayout
Polygon = {}

---@param Scene any
function Polygon:Polygon(Scene) end

---@param vertex Vector3
function Polygon:addVertex(vertex) end

---@param x number
---@param y number
function Polygon:addVertex(x, y) end

---@return AABB
function Polygon:getAABB() end

---@param name string
---@return Vector4
function Polygon:getShaderUniform(name) end

---@return AABB
function Polygon:getWorldAABB() end

---@param name string
---@return boolean
function Polygon:removeShaderUniform(name) end

---@param color Vector4
function Polygon:setColor(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Polygon:setColor(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function Polygon:setColor(red, green, blue) end

---@param name string
---@param value Vector4
function Polygon:setShaderUniform(name, value) end

---@param name string
---@param value Vector3
function Polygon:setShaderUniform(name, value) end

---@param name string
---@param value Vector2
function Polygon:setShaderUniform(name, value) end

---@param name string
---@param value number
function Polygon:setShaderUniform(name, value) end

---@param path string
function Polygon:setTexture(path) end

---@param id string
---@param data TextureData
function Polygon:setTexture(id, data) end

---@param framebuffer Framebuffer
function Polygon:setTexture(framebuffer) end


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

---@return Image
function Progressbar:getFillObject() end

function Progressbar:getProgressbarComponent() end

---@param color Vector4
function Progressbar:setFillColor(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Progressbar:setFillColor(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function Progressbar:setFillColor(red, green, blue) end

---@param margin number
function Progressbar:setFillMargin(margin) end

---@param marginLeft number
---@param marginRight number
---@param marginTop number
---@param marginBottom number
function Progressbar:setFillMargin(marginLeft, marginRight, marginTop, marginBottom) end

---@param margin number
function Progressbar:setFillPatchMargin(margin) end

---@param marginLeft number
---@param marginRight number
---@param marginTop number
---@param marginBottom number
function Progressbar:setFillPatchMargin(marginLeft, marginRight, marginTop, marginBottom) end

---@param path string
function Progressbar:setFillTexture(path) end

---@param framebuffer Framebuffer
function Progressbar:setFillTexture(framebuffer) end


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

---@return string
function Quaternion:__tostring() end

function Quaternion:__unm() end

---@param rkQ Quaternion
---@return number
function Quaternion:dot(rkQ) end

---@return Quaternion
function Quaternion:exp() end

---@param angle number
function Quaternion:fromAngle(angle) end

---@param angle number
---@param rkAxis Vector3
function Quaternion:fromAngleAxis(angle, rkAxis) end

---@param akAxis Vector3
function Quaternion:fromAxes(akAxis) end

---@param xaxis Vector3
---@param yaxis Vector3
---@param zaxis Vector3
function Quaternion:fromAxes(xaxis, yaxis, zaxis) end

---@param xAngle number
---@param yAngle number
---@param zAngle number
---@param order RotationOrder
function Quaternion:fromEulerAngles(xAngle, yAngle, zAngle, order) end

---@param kRot Matrix3
---@return Quaternion
function Quaternion:fromRotationMatrix(kRot) end

---@param kRot Matrix4
---@return Quaternion
function Quaternion:fromRotationMatrix(kRot) end

---@param order RotationOrder
---@return Vector3
function Quaternion:getEulerAngles(order) end

---@return number
function Quaternion:getPitch() end

---@return number
function Quaternion:getRoll() end

---@return Matrix4
function Quaternion:getRotationMatrix() end

---@return number
function Quaternion:getYaw() end

---@return Quaternion
function Quaternion:inverse() end

---@return Quaternion
function Quaternion:log() end

---@return number
function Quaternion:norm() end

---@param arg1 any
---@return Quaternion
function Quaternion:normalize(arg1) end

---@param arg1 any
---@return number
function Quaternion:normalizeL(arg1) end

---@return Quaternion
function Quaternion:normalized() end

---@return Quaternion
function Quaternion:unitInverse() end

---@param arg1 any
---@return Vector3
function Quaternion:xAxis(arg1) end

---@param arg1 any
---@return Vector3
function Quaternion:yAxis(arg1) end

---@param arg1 any
---@return Vector3
function Quaternion:zAxis(arg1) end

---@param forward Vector3
---@return Quaternion
function Quaternion.lookRotation(forward) end

---@param forward Vector3
---@param up Vector3
---@return Quaternion
function Quaternion.lookRotation(forward, up) end

---@param fT number
---@param rkP Quaternion
---@param rkQ Quaternion
---@return Quaternion
function Quaternion.nlerp(fT, rkP, rkQ) end

---@param fT number
---@param rkP Quaternion
---@param rkQ Quaternion
---@param shortestPath boolean
---@return Quaternion
function Quaternion.nlerp(fT, rkP, rkQ, shortestPath) end

---@param t number
---@param q1 Quaternion
---@param q2 Quaternion
---@return Quaternion
function Quaternion.slerp(t, q1, q2) end

---@param t number
---@param q1 Quaternion
---@param q2 Quaternion
---@param shortestPath boolean
---@return Quaternion
function Quaternion.slerp(t, q1, q2, shortestPath) end

---@param fT number
---@param rkP Quaternion
---@param rkQ Quaternion
---@param iExtraSpins number
---@return Quaternion
function Quaternion.slerpExtraSpins(fT, rkP, rkQ, iExtraSpins) end

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

---@param distance number
---@return Vector3
function Ray:getPoint(distance) end

---@param plane Plane
---@return RayReturn
function Ray:intersects(plane) end

---@param box AABB
---@return RayReturn
function Ray:intersects(box) end

---@param obb OBB
---@return RayReturn
function Ray:intersects(obb) end

---@param sphere Sphere
---@return RayReturn
function Ray:intersects(sphere) end

---@param body Body2D
---@return RayReturn
function Ray:intersects(body) end

---@param body Body2D
---@param shape number
---@return RayReturn
function Ray:intersects(body, shape) end

---@param body Body3D
---@return RayReturn
function Ray:intersects(body) end

---@param body Body3D
---@param shape number
---@return RayReturn
function Ray:intersects(body, shape) end

---@param scene Scene
---@param raytest RayFilter
---@return RayReturn
function Ray:intersects(scene, raytest) end

---@param scene Scene
---@param raytest RayFilter
---@param onlyStatic boolean
---@return RayReturn
function Ray:intersects(scene, raytest, onlyStatic) end

---@param scene Scene
---@param raytest RayFilter
---@param categoryBits number
---@param maskBits number
---@return RayReturn
function Ray:intersects(scene, raytest, categoryBits, maskBits) end

---@param scene Scene
---@param raytest RayFilter
---@param onlyStatic boolean
---@param categoryBits number
---@param maskBits number
---@return RayReturn
function Ray:intersects(scene, raytest, onlyStatic, categoryBits, maskBits) end

---@param scene Scene
---@param raytest RayFilter
---@param ignoreEntity Entity
---@return RayReturn
function Ray:intersects(scene, raytest, ignoreEntity) end

---@param scene Scene
---@param raytest RayFilter
---@param ignoreEntities Entity[]
---@return RayReturn
function Ray:intersects(scene, raytest, ignoreEntities) end

---@param scene Scene
---@param raytest RayFilter
---@param onlyStatic boolean
---@param categoryBits number
---@param maskBits number
---@param ignoreEntity Entity
---@return RayReturn
function Ray:intersects(scene, raytest, onlyStatic, categoryBits, maskBits, ignoreEntity) end

---@param scene Scene
---@param raytest RayFilter
---@param onlyStatic boolean
---@param categoryBits number
---@param maskBits number
---@param ignoreEntities Entity[]
---@return RayReturn
function Ray:intersects(scene, raytest, onlyStatic, categoryBits, maskBits, ignoreEntities) end

---@param scene Scene
---@param broadPhaseLayer3D number
---@return RayReturn
function Ray:intersects(scene, broadPhaseLayer3D) end

---@param scene Scene
---@param broadPhaseLayer3D number
---@param categoryBits number
---@param maskBits number
---@return RayReturn
function Ray:intersects(scene, broadPhaseLayer3D, categoryBits, maskBits) end

---@param scene Scene
---@param broadPhaseLayer3D number
---@param ignoreEntity Entity
---@return RayReturn
function Ray:intersects(scene, broadPhaseLayer3D, ignoreEntity) end

---@param scene Scene
---@param broadPhaseLayer3D number
---@param ignoreEntities Entity[]
---@return RayReturn
function Ray:intersects(scene, broadPhaseLayer3D, ignoreEntities) end

---@param scene Scene
---@param broadPhaseLayer3D number
---@param categoryBits number
---@param maskBits number
---@param ignoreEntity Entity
---@return RayReturn
function Ray:intersects(scene, broadPhaseLayer3D, categoryBits, maskBits, ignoreEntity) end

---@param scene Scene
---@param broadPhaseLayer3D number
---@param categoryBits number
---@param maskBits number
---@param ignoreEntities Entity[]
---@return RayReturn
function Ray:intersects(scene, broadPhaseLayer3D, categoryBits, maskBits, ignoreEntities) end

---@param scene Scene
---@param raytest RayFilter
---@param onlyStatic boolean
---@param categoryBits number
---@param maskBits number
---@param ignoreEntities Entity[]
---@return any
function Ray:intersects(scene, raytest, onlyStatic, categoryBits, maskBits, ignoreEntities) end

Ray.NO_HIT = nil

---@class RayReturn
RayReturn = {}


---@class Rect
Rect = {}

function Rect:Rect() end

function Rect:__eq() end

---@return string
function Rect:__tostring() end

---@param point Vector2
---@return boolean
function Rect:contains(point) end

---@param rect Rect
---@return Rect
function Rect:fitOnRect(rect) end

---@return Vector4
function Rect:getVector() end

---@return boolean
function Rect:isNormalized() end

---@return boolean
function Rect:isZero() end

---@param x number
---@param y number
---@param width number
---@param height number
function Rect:setRect(x, y, width, height) end

---@param rect Rect
function Rect:setRect(rect) end


---@class ReflectionProbe
---@field _base Object
ReflectionProbe = {}

---@param Scene any
function ReflectionProbe:ReflectionProbe(Scene) end

function ReflectionProbe:refresh() end

---@param boxOffset Vector3
function ReflectionProbe:setBoxOffset(boxOffset) end

---@param x number
---@param y number
---@param z number
function ReflectionProbe:setBoxOffset(x, y, z) end

---@param boxSize Vector3
function ReflectionProbe:setBoxSize(boxSize) end

---@param x number
---@param y number
---@param z number
function ReflectionProbe:setBoxSize(x, y, z) end

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

---@return boolean
function Scene:canReceiveUIEvents() end

function Scene:destroy() end

function Scene:draw() end

---@param self Scene
---@param L lua_State
function Scene:getActionSystem(self, L) end

---@return Vector3
function Scene:getAmbientLight2DColorLinear() end

---@param self Scene
---@param L lua_State
function Scene:getAudioSystem(self, L) end

---@return Vector3
function Scene:getGlobalIlluminationColorLinear() end

---@param self Scene
---@param L lua_State
function Scene:getMeshSystem(self, L) end

---@param self Scene
---@param L lua_State
function Scene:getPhysicsSystem(self, L) end

---@param index number
---@param name string
---@return Vector4
function Scene:getPostProcessUniform(index, name) end

---@param self Scene
---@param L lua_State
function Scene:getRenderSystem(self, L) end

---@param self Scene
---@param L lua_State
function Scene:getUISystem(self, L) end

---@param index number
---@return boolean
function Scene:isPostProcessPassEnabled(index) end

function Scene:load() end

---@param index number
---@param name string
---@return boolean
function Scene:removePostProcessUniform(index, name) end

---@param intensity number
---@param color Vector3
function Scene:setAmbientLight2D(intensity, color) end

---@param intensity number
function Scene:setAmbientLight2D(intensity) end

---@param color Vector3
function Scene:setAmbientLight2D(color) end

---@param color Vector4
function Scene:setBackgroundColor(color) end

---@param red number
---@param green number
---@param blue number
function Scene:setBackgroundColor(red, green, blue) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Scene:setBackgroundColor(red, green, blue, alpha) end

---@param camera Camera
function Scene:setCamera(camera) end

---@param camera Entity
function Scene:setCamera(camera) end

---@param width number
---@param height number
function Scene:setFixedResolutionSize(width, height) end

---@param intensity number
---@param color Vector3
function Scene:setGlobalIllumination(intensity, color) end

---@param intensity number
function Scene:setGlobalIllumination(intensity) end

---@param color Vector3
function Scene:setGlobalIllumination(color) end

---@param gravity Vector2
function Scene:setGravity2D(gravity) end

---@param x number
---@param y number
function Scene:setGravity2D(x, y) end

---@param gravity Vector3
function Scene:setGravity3D(gravity) end

---@param x number
---@param y number
---@param z number
function Scene:setGravity3D(x, y, z) end

---@param index number
---@param enabled boolean
function Scene:setPostProcessPassEnabled(index, enabled) end

---@param index number
---@param name string
---@param value Vector4
function Scene:setPostProcessUniform(index, name, value) end

---@param index number
---@param name string
---@param value Vector3
function Scene:setPostProcessUniform(index, name, value) end

---@param index number
---@param name string
---@param value Vector2
function Scene:setPostProcessUniform(index, name, value) end

---@param index number
---@param name string
---@param value number
function Scene:setPostProcessUniform(index, name, value) end

---@param dt number
function Scene:update(dt) end

function Scene:updateCameraSize() end


---@class SceneManager
---@field currentSceneId any
---@field currentSceneName any
---@field loadPending any
---@field sceneCount any
SceneManager = {}

---@param id number
---@return boolean
function SceneManager.addChildScene(id) end

---@param name string
---@return boolean
function SceneManager.addChildScene(name) end

function SceneManager.clearAll() end

---@param name string
---@return number
function SceneManager.getSceneId(name) end

---@param id number
---@return string
function SceneManager.getSceneName(id) end

---@return string[]
function SceneManager.getSceneNames() end

---@param name string
---@return boolean
function SceneManager.loadScene(name) end

---@param id number
---@return boolean
function SceneManager.loadScene(id) end

function SceneManager.registerScene() end

---@param id number
---@return boolean
function SceneManager.removeChildScene(id) end

---@param name string
---@return boolean
function SceneManager.removeChildScene(name) end

SceneManager.currentSceneId = nil
SceneManager.currentSceneName = nil
SceneManager.loadPending = nil
SceneManager.sceneCount = nil

---@class Scrollbar
---@field _base Image
Scrollbar = {}

---@param Scene any
function Scrollbar:Scrollbar(Scene) end

---@return Image
function Scrollbar:getBarObject() end

function Scrollbar:getScrollbarComponent() end

---@param color Vector4
function Scrollbar:setBarColor(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Scrollbar:setBarColor(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function Scrollbar:setBarColor(red, green, blue) end

---@param margin number
function Scrollbar:setBarMargin(margin) end

---@param marginLeft number
---@param marginRight number
---@param marginTop number
---@param marginBottom number
function Scrollbar:setBarMargin(marginLeft, marginRight, marginTop, marginBottom) end

---@param margin number
function Scrollbar:setBarPatchMargin(margin) end

---@param marginLeft number
---@param marginRight number
---@param marginTop number
---@param marginBottom number
function Scrollbar:setBarPatchMargin(marginLeft, marginRight, marginTop, marginBottom) end

---@param path string
function Scrollbar:setBarTexture(path) end

---@param framebuffer Framebuffer
function Scrollbar:setBarTexture(framebuffer) end


---@class ScrollbarComponent
ScrollbarComponent = {}


---@class Shape
---@field _base Mesh
Shape = {}

---@param Scene any
function Shape:Shape(Scene) end

---@param width number
---@param height number
---@param depth number
function Shape:createBox(width, height, depth) end

---@param width number
---@param height number
---@param depth number
---@param tiles number
function Shape:createBox(width, height, depth, tiles) end

---@param radius number
---@param height number
function Shape:createCapsule(radius, height) end

---@param baseRadius number
---@param topRadius number
---@param height number
function Shape:createCapsule(baseRadius, topRadius, height) end

---@param radius number
---@param height number
---@param slices number
---@param stacks number
function Shape:createCapsule(radius, height, slices, stacks) end

---@param baseRadius number
---@param topRadius number
---@param height number
---@param slices number
---@param stacks number
function Shape:createCapsule(baseRadius, topRadius, height, slices, stacks) end

---@param radius number
---@param height number
function Shape:createCylinder(radius, height) end

---@param baseRadius number
---@param topRadius number
---@param height number
function Shape:createCylinder(baseRadius, topRadius, height) end

---@param radius number
---@param height number
---@param slices number
---@param stacks number
function Shape:createCylinder(radius, height, slices, stacks) end

---@param baseRadius number
---@param topRadius number
---@param height number
---@param slices number
---@param stacks number
function Shape:createCylinder(baseRadius, topRadius, height, slices, stacks) end

---@param width number
---@param depth number
function Shape:createPlane(width, depth) end

---@param width number
---@param depth number
---@param tiles number
function Shape:createPlane(width, depth, tiles) end

---@param radius number
function Shape:createSphere(radius) end

---@param radius number
---@param slices number
---@param stacks number
function Shape:createSphere(radius, slices, stacks) end

---@param radius number
---@param ringRadius number
function Shape:createTorus(radius, ringRadius) end

---@param radius number
---@param ringRadius number
---@param sides number
---@param rings number
function Shape:createTorus(radius, ringRadius, sides, rings) end

---@param width number
---@param height number
function Shape:createWall(width, height) end

---@param width number
---@param height number
---@param tiles number
function Shape:createWall(width, height, tiles) end


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

---@param color Vector4
function SkyBox:setColor(color) end

---@param r number
---@param g number
---@param b number
function SkyBox:setColor(r, g, b) end

---@param r number
---@param g number
---@param b number
---@param a number
function SkyBox:setColor(r, g, b, a) end

---@param name string
---@param value Vector4
function SkyBox:setShaderUniform(name, value) end

---@param name string
---@param value Vector3
function SkyBox:setShaderUniform(name, value) end

---@param name string
---@param value Vector2
function SkyBox:setShaderUniform(name, value) end

---@param name string
---@param value number
function SkyBox:setShaderUniform(name, value) end

---@param texture string
function SkyBox:setTexture(texture) end

---@param texture string
function SkyBox:setTextureNegativeX(texture) end

---@param texture string
function SkyBox:setTextureNegativeY(texture) end

---@param texture string
function SkyBox:setTextureNegativeZ(texture) end

---@param texture string
function SkyBox:setTexturePositiveX(texture) end

---@param texture string
function SkyBox:setTexturePositiveY(texture) end

---@param texture string
function SkyBox:setTexturePositiveZ(texture) end

---@param id string
---@param texturePositiveX TextureData
---@param textureNegativeX TextureData
---@param texturePositiveY TextureData
---@param textureNegativeY TextureData
---@param texturePositiveZ TextureData
---@param textureNegativeZ TextureData
function SkyBox:setTextures(id, texturePositiveX, textureNegativeX, texturePositiveY, textureNegativeY, texturePositiveZ, textureNegativeZ) end

---@param texturePositiveX string
---@param textureNegativeX string
---@param texturePositiveY string
---@param textureNegativeY string
---@param texturePositiveZ string
---@param textureNegativeZ string
function SkyBox:setTextures(texturePositiveX, textureNegativeX, texturePositiveY, textureNegativeY, texturePositiveZ, textureNegativeZ) end


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

---@param point Vector3
---@return boolean
function Sphere:contains(point) end

---@param other Sphere
---@return boolean
function Sphere:intersects(other) end

---@param aabb AABB
---@return boolean
function Sphere:intersects(aabb) end

---@param obb OBB
---@return boolean
function Sphere:intersects(obb) end

---@param plane Plane
---@return boolean
function Sphere:intersects(plane) end

---@param v Vector3
---@return boolean
function Sphere:intersects(v) end

---@param other Sphere
function Sphere:merge(other) end

---@return number
function Sphere:surfaceArea() end

---@return string
function Sphere:toString() end

---@return number
function Sphere:volume() end


---@class Sprite
---@field _base Mesh
Sprite = {}

---@param Scene any
function Sprite:Sprite(Scene) end

---@param id number
---@param name string
---@param rect Rect
function Sprite:addFrame(id, name, rect) end

---@param name string
---@param x number
---@param y number
---@param width number
---@param height number
function Sprite:addFrame(name, x, y, width, height) end

---@param x number
---@param y number
---@param width number
---@param height number
function Sprite:addFrame(x, y, width, height) end

---@param rect Rect
function Sprite:addFrame(rect) end

---@return Occluder2D
function Sprite:getOccluder2D() end

function Sprite:pauseAnimation() end

---@param id number
function Sprite:removeFrame(id) end

---@param name string
function Sprite:removeFrame(name) end

function Sprite:removeOccluder2D() end

---@param id number
function Sprite:setFrame(id) end

---@param name string
function Sprite:setFrame(name) end

---@param width number
---@param height number
function Sprite:setSize(width, height) end

---@param x number
---@param y number
---@param width number
---@param height number
function Sprite:setTextureRect(x, y, width, height) end

---@param textureRect Rect
function Sprite:setTextureRect(textureRect) end

---@param frames number[]
---@param framesTime number[]
---@param loop boolean
function Sprite:startAnimation(frames, framesTime, loop) end

---@param startFrame number
---@param endFrame number
---@param interval number
---@param loop boolean
function Sprite:startAnimation(startFrame, endFrame, interval, loop) end

---@param name string
---@param interval number
---@param loop boolean
function Sprite:startAnimation(name, interval, loop) end

function Sprite:stopAnimation() end


---@class SpriteAnimation
---@field _base Action
SpriteAnimation = {}

---@param Scene any
function SpriteAnimation:SpriteAnimation(Scene) end

---@param frames number[]
---@param framesTime number[]
---@param loop boolean
function SpriteAnimation:setAnimation(frames, framesTime, loop) end

---@param startFrame number
---@param endFrame number
---@param interval number
---@param loop boolean
function SpriteAnimation:setAnimation(startFrame, endFrame, interval, loop) end


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

---@param framebuffer Framebuffer
function Terrain:setBlendMap(framebuffer) end

---@param index number
---@param path string
function Terrain:setBlendMap(index, path) end

---@param path string
function Terrain:setBlendMapIndex(path) end

---@param framebuffer Framebuffer
function Terrain:setBlendMapIndex(framebuffer) end

---@param index number
---@param path string
function Terrain:setBlendMapIndex(index, path) end

---@param path string
function Terrain:setHeightMap(path) end

---@param framebuffer Framebuffer
function Terrain:setHeightMap(framebuffer) end

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

---@return number
function Text:getAscent() end

---@param index number
---@return Vector2
function Text:getCharPosition(index) end

---@param codepoint number
---@return number
function Text:getCharWidth(codepoint) end

---@return number
function Text:getDescent() end

---@return string
function Text:getFont() end

---@param index number
---@return string
function Text:getFont(index) end

---@return number
function Text:getLineGap() end

---@return number
function Text:getLineHeight() end

---@return number
function Text:getNumChars() end

---@param name string
---@return Vector4
function Text:getShaderUniform(name) end

---@return AABB
function Text:getWorldAABB() end

---@param name string
---@return boolean
function Text:removeShaderUniform(name) end

---@param color Vector4
function Text:setColor(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function Text:setColor(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function Text:setColor(red, green, blue) end

---@param fixedSize boolean
function Text:setFixedSize(fixedSize) end

---@param font string
function Text:setFont(font) end

---@param index number
---@param font string
function Text:setFont(index, font) end

---@param name string
---@param value Vector4
function Text:setShaderUniform(name, value) end

---@param name string
---@param value Vector3
function Text:setShaderUniform(name, value) end

---@param name string
---@param value Vector2
function Text:setShaderUniform(name, value) end

---@param name string
---@param value number
function Text:setShaderUniform(name, value) end


---@class TextEdit
---@field _base Image
TextEdit = {}

---@param Scene any
function TextEdit:TextEdit(Scene) end

---@return number
function TextEdit:getSelectionAnchor() end

---@return number
function TextEdit:getSelectionFocus() end

---@return Polygon
function TextEdit:getSelectionObject() end

function TextEdit:getTextEditComponent() end

---@return Text
function TextEdit:getTextObject() end

---@param color Vector4
function TextEdit:setCursorColor(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function TextEdit:setCursorColor(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function TextEdit:setCursorColor(red, green, blue) end

---@param color Vector4
function TextEdit:setPlaceholderColor(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function TextEdit:setPlaceholderColor(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function TextEdit:setPlaceholderColor(red, green, blue) end

---@param anchor number
---@param focus number
function TextEdit:setSelection(anchor, focus) end

---@param color Vector4
function TextEdit:setSelectionColor(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function TextEdit:setSelectionColor(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function TextEdit:setSelectionColor(red, green, blue) end

---@param color Vector4
function TextEdit:setTextColor(color) end

---@param red number
---@param green number
---@param blue number
---@param alpha number
function TextEdit:setTextColor(red, green, blue, alpha) end

---@param red number
---@param green number
---@param blue number
function TextEdit:setTextColor(red, green, blue) end


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

function ThreadPoolManager.initialize() end

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

---@param id number
---@param name string
---@param texture string
---@param texFilter TextureFilter
---@param rect Rect
function Tilemap:addRect(id, name, texture, texFilter, rect) end

---@param id number
---@param name string
---@param texture string
---@param rect Rect
function Tilemap:addRect(id, name, texture, rect) end

---@param id number
---@param name string
---@param rect Rect
function Tilemap:addRect(id, name, rect) end

---@param name string
---@param x number
---@param y number
---@param width number
---@param height number
function Tilemap:addRect(name, x, y, width, height) end

---@param x number
---@param y number
---@param width number
---@param height number
function Tilemap:addRect(x, y, width, height) end

---@param rect Rect
function Tilemap:addRect(rect) end

---@param id number
---@param name string
---@param rectId number
---@param position Vector2
---@param width number
---@param height number
function Tilemap:addTile(id, name, rectId, position, width, height) end

---@param name string
---@param rectId number
---@param position Vector2
---@param width number
---@param height number
function Tilemap:addTile(name, rectId, position, width, height) end

---@param rectId number
---@param position Vector2
---@param width number
---@param height number
function Tilemap:addTile(rectId, position, width, height) end

---@param name string
---@param rectString string
---@param position Vector2
---@param width number
---@param height number
function Tilemap:addTile(name, rectString, position, width, height) end

---@param rectString string
---@param position Vector2
---@param width number
---@param height number
function Tilemap:addTile(rectString, position, width, height) end

function Tilemap:clearAll() end

function Tilemap:clearRects() end

function Tilemap:clearTiles() end

---@param name string
---@return number
function Tilemap:findRectByString(name) end

---@param name string
---@return number
function Tilemap:findTileByString(name) end

---@return number
function Tilemap:getHeight() end

---@param id number
---@return TileRectData
function Tilemap:getRect(id) end

---@param name string
---@return TileRectData
function Tilemap:getRect(name) end

---@param id number
---@return TileData
function Tilemap:getTile(id) end

---@param name string
---@return TileData
function Tilemap:getTile(name) end

---@return number
function Tilemap:getWidth() end

---@param id number
function Tilemap:removeRect(id) end

---@param name string
function Tilemap:removeRect(name) end

---@param id number
function Tilemap:removeTile(id) end

---@param name string
function Tilemap:removeTile(name) end


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

---@param arg1 any
---@return any
function UserSettings.getBoolForKey(arg1) end

---@param arg1 any
---@param defaultValue boolean
---@return boolean
function UserSettings.getBoolForKey(arg1, defaultValue) end

---@param arg1 any
---@return Data
function UserSettings.getDataForKey(arg1) end

---@param arg1 any
---@param defaultValue Data
---@return Data
function UserSettings.getDataForKey(arg1, defaultValue) end

---@param arg1 any
---@return number
function UserSettings.getDoubleForKey(arg1) end

---@param arg1 any
---@param defaultValue number
---@return number
function UserSettings.getDoubleForKey(arg1, defaultValue) end

---@param arg1 any
---@return number
function UserSettings.getFloatForKey(arg1) end

---@param arg1 any
---@param defaultValue number
---@return number
function UserSettings.getFloatForKey(arg1, defaultValue) end

---@param arg1 any
---@return number
function UserSettings.getIntegerForKey(arg1) end

---@param arg1 any
---@param defaultValue number
---@return number
function UserSettings.getIntegerForKey(arg1, defaultValue) end

---@param arg1 any
---@return number
function UserSettings.getLongForKey(arg1) end

---@param arg1 any
---@param defaultValue number
---@return number
function UserSettings.getLongForKey(arg1, defaultValue) end

---@param arg1 any
---@return string
function UserSettings.getStringForKey(arg1) end

---@param arg1 any
---@param defaultValue string
---@return string
function UserSettings.getStringForKey(arg1, defaultValue) end

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

---@return string
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

---@return string
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

---@return string
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
