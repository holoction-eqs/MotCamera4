.class public final Lcom/motorola/camera/fsm/camera/states/QcfaStates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_QCFA_CAPTURE_JPEG:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_QCFA_CREATE_REPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final SS_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# instance fields
.field public final mParentState:Lcom/motorola/camera/fsm/camera/CameraState;

.field public mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SINGLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLOSE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_SURFACES:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_CAPTURE_SESSION:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CREATE_STREAMING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET_REPEATING_REQUEST:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->WAIT_FOR_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_WAIT_FOR_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->QCFA_CREATE_REPROCESS:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_QCFA_CREATE_REPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->QCFA_CAPTURE_JPEG:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_QCFA_CAPTURE_JPEG:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mQcfaCaptureListener:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$1;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mParentState:Lcom/motorola/camera/fsm/camera/CameraState;

    return-void
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 14

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CLOSE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->mParentState:Lcom/motorola/camera/fsm/camera/CameraState;

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;

    invoke-direct {v3, p0}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates;)V

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CloseCaptureSessionRunnable;-><init>(I)V

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_WAIT_FOR_SURFACES_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v4, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v5, 0x19

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_SURFACE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v6, 0x14

    invoke-direct {v4, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v7, 0x13

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SURFACES_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CREATE_STREAMING_REQ_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_CREATE_CAPTURE_SESSION_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v4, v3, v0, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    iput-object v5, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CreateCaptureSessionRunnable;-><init>()V

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    invoke-direct {v9}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>()V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    invoke-direct {v9, v7, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;

    const/4 v10, 0x2

    invoke-direct {v9, v8, v10}, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;-><init>(II)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v9, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v9, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_CAMERA_SESSION_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CONFIGURE_CAPTURE_REQUEST_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v9, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v11, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v11}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    invoke-direct {v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>()V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    invoke-direct {v13, v7, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;

    const/4 v13, 0x0

    invoke-direct {v7, v13, v10}, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;-><init>(II)V

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v7, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v7, v11, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    iput-object v4, v11, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_SET_REPEATING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v11, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v11, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v11

    iput-object v4, v11, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v11, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v11, v3, v0, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable;-><init>()V

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EarlyCaptureRequestGuardRunnable;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v11, 0x13

    invoke-direct {v6, v11, v8}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v6, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CREATE_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;

    invoke-direct {v6, v8, v10}, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;-><init>(II)V

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    iput-object v4, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v9, v5, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v4, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v5, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v5, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_CREATE_REPROC_REQUEST:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_QCFA_CREATE_REPROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v5, v3, v0, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaReprocCaptureRequestRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaReprocCaptureRequestRunnable;-><init>()V

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v6, 0x0

    invoke-direct {v5, v8, v6}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(ZI)V

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_CREATE_REPROC_REQUEST_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_QCFA_CAPTURE_JPEG:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v9, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v3, v9}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v9

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(ZI)V

    iput-object v11, v9, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    iput-object v5, v9, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/QcfaStates;->SS_WAIT_FOR_PROCESS:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v9, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v9, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v9

    iput-object v4, v9, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v7, v9, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v9, v3, v0, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v0

    iput-object v5, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;)V

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_REMOSAIC_PROCESS_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/QcfaCaptureImageRunnable;-><init>(I)V

    iput-object v3, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;

    invoke-direct {v6, v4, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;-><init>(II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v9, 0x4

    invoke-direct {v6, v9, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/motorola/camera/fsm/camera/states/QcfaStates$QcfaSetupRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/QcfaStates;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>()V

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {p0, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance p0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->QCFA_SHOT_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, p0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object p0, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v7, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;

    invoke-direct {v1, v8, v10}, Lcom/motorola/camera/fsm/camera/states/StateHelper$IsModeGuardRunnable;-><init>(II)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SET_REPEATING_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v5, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v0, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object v1, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_GOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v5, "QCFA_SHOT"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SINGLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
