.class public final Lcom/motorola/camera/fsm/camera/states/RoiStates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final ROI_DRAG_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_RESET_IN_PROCESSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_DRAG_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_LOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_LOCK_UNLOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_RESET_IN_PROCESSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_RETRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TAP_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TAP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TAP_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TAP_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ROI_SINGLE_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->ROI:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->DRAG:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CANCEL:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2, v5}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2, v6}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2, v7}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TRIGGER_BY_SWITCHING_MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2, v7}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/StateKey$Key;->RESET:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2, v8}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_RESET_IN_PROCESSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SINGLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v2, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v2, v5}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v2, v6}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TRIGGER_BY_REGIONS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2, v5}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v9, Lcom/motorola/camera/fsm/camera/StateKey$Key;->RETRIGGER_BY_REGIONS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2, v9}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_RETRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v2, v7}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v2, v8}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_RESET_IN_PROCESSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->ROI_LOCK:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SETUP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2, v8}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v2, v4}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_UNLOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v2, v6}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v2, v5}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v2, v7}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_LOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public static configureLockRoi(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    new-instance v4, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v8, 0x18

    invoke-direct {v7, v8, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->ROI_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    const/16 v10, 0xa

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v11, 0x15

    invoke-direct {v7, v11, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v12, "VIDEO_RECORDING"

    const/4 v13, 0x0

    invoke-direct {v7, v11, v12, v3, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v6, 0x6

    invoke-direct {v3, v6, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    iput-object v3, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v4, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_UNLOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    invoke-direct {v14, v8, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v14, v9, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v14, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v14, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    invoke-direct {v15, v8, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->ROI_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    invoke-direct {v8, v15, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->MOTO:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-direct {v8, v10, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v8, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v8, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v8, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 p1, v11

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    move-object/from16 v16, v12

    const/16 v12, 0x18

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v12, 0xa

    invoke-direct {v11, v15, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->QCOM_MTK:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v11, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v11, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v8, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    move-object/from16 v17, v12

    const/16 v12, 0x18

    invoke-direct {v14, v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v14, 0xa

    invoke-direct {v12, v15, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->MTK_ISP_6S:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-direct {v12, v14, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v12, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v8, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    move-object/from16 v18, v14

    const/16 v14, 0x18

    invoke-direct {v12, v14, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v14, 0xa

    invoke-direct {v12, v15, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->SAMSUNG:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-direct {v12, v14, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v12, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v12, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_LOCK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v11, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    move-object/from16 v19, v11

    const/4 v11, 0x1

    move-object/from16 v20, v14

    const/16 v14, 0x18

    invoke-direct {v13, v14, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v13, 0xa

    invoke-direct {v11, v15, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v11, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v12, 0x1

    const/16 v13, 0x18

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v12, 0xa

    invoke-direct {v11, v9, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v9, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v3, v4, v2, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v11, 0x18

    invoke-direct {v9, v11, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v9, v10, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v4, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v8, v5, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v12, 0x0

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v11, v17

    invoke-direct {v9, v11, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v9, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v4, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v8, v5, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v12, 0x18

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v12, v20

    invoke-direct {v9, v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v9, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v4, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v8, v5, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v13, 0x18

    const/4 v14, 0x0

    invoke-direct {v9, v13, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v13, v18

    invoke-direct {v9, v13, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v9, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v4, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v15, 0x1

    const/16 v12, 0x18

    invoke-direct {v14, v12, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v12, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v12, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    invoke-direct {v9, v14, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    iput-object v9, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v4, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v12, 0x18

    invoke-direct {v9, v12, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    iput-object v9, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v5, v3, v2, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;-><init>()V

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->FOCUS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v7, v19

    iput-object v7, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v14, 0x16

    invoke-direct {v12, v14, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v14, 0x0

    invoke-direct {v12, v10, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v15, 0x17

    invoke-direct {v12, v15, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v12, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v12, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v9, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v9}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v9

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v12, v9, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v9, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    move-object/from16 v17, v6

    const/16 v6, 0x16

    move-object/from16 v18, v4

    const/4 v4, 0x1

    invoke-direct {v15, v6, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v15, 0x0

    invoke-direct {v6, v10, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v10, 0x17

    invoke-direct {v6, v10, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v4, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v4, v9, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v9, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    iput-object v12, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v9, 0x0

    const/16 v10, 0x16

    invoke-direct {v6, v10, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v4, v3, v2, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    iput-object v8, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_AUTO_FOCUS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v8, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v14, 0x16

    invoke-direct {v10, v14, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v10, 0x0

    const/16 v14, 0x17

    invoke-direct {v4, v14, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v4, v11, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v4, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v8, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v10, 0x1

    const/16 v14, 0x16

    invoke-direct {v9, v14, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v10, 0x0

    const/16 v14, 0x17

    invoke-direct {v9, v14, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v14, v20

    invoke-direct {v9, v14, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    iput-object v12, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v8, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v10, 0x1

    const/16 v15, 0x16

    invoke-direct {v9, v15, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v10, 0x0

    const/16 v15, 0x17

    invoke-direct {v9, v15, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v9, v11, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v10, 0x15

    const/4 v15, 0x1

    invoke-direct {v9, v10, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v10, 0x0

    move-object/from16 v19, v5

    move-object/from16 v5, p1

    move-object/from16 p1, v1

    move-object/from16 v1, v16

    invoke-direct {v9, v5, v1, v15, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v1, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v1, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v1, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v12, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v6, 0x1

    const/16 v9, 0x16

    invoke-direct {v5, v9, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v9, 0x17

    invoke-direct {v5, v9, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v11, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v5, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v12, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v6, 0x1

    const/16 v9, 0x16

    invoke-direct {v5, v9, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v9, 0x17

    invoke-direct {v5, v9, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v14, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v5, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v12, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v6, 0x1

    const/16 v9, 0x16

    invoke-direct {v5, v9, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v13, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v5, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v12, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v5, 0x0

    const/16 v6, 0x16

    invoke-direct {v4, v6, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v1, v3, v2, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiLockSetRunnable;-><init>()V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    move-object/from16 v4, v19

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v8, 0x1

    invoke-direct {v6, v9, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x0

    invoke-direct {v6, v11, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v4, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v5, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v8, 0x1

    invoke-direct {v6, v9, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x0

    invoke-direct {v6, v14, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v5, v3, v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    move-object/from16 v3, v18

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v3, v17

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public static configureSingleTapRoi(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA19;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA6;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA5;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->QCOM_MTK:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-direct {v7, v8, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v7, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v7, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v7}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v7

    iput-object v4, v7, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v9, v7, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->MOTO:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-direct {v10, v11, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v10, v7, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v10, v7, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v7, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v7

    iput-object v4, v7, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v7, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v13, 0x15

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    sget-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v15, "VIDEO_RECORDING"

    invoke-direct {v12, v13, v15, v14, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->MTK_ISP_6S:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-direct {v12, v14, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v12, v7, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v12, v7, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v7, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v7

    iput-object v4, v7, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_RETRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v10, v7, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v12, v14, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v12, v7, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v12, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v12, v7, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v7, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v4, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v5, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 p1, v8

    sget-object v8, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->SAMSUNG:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    move-object/from16 v16, v10

    const/4 v10, 0x0

    invoke-direct {v12, v8, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v12, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v10, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_SINGLE_TAP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v10, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v12, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v12, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v17, v14

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    move-object/from16 v18, v11

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;->SINGLE_TAP_ROI:Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    move-object/from16 v19, v9

    const/4 v9, 0x1

    invoke-direct {v14, v11, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v14, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v9, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v9, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v14, 0x0

    iput-boolean v14, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    move-object/from16 v20, v13

    const/4 v13, 0x0

    invoke-direct {v14, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v14, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v13, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v14, 0x0

    iput-boolean v14, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    move-object/from16 v21, v15

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v14, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v14, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    sget-object v14, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v14, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;

    move-object/from16 v22, v13

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    move-object/from16 v23, v9

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    move-object/from16 v24, v11

    const-string v11, "CAPTURE_TRIGGER"

    invoke-direct {v15, v13, v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v15, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v15, "EVENT_TRIGGER"

    move-object/from16 v25, v12

    const/4 v12, 0x1

    invoke-direct {v11, v13, v15, v14, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v12, 0x2

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v11, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v5, v3, v2, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v5, 0x4

    const/4 v9, 0x0

    invoke-direct {v3, v5, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v4, v8, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    iput-object v10, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_RESET_IN_PROCESSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v9, v25

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    const/4 v12, 0x1

    move-object/from16 v13, v24

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v11, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v11, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v11, v23

    iput-object v11, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v12, 0x0

    iput-boolean v12, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v14, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    move-object/from16 v14, v22

    iput-object v14, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v12, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v15, 0x1

    invoke-direct {v12, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v12, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v15, 0x0

    invoke-direct {v12, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v12, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v3, v2, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v4, 0x0

    const/4 v12, 0x1

    invoke-direct {v3, v12, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v12, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    move-object/from16 v22, v8

    const/16 v8, 0x16

    move-object/from16 v23, v7

    const/4 v7, 0x1

    invoke-direct {v15, v8, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v15, 0x15

    invoke-direct {v8, v15, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v15, 0x0

    move-object/from16 v24, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v21

    invoke-direct {v8, v6, v1, v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v1, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v1, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v10, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v5, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v9, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    const/4 v8, 0x1

    invoke-direct {v7, v13, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    invoke-direct {v12, v8, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v8, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v11, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v15, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v14, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v15, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PRO_SLIDER_BAR_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v12, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA12;)V

    iput-object v12, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiOverlapTransitions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    move-object/from16 v2, v19

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v3, v20

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v12, 0x0

    invoke-direct {v8, v12, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v8, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v8}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v4, v8, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v12, v8, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v15, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v15, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v8, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v8, v15}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v15

    iput-object v10, v15, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v5, v15, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    move-object/from16 v19, v5

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v5, v15, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v15, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v9, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v10

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    move-object/from16 v21, v7

    const/4 v7, 0x1

    invoke-direct {v10, v13, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x0

    move-object/from16 v25, v12

    move-object/from16 v12, v18

    invoke-direct {v7, v12, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v7, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v7, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    invoke-direct {v12, v10, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v10, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v5, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v9, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    const/4 v12, 0x1

    invoke-direct {v10, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v12, 0x0

    move-object/from16 v15, v17

    invoke-direct {v10, v15, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v10, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v10, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    invoke-direct {v10, v12, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v10, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v5, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v11, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v12, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v7, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v5, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v14, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v12, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v7, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v10, 0x0

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v7, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v5, v8, v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    move-object/from16 v5, v16

    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v5, v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    iput-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v5, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v5}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v4, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v5, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    invoke-direct {v8, v15, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v7, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v7, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v5, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v5, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v11, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v14, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v5, v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    iput-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v5, v25

    iput-object v5, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v2, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    move-object/from16 v7, v21

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v8, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA12;)V

    iput-object v8, v6, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v6, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    move-object/from16 v8, v20

    iput-object v8, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v8, v19

    iput-object v8, v6, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v10, v6, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v6, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    iput-object v9, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v10, v24

    iput-object v10, v6, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    const/4 v15, 0x1

    invoke-direct {v12, v13, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v15, 0x0

    move-object/from16 v7, p1

    invoke-direct {v12, v7, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v6, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    iput-object v9, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v7, v23

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    const/4 v10, 0x1

    invoke-direct {v9, v13, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x0

    move-object/from16 v12, v22

    invoke-direct {v9, v12, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v9, v6, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v6, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    iput-object v11, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v9, v6, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v6, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    iput-object v14, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v6, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXP_COMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    invoke-direct {v9, v7, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    iput-object v9, v6, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->EXP_COMP:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v10, 0x2

    invoke-direct {v7, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiOverlapTransitions()Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v5, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v2, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    move-object/from16 v4, v21

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA12;)V

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v11, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v14, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public static getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;->SINGLE_TAP_ROI:Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->QCOM_MTK:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    invoke-direct {v11, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v12, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->SAMSUNG:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-direct {v11, v12, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v11, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v11, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v6

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TRIGGER_BY_REGIONS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    invoke-direct {v13, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->MOTO:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-direct {v13, v14, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v13, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v13, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v11

    iput-object v11, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    invoke-direct {v13, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->MTK_ISP_6S:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-direct {v13, v15, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v13, 0x15

    invoke-direct {v10, v13, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    sget-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 v16, v5

    const-string v5, "VIDEO_RECORDING"

    move-object/from16 v17, v4

    const/4 v4, 0x0

    invoke-direct {v10, v13, v5, v8, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v4, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    invoke-direct {v10, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v7, v15, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_SINGLE_TAP_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;->SINGLE_TAP_UNLOCK:Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    invoke-direct {v4, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_LOCK_SETUP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    sget-object v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable$Type;->ROI_INNER:Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable$Type;

    const/4 v11, 0x0

    invoke-direct {v8, v10, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v8

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable$Type;->ROI_OUTER_SHUTTER:Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable$Type;

    invoke-direct {v4, v7, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v11}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->ROI_UNLOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    move-object/from16 v18, v3

    const/16 v3, 0xa

    invoke-direct {v10, v11, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v3, v9, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v3, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v10, 0xa

    invoke-direct {v8, v11, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v15, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v10, 0xa

    invoke-direct {v8, v11, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v12, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v10, 0xa

    invoke-direct {v8, v11, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v14, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v19, v5

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->ROI_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    move-object/from16 v20, v13

    const/16 v13, 0xa

    invoke-direct {v10, v5, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v10, v9, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v10, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v8

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v13, 0xa

    invoke-direct {v10, v5, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v10, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v10, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v13}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v8

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v10, 0xa

    invoke-direct {v8, v5, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v15, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v7, 0xa

    invoke-direct {v4, v5, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v4, v14, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_SINGLE_TAP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v4, v17

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v10, 0xa

    invoke-direct {v8, v11, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v10}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v7

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v7, v16

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v9, 0xa

    invoke-direct {v8, v11, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v12, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v7

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v9, 0xa

    invoke-direct {v8, v11, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v14, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v7

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;->AF_LOCKED:Lcom/motorola/camera/fsm/camera/states/runnables/guards/RoiLockGuardRunnable$Type;

    const/16 v9, 0xa

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v15, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v9, 0x1

    const/16 v10, 0x15

    invoke-direct {v7, v10, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    move-object/from16 v12, v19

    move-object/from16 v10, v20

    invoke-direct {v7, v10, v12, v9, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v7, 0xa

    invoke-direct {v6, v11, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v15, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v3, v18

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/16 v4, 0xa

    invoke-direct {v3, v5, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static getRoiOverlapTransitions()Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v6, 0x6

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/4 v6, 0x5

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getRoiStoreListRunnable(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "HISTORY_STATE"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object p1, Lcom/motorola/camera/CameraKpi$KPI;->TOUCH_FOCUS:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-direct {p0, p1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 26

    move-object/from16 v0, p1

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v2, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v7, "CLOSE_ON_STOP"

    invoke-direct {v4, v5, v7, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getCloseAppTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->getSuperSlowMotionStopCaptureTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA19;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA5;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v7, v3}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA6;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v7, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v4, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v4, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;-><init>(Z)V

    iput-object v7, v4, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v6, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v6}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v8, v6, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v9, v6, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v9, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v6, v4, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v6, v9}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v9

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v10, v9, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v11}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v11, v9, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v9, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v9

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_SINGLE_TAP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v11, v9, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_RESET_IN_PROCESSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v12, v9, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;-><init>(Z)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v14, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v14, v9, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v9, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v9

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v13, v9, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v15, v9, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v14, v3}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v14, v9, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v9, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LONG_PRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v9, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v15, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v14, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v14, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v3, v6, v4, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;

    const/4 v14, 0x0

    invoke-direct {v6, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$DragRoiLockRunnable;-><init>(Z)V

    iput-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v6, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v6}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v8, v6, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 p0, v1

    sget-object v1, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->QCOM_MTK:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    invoke-direct {v15, v1, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v15, v6, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v14, v6, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v14, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v14, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v6, v3, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v6, v14}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v14

    iput-object v7, v14, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v8, v14, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v16, v4

    sget-object v4, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->MTK_ISP_6S:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    move-object/from16 v17, v1

    const/4 v1, 0x0

    invoke-direct {v15, v4, v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v15, v14, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v1, v14, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v14, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_CANCEL_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v14, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v18, v4

    sget-object v4, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->SAMSUNG:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    move-object/from16 v19, v5

    const/4 v5, 0x0

    invoke-direct {v15, v4, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v15, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v5, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v20, v5

    sget-object v5, Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;->MOTO:Lcom/motorola/camera/fsm/camera/subfsms/AutoFocusStateMachine$Lib3A;

    move-object/from16 v21, v4

    const/4 v4, 0x0

    invoke-direct {v15, v5, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v15, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v10, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v11, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v12, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v13, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v15, 0x0

    invoke-direct {v4, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v9, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v15, 0x1

    invoke-direct {v4, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v15, 0x0

    invoke-direct {v4, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v6, v3, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    iput-object v14, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;

    const/4 v4, 0x4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/RoiLockRunnable;-><init>(IZ)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v7, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v8, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v7, v21

    invoke-direct {v4, v7, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    iput-object v11, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v12, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    iput-object v13, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v14, v15}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v14, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v14, 0x1

    invoke-direct {v6, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v14, 0x0

    invoke-direct {v6, v14}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v3, v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    iput-object v8, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;->NEW_SET_REQUIRED:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;

    const/4 v15, 0x2

    invoke-direct {v6, v14, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v14, 0x1

    invoke-direct {v6, v14, v14}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    iput-object v4, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_WAIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v14, v6, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    move-object/from16 v21, v8

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v22, v2

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;->DRAG_ENABLE:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;

    invoke-direct {v8, v2, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v8, v6, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v6, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    move-object/from16 v23, v14

    sget-object v14, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;->DRAG_DISABLE:Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetGuards;

    invoke-direct {v8, v14, v15}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v15, 0x15

    const/4 v0, 0x1

    invoke-direct {v8, v15, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const-string v15, "VIDEO_RECORDING"

    move-object/from16 v24, v1

    const/4 v1, 0x0

    move-object/from16 v25, v9

    move-object/from16 v9, v19

    invoke-direct {v8, v9, v15, v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v0, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v0, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v0, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/RoiStates;->ROI_DRAG_TRIGGER_BY_SWITCHING_MODE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x2

    invoke-direct {v6, v14, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x0

    move-object/from16 v9, v17

    invoke-direct {v6, v9, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v6, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x2

    invoke-direct {v6, v14, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x0

    move-object/from16 v9, v18

    invoke-direct {v6, v9, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v6, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x2

    invoke-direct {v6, v14, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v6, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v2, v16

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v7, 0x2

    invoke-direct {v6, v14, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v5, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    iput-object v10, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    iput-object v11, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v12, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    iput-object v13, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v5, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    move-object/from16 v5, v25

    iput-object v5, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PRO_SLIDER_BAR_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v7, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA12;)V

    iput-object v7, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiOverlapTransitions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v24 .. v24}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    move-object/from16 v6, v23

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v6, v22

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v7, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v7}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v10, v7, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v8, v21

    iput-object v8, v7, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v8, v7, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    move-object/from16 v7, v20

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v1, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v8

    iput-object v2, v8, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA12;)V

    iput-object v2, v8, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v8, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v11, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v12, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreRoiBundleRunnable;-><init>()V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v13, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v9, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v5, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXP_COMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-boolean v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    invoke-direct {v9, v8, v8}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    iput-object v9, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->EXP_COMP:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v10, 0x2

    invoke-direct {v8, v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1, v0, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    iput-object v12, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/motorola/camera/fsm/camera/states/RoiStates$RoiSetRunnable;-><init>(ZZ)V

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v4, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v1, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v13, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v5, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA4;)V

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getRoiOverlapTransitions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->configureSingleTapRoi(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/fsm/camera/CameraState;)V

    invoke-static {v3, v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->configureLockRoi(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->ROI:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
