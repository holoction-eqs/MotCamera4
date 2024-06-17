.class public final Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CHANGE_NEW_INTENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CLOSE_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_TEARDOWN_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_FOR_TOP_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_FOR_VIDEO_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_MCF_INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CHANGE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CHANGE_NEW_INTENT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_NEW_INTENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TEARDOWN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TEARDOWN_WAIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->OPEN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_MCF_INIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_MCF_INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SCROLL:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MEMORY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_VIDEO_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_SURFACES:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SETUP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_STREAMING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET_REPEATING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UI_COMPONENT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE_SHOW_UI:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->HIDE_MODE_UI:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PERMISSIONS_CHECK:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PERMISSIONS_EXPLAIN:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CANNOT_SWITCH:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_RESUME_ACTIVITY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_TOP_ACTIVITY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_TOP_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public static getEditSlider(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 6

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    const-string v5, "HISTORY_STATE"

    invoke-direct {v2, v3, v5, p0, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object p0, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    return-object p0
.end method

.method public static getFallbackMode(ILjava/util/List;Z)I
    .locals 3

    const/16 v0, 0x12

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    move p0, v0

    goto :goto_2

    :cond_1
    if-ne p0, v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    move p0, v1

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x22

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x1f

    const/16 v1, 0x18

    if-ne p0, v1, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    if-ne p0, v0, :cond_6

    if-nez p2, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    const/16 p2, 0x9

    const/4 v0, 0x0

    if-eq p0, p2, :cond_0

    const/4 p2, 0x2

    if-ne p0, p2, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_8
    :goto_2
    return p0
.end method

.method public static getHDR10SwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "HDR10_SWITCH_CASE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    return-object p0
.end method

.method public static getInitListenerTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 5

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v3, "MCF_INIT"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    return-object v1
.end method

.method public static getLaunchModeUiEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    return-object v1
.end method

.method public static getLeftPageShowModeUi()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 5

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-direct {v1, v3, v2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    return-object v1
.end method

.method public static getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions(Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    return-object v0
.end method

.method public static getMonoSwitchEntryTransitions(Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 5

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    .line 3
    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    .line 4
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v2, 0x1

    const/16 v3, 0x15

    invoke-direct {v1, v3, v2}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>()V

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    .line 18
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    .line 19
    iput-object p0, v0, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    .line 20
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    return-object p0
.end method

.method public static getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "SWITCH_CASE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    return-object p0
.end method

.method public static getSwitchDirection(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "MODE_DIRECTION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    return-object p0
.end method

.method public static getSwitchEntryTransitions()Ljava/util/ArrayList;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA10;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/16 v6, 0x19

    filled-new-array {v6}, [I

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x2

    invoke-direct {v4, v6, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>([III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA6;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v4, v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/4 v9, 0x5

    invoke-direct {v4, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v11, 0x6

    invoke-direct {v4, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v4, v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v4, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v4, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v4, 0xb

    const/4 v7, 0x1

    invoke-direct {v3, v4, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA2;)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA2;)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VOICE_ASSISTANT_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v2, v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSwitchModeEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;
    .locals 5

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    filled-new-array {v3}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>(Z[Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    return-object v1
.end method

.method public static getUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/UseCase;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "USE_CASE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/UseCase;

    return-object p0
.end method

.method public static isSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)Z
    .locals 0

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;)Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "USE_CASE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs isUseCaseAny(Lcom/motorola/camera/fsm/camera/FsmContext;[Lcom/motorola/camera/fsm/camera/UseCase;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "USE_CASE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p0, p1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p0

    return p0
.end method

.method public static varargs isUseCaseAny(Lcom/motorola/camera/fsm/camera/UseCase;[Lcom/motorola/camera/fsm/camera/UseCase;)Z
    .locals 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-ne v3, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isVoiceAssistantSwitch(Lcom/motorola/camera/fsm/camera/FsmContext;)Z
    .locals 5

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "CAPTURE_TRIGGER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_3

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne p0, v2, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v4

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :cond_3
    :goto_2
    return v3
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 44

    move-object/from16 v0, p1

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitAfterFireChange(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchModeEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getLaunchModeUiEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v7, 0x16

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v7, 0xd

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getCloseAppTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v8, "LOADING_COMPLETE"

    const/4 v9, 0x1

    invoke-direct {v7, v3, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>()V

    invoke-virtual {v2, v8}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v12, "EVENT_TRIGGER"

    invoke-direct {v10, v11, v12, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v10, 0x2

    invoke-direct {v7, v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->NEW_INTENT_REQUEST:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v6, v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCROLL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v6, v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v7, v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v7, v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_MENU_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA20;)V

    invoke-virtual {v6, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v6, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_HIDE_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->HIDE_MENU_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/4 v15, 0x5

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v6, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    invoke-direct {v13, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(Z)V

    invoke-virtual {v6, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v6, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v6, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 p0, v13

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v6, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v15, 0x1

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(Z)V

    invoke-virtual {v6, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v6, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v6, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v6, v13}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    move-object/from16 v16, v9

    const/16 v9, 0x8

    invoke-direct {v15, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v6, v15}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    move-object/from16 v17, v14

    const/4 v14, 0x0

    invoke-direct {v15, v14}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA17;)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v15, v14}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA19;)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/16 v15, 0x15

    move-object/from16 v18, v12

    const/4 v12, 0x1

    invoke-direct {v14, v15, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v12}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v9

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHECK_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v9, v14}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v19, v10

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    sget-object v20, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    move-object/from16 v21, v8

    filled-new-array/range {v20 .. v20}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp$$ExternalSynthetic$IA0;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v8, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v9, v8}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v8

    invoke-static {v2, v8, v12, v14}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v20 .. v20}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v15

    invoke-direct {v10, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v15, "MCF_INIT"

    move-object/from16 v22, v7

    const/4 v7, 0x1

    move-object/from16 v23, v13

    const/4 v13, 0x0

    invoke-direct {v10, v3, v15, v7, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v8, v7}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v7, v13}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v20 .. v20}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v9, "MCF_INIT_PENDING"

    const/4 v10, 0x1

    invoke-direct {v8, v3, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v7, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v24, v5

    const-string v5, "MCF_PROCESSING"

    move-object/from16 v25, v4

    const/4 v4, 0x0

    invoke-direct {v13, v11, v5, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v26, v6

    const-string v6, "HAL_PROCESSING"

    invoke-direct {v13, v11, v6, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    sget-object v13, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    move-object/from16 v35, v8

    sget-object v8, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v36, Lcom/motorola/camera/fsm/camera/UseCase;->MONO_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    move-object/from16 v37, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_CHANGE:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v38, Lcom/motorola/camera/fsm/camera/UseCase;->CONTROL_PANEL_REOPEN:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->VIDEO_RESTART:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v39, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    sget-object v40, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_AND_MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    move-object/from16 v27, v13

    move-object/from16 v28, v8

    move-object/from16 v29, v36

    move-object/from16 v30, v1

    move-object/from16 v31, v38

    move-object/from16 v32, v0

    move-object/from16 v33, v39

    move-object/from16 v34, v40

    move-object/from16 v41, v15

    filled-new-array/range {v27 .. v34}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v15

    invoke-direct {v4, v15}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v4, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_TEARDOWN_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v4, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v42, v3

    const/4 v3, 0x0

    move-object/from16 v43, v9

    const/4 v9, 0x1

    invoke-direct {v15, v11, v5, v9, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v27 .. v34}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v3, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v3}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    invoke-static {v3, v12, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x0

    const/4 v15, 0x1

    invoke-direct {v9, v11, v6, v15, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v27 .. v34}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v6}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v3, v4, v14}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v20 .. v20}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x1

    const/4 v15, 0x0

    move-object/from16 v27, v0

    move-object/from16 v33, v4

    move-object/from16 v0, v42

    move-object/from16 v4, v43

    invoke-direct {v9, v0, v4, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v6, v41

    invoke-direct {v4, v0, v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, v27

    invoke-virtual {v3, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v7, v37

    invoke-virtual {v2, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_PROCESSING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v10, v35

    invoke-virtual {v9, v10}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v0, 0x15

    invoke-direct {v15, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v9, v15}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v0, v9, v10}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v9

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v6, 0x0

    invoke-direct {v15, v11, v5, v6, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v15, 0x3

    invoke-direct {v5, v15, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SCENE_UPDATE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v10, 0x2

    invoke-direct {v9, v10, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v2, v9}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;-><init>()V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v34, v5

    const-string v5, "CLOSE_ON_STOP"

    move-object/from16 v35, v6

    const/4 v6, 0x0

    move-object/from16 v37, v12

    const/4 v12, 0x1

    invoke-direct {v15, v11, v5, v12, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v15}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CLOSE_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    invoke-direct {v15, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(I)V

    invoke-virtual {v2, v15}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v2, v14}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array {v1, v4}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v1, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-static {v1, v14}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array {v8}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-static {v1, v9, v14}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array {v8}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA5;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    move-object/from16 v27, v13

    move-object/from16 v28, v36

    move-object/from16 v29, v39

    move-object/from16 v30, v8

    move-object/from16 v31, v40

    move-object/from16 v32, v38

    filled-new-array/range {v27 .. v32}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v9, 0x1

    invoke-direct {v6, v11, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v15, 0x2

    invoke-direct {v6, v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_DISCONNECTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    invoke-direct {v6, v11, v5, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v6, 0x13

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA3;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA18;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA4;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCloseCameraRunnable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_CAMERA_CALLED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_OPEN_CAMERA_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array {v13}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_CAMERA_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v14}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA4;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v6, 0xd

    invoke-direct {v1, v6}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_REQUIRED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_REQUEST_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v28, v5

    const/16 v5, 0xb

    move-object/from16 v29, v6

    const/4 v6, 0x1

    invoke-direct {v13, v5, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v13, 0xd

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_GRANTED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_TONE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    move-object/from16 v30, v9

    const/4 v9, 0x0

    invoke-direct {v15, v5, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v9, 0xd

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v5, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_PREPARE_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v9, 0xa

    const/4 v13, 0x0

    invoke-direct {v5, v9, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_RESUME_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    move-object/from16 v31, v2

    const/4 v2, 0x1

    invoke-direct {v15, v9, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v9, 0xc

    const/4 v15, 0x0

    invoke-direct {v2, v9, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v2, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_VIDEO_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v13, 0x1

    invoke-direct {v9, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    move-object/from16 v32, v10

    const/16 v10, 0xa

    invoke-direct {v15, v10, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v15, 0xc

    invoke-direct {v10, v15, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v5, 0x10

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v5, 0x6

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->exitCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_NEW_INTENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v13, 0x4

    invoke-direct {v10, v13}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(I)V

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v10, v33

    invoke-virtual {v1, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    move-object/from16 v36, v8

    move-object/from16 v33, v11

    move-object/from16 v8, v41

    move-object/from16 v11, v42

    invoke-direct {v13, v11, v8, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_FOR_TOP_ACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v15, 0x11

    invoke-direct {v13, v15}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v13

    sget-object v15, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_CAMERA_TOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v13, v15}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v13, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v13}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v13, 0x12

    invoke-direct {v9, v13}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v9, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v9}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v13, 0x1

    invoke-direct {v9, v11, v8, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v5, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_RESULTS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v5, v14}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v12, 0xb

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/16 v12, 0x9

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v9}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PERMISSION_DENIED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_PRC_EXPLAIN_PERMISSIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v5, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v13, 0x0

    const/16 v14, 0xa

    invoke-direct {v12, v14, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v5, v12}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v5, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA5;)V

    invoke-virtual {v5, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v14, 0x1

    const/16 v15, 0xa

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v14, 0x0

    const/16 v15, 0xc

    invoke-direct {v13, v15, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v5, v2}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v15, "RECORDING_START"

    const/4 v11, 0x0

    invoke-direct {v13, v14, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    move-object/from16 v38, v10

    const/4 v10, 0x1

    invoke-direct {v13, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA5;)V

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v12, 0x1

    const/16 v13, 0xa

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v13, 0xc

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v11}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v5, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    const/4 v11, 0x0

    invoke-direct {v10, v14, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    invoke-direct {v10, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA5;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeOpenCameraRunnable;-><init>()V

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TORCH_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v4, v8}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->OPEN_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v26

    invoke-virtual {v4, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    invoke-direct {v10, v11}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA14;)V

    invoke-virtual {v4, v10}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v12, v11}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA1;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v12, v11}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA8;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v12, 0x6

    move-object/from16 v13, v36

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_MCF_INIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v4, v10}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v15, "CLOSE_AFTER_OPEN"

    move-object/from16 v26, v5

    const/4 v5, 0x0

    move-object/from16 v36, v14

    move-object/from16 v14, v33

    invoke-direct {v12, v14, v15, v5, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v20 .. v20}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v12

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v12, 0x0

    invoke-direct {v5, v12}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA0;)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v5, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-static {v0, v4, v8, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v14, v15, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    move-object/from16 v33, v13

    const/16 v13, 0xc

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v11}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-static {v0, v4, v8, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v11, v14, v15, v12, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v12, 0xc

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v11}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;

    const/4 v11, 0x0

    invoke-direct {v5, v11, v13}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates$VideoStabilizationSetupRunnable;-><init>(ZZ)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v5, v32

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    invoke-direct {v8, v14, v15, v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v8}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v8, v14, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v8}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v11}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v12, v14, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v12, v31

    invoke-virtual {v4, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v11}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    move-object/from16 v31, v9

    const/4 v9, 0x1

    invoke-direct {v13, v14, v15, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v13, 0x2

    move-object/from16 v32, v10

    move-object/from16 v10, v30

    invoke-direct {v9, v10, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->WAIT_TOP_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v4, v1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v4, v25

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-direct {v9, v14, v15, v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v9, v14, v15, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getInitListenerTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeWaitForMediaVolumesRunnable;-><init>()V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v11, 0x0

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA14;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA10;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v11, 0x1a

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->entryCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v9, 0x19

    invoke-direct {v1, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v11, v29

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REQ_PERMISSIONS:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v13, 0x14

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    invoke-direct {v11, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_PREVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v11, "OPEN_AFTER_CLOSE"

    const/4 v13, 0x0

    invoke-direct {v9, v14, v11, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SURFACES_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v13, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v13}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v29, v15

    const/4 v15, 0x0

    invoke-direct {v4, v14, v11, v15, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-static {v0, v1, v9, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v4, v14, v11, v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v15}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v4, v14, v11, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v15, 0x19

    invoke-direct {v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v15, 0x0

    invoke-direct {v4, v14, v11, v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1, v15}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v9, v14, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v9, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-static {v0, v1, v12, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v9, 0x0

    invoke-direct {v4, v14, v11, v9, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v15, 0xd

    invoke-direct {v9, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v15, 0x2

    invoke-direct {v9, v10, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v4, v28

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v15, 0x1

    invoke-direct {v9, v14, v11, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v9, v38

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v28, v8

    const/4 v8, 0x0

    invoke-direct {v15, v14, v11, v8, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    move-object/from16 v30, v7

    const/16 v7, 0xc

    invoke-direct {v15, v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v7, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-static {v0, v1, v9, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v14, v11, v7, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v7, 0x1

    const/16 v8, 0xc

    invoke-direct {v6, v8, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v6, 0x0

    invoke-direct {v2, v14, v11, v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v7, v14, v11, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v7, 0x2

    invoke-direct {v6, v10, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-static {v0, v1, v12, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v6, 0x0

    invoke-direct {v2, v14, v11, v6, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v6, 0x2

    invoke-direct {v2, v10, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v4, 0x1

    invoke-direct {v2, v14, v11, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA11;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    move-object/from16 v4, v37

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v8}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;-><init>()V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v9, 0x0

    const/16 v11, 0x15

    invoke-direct {v8, v11, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v31

    invoke-virtual {v2, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA14;)V

    invoke-virtual {v2, v11}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v15, v13}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA1;)V

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v15, v13}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA8;)V

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v15, 0x6

    move-object/from16 v4, v33

    invoke-direct {v13, v4, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v11}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v4, 0x0

    move-object/from16 v9, v29

    invoke-direct {v15, v14, v9, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    invoke-direct {v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>()V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v15, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v15}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v15, v14, v9, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRecorderMirrorRunnable;

    const/4 v15, 0x1

    invoke-direct {v4, v15}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$UpdateRecorderMirrorRunnable;-><init>(Z)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v4, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v4, v14, v9, v13, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v4, v14, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v8, 0x1

    invoke-direct {v4, v14, v9, v8, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v8, v14, v9, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v13, 0x13

    invoke-direct {v8, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v8}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_MODE_CHANGE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v8, 0x0

    const/4 v13, 0x1

    invoke-direct {v4, v14, v9, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v13, v14, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v13, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v13}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v8}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v12, 0x1

    invoke-direct {v8, v14, v9, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v13, "CLOSE_ENTER"

    invoke-direct {v8, v14, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v12, 0x2

    invoke-direct {v8, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v8}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    move-object/from16 v4, v28

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v8, v14, v9, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v2, v8}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    move-object/from16 v4, v25

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA19;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const/4 v8, 0x0

    invoke-direct {v5, v14, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    invoke-direct {v5, v14, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$ModeCreateCaptureRequests;-><init>()V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>()V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v11}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v5, v31

    invoke-virtual {v2, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA14;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA1;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA8;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v8, 0x6

    move-object/from16 v9, v33

    invoke-direct {v7, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_UI_COMPONENT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;

    filled-new-array/range {v20 .. v20}, [Lcom/motorola/camera/fsm/camera/UseCase;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$IsUseCaseGuardRunnable;-><init>([Lcom/motorola/camera/fsm/camera/UseCase;)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/Main$FgServiceControl;-><init>(Z)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doAfter(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_2D_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;

    const-string v7, "LOADING_2D_COMPLETE"

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->UI_3D_COMPONENT_INIT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;

    const-string v7, "LOADING_3D_COMPLETE"

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/HistoryGuardRunnable;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA13;)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->alwaysCode(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v2, v6, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v8, 0x2

    move-object/from16 v10, v42

    invoke-direct {v7, v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/4 v10, 0x5

    invoke-direct {v7, v8, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA8;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v8, 0x6

    invoke-direct {v7, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOADING_COMPLETE_SHOW_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->MENU_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/4 v11, 0x5

    invoke-direct {v8, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->RIGHT:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const/4 v12, 0x7

    invoke-direct {v8, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v8}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    move-object/from16 v7, v24

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_TIMER_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 v33, v14

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v20, v9

    invoke-virtual {v14}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v24, v11

    const-string v11, "HISTORY_STATE"

    move-object/from16 v25, v10

    const/4 v10, 0x0

    invoke-direct {v13, v15, v11, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->VOICE_ASSISTANT:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v1, "CAPTURE_TRIGGER"

    move-object/from16 v28, v6

    const/4 v6, 0x1

    invoke-direct {v9, v10, v1, v13, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA16;)V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v9, 0x15

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;

    const/4 v12, 0x1

    const/4 v3, 0x0

    invoke-direct {v9, v3, v12}, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;-><init>(II)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-static {v2, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {v14}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v29, v3

    const/4 v3, 0x0

    invoke-direct {v9, v15, v11, v12, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v9, 0x15

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA15;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-static {v2, v7, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/ProPhotoStates;->PRO_PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v15, v11, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const/4 v8, 0x1

    invoke-direct {v6, v10, v1, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA16;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v9, 0x15

    invoke-direct {v6, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;

    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-direct {v6, v9, v8}, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v8}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v15, v11, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const/4 v8, 0x1

    move-object/from16 v9, v36

    invoke-direct {v6, v9, v1, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/16 v6, 0x15

    invoke-direct {v1, v6}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v14}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA2;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {v7, v4}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v7, v4}, Lcom/motorola/camera/fsm/camera/states/SecondUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA9;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MODE_VALUES:Ljava/util/List;

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/List;

    invoke-static {v7, v1, v3, v3}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/List;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v6, 0x8

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v4, v28

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    move-object/from16 v6, v30

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v7

    move-object/from16 v8, v22

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v9, v21

    invoke-virtual {v7, v9}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA20;)V

    invoke-virtual {v7, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SLIDER_EDIT:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v10, v12}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA20;)V

    invoke-virtual {v7, v10}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v7

    move-object/from16 v10, v26

    invoke-virtual {v7, v10}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v14, 0x10

    invoke-direct {v13, v14, v12}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v7, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/4 v13, 0x7

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v7, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v7

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v7, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v7, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v7

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v7, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v7, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    invoke-virtual {v7, v13}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    move-object/from16 v21, v1

    const/4 v1, 0x5

    move-object/from16 v10, v25

    invoke-direct {v14, v10, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v14, 0x6

    move-object/from16 v22, v8

    move-object/from16 v8, v27

    invoke-direct {v1, v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->DOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const/4 v14, 0x7

    invoke-direct {v1, v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v1}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v15, v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SETTINGS_LIST_OPENED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    move-object/from16 v12, v29

    invoke-static {v1, v8, v12}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {v4}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v15, v11, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SETTINGS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v13, 0x2

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v8, v19

    invoke-static {v1, v8, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(Z)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA18;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA9;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v12, 0x7

    move-object/from16 v13, v24

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v12, 0x6

    move-object/from16 v14, v20

    invoke-direct {v11, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v12, 0x5

    invoke-direct {v11, v10, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v5, v18

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v14, 0x7

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v14, 0x5

    move-object/from16 v15, v17

    invoke-direct {v12, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v11, p0

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>()V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v12, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ONLINE_HELP_OPEN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/OnlineHelpStates;->ONLINE_HELP_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {v1, v12}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    move-object/from16 p0, v7

    const-string v7, "ONLINE_HELP_FROM_TYPE"

    move-object/from16 v17, v12

    const-string v12, "ONLINE_HELP_FROM_MODE"

    move-object/from16 v18, v11

    const/4 v11, 0x0

    move-object/from16 v8, v33

    invoke-direct {v14, v8, v7, v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v1, v14}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v11, 0x8

    invoke-direct {v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v1, v7, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v12, 0x7

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v12, 0x5

    invoke-direct {v11, v15, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v11}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_MENU_EDIT_FINISH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v1, v7, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v11, 0x5

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UP:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    const/4 v12, 0x7

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v12, 0x0

    invoke-direct {v9, v12}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA7;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    move-object/from16 v7, v19

    invoke-static {v0, v1, v7, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v9, 0x5

    invoke-direct {v7, v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v9, 0x7

    invoke-direct {v7, v11, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger;-><init>(Lcom/motorola/camera/fsm/camera/states/CameraInit$SendInitTrigger$$ExternalSynthetic$IA7;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v4, v18

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v17

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    const-string v7, "ONLINE_HELP_FROM_TYPE"

    const-string v9, "ONLINE_HELP_FROM_MODE_EDIT"

    const/4 v10, 0x0

    invoke-direct {v4, v8, v7, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_SLIDER_EDIT_FINISH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v7, v26

    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v9, 0x10

    invoke-direct {v8, v9, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HIDE_MODE_UI_FINISHED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v1, v5}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {v1, v5}, Lcom/motorola/camera/fsm/camera/states/SecondUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    const/4 v5, 0x0

    move-object/from16 v7, v21

    invoke-static {v1, v7, v5, v5}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/List;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transitions(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->fireChangeEvent(Z)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v5, 0x8

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->autoTransition()V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    move-object/from16 v3, v37

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraState;->builder()Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->state(Lcom/motorola/camera/fsm/camera/StateKey;)V

    invoke-virtual {v0, v6}, Lcom/motorola/camera/fsm/camera/CameraState$1;->parent(Lcom/motorola/camera/fsm/State;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object/from16 v4, v34

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v6, 0x1b

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v4, 0x1a

    invoke-direct {v3, v4, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->guard(Lcom/motorola/camera/fsm/GuardedTransitionRunnable;)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/api/internal/zabu;->doBefore(Lcom/motorola/camera/fsm/camera/CameraRunnable;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabu;->build()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
