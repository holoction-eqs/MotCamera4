.class public final Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final PHOTO_MODES:Ljava/util/List;

.field public static final SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# instance fields
.field public final mImageIdArray:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WIDE_SELFIE_SHOT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_MEMORY:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CONFIGURE_CAPTURE_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->LOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->UNLOCK_FOCUS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET_REPEATING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CAPTURE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->STOPPING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SAVING:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->PHOTO_MODES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->mImageIdArray:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 14

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->SELFIEWIDE_SHOT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->PANO_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v4, 0x16

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getCloseAppTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_WAIT_FOR_MEMORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;

    sget-object v4, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/WaitForMemoryRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(I)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_LOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ACTIVITY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v10, "IS_CLI_DISPLAY"

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    iput-object v8, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v8

    iput-object v6, v8, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v8, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v12, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v12, v8}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEMORY_NOT_AVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->PHOTO_MODES:Ljava/util/List;

    check-cast v12, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v8, v12, v13, v13}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/List;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v7, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/PanoFocusExposureLockRunnable;

    invoke-direct {v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/PanoFocusExposureLockRunnable;-><init>(Z)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LOCK_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v8, v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v8, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v6, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureImageCaptureRequestRunnable;-><init>(Lcom/motorola/camera/ShotType;)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;

    invoke-direct {v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;-><init>(I)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;-><init>(I)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v3, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA20;)V

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$WideSelfieCaptureRunnable;

    invoke-direct {v4, p0}, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$WideSelfieCaptureRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;)V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->PANO_PROGRESS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v8, 0x2

    invoke-direct {v6, v2, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_STOPPING_CAPTURE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA11;)V

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapShotGuardRunnable;-><init>(I)V

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA11;)V

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_STOP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA11;)V

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;

    const/4 v8, 0x5

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/KeyGuardRunnable;-><init>(I)V

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v6, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA11;)V

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/Main;->CLOSE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v8, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v11, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA13;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v11, p0, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v11, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, v3, v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    iput-object v4, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates$PlayCaptureSoundRunnable;-><init>(I)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_SAVING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v4, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA9;)V

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v2, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/Main;->EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v8, v13}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable$$ExternalSynthetic$IA13;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v8, p0, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v8, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v2, v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v1

    iput-object v3, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoSaveRunnable;

    invoke-direct {v2, v13}, Lcom/motorola/camera/fsm/camera/states/PanoShotStates$PanoSaveRunnable;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v2, p0, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;I)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance p0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;

    const/4 v3, 0x1

    invoke-direct {v2, v9, v10, v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/BooleanBundleGuardRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;ZZ)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAVING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/WideSelfieShotStates;->WS_UNLOCK_FOCUS_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, p0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object p0, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {p0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v12, v13, v13}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/List;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v2, v12, v13, v13}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/List;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/PanoFocusExposureLockRunnable;

    invoke-direct {v0, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/PanoFocusExposureLockRunnable;-><init>(Z)V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    invoke-static {v7, v12, v13, v13}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/List;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WIDE_SELFIE_SHOT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
