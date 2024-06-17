.class public final Lcom/motorola/camera/fsm/camera/states/Zoom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final ZOOM_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final ZOOM_SMOOTH_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->ZOOM:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SET:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->EXIT:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->JUMP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->SMOOTH_JUMP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SMOOTH_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public static getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "HISTORY_STATE"

    const/4 v9, 0x0

    invoke-direct {v5, v6, v8, v7, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v10, 0x2

    invoke-direct {v5, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v5, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v5, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v8, v4, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v3, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$SetZoomStartRunnable;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_JUMP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SMOOTH_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v4, 0x9

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v6, v8, v11, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v5, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v5, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    invoke-direct {v2, v4, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v6, v8, p0, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {p0, v7, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {p0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object p0, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 16

    move-object/from16 v0, p1

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ZOOM:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/ErrorState;->ERROR_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    iput-object v4, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v2, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CLOSE_APP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_CONFIGURE_BEFORE_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v6, 0x14

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->VIDEO:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v8, "CLOSE_ON_STOP"

    invoke-direct {v5, v6, v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getCloseAppTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_EXIT_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(Z)V

    iput-object v8, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v4, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v8, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v8, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(Z)V

    iput-object v10, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v4, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v10, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v10, 0x8

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->KEY:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v13, "CAPTURE_TRIGGER"

    invoke-direct {v10, v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    move-object/from16 p0, v6

    const-string v6, "EVENT_TRIGGER"

    invoke-direct {v14, v15, v6, v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v14, 0x2

    invoke-direct {v9, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->VIDEO_CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;

    invoke-direct {v10, v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/EventBundleGuardRunnable;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-direct {v11, v15, v6, v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v9, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v9, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v4, v2}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v4

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v9, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v10, 0x12

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v12, 0x6

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v11, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/4 v12, 0x5

    invoke-direct {v10, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v10, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v10, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v9, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SET_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSetRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSetRunnable;-><init>()V

    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v4, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v9, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-direct {v11, v15, v6, v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v6, v15, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v6, v10}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v4, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v6

    iput-object v5, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    invoke-direct {v5, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(Z)V

    iput-object v5, v6, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v5, v3, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v5, v6, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSetRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSetRunnable;-><init>()V

    iput-object v5, v6, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    invoke-static {v6, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v8, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    invoke-direct {v6, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(Z)V

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    invoke-direct {v6, v3, v14}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSetRunnable;

    invoke-direct {v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSetRunnable;-><init>()V

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    invoke-static {v5, v4, v2, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    move-object/from16 v4, p0

    iput-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    new-instance v4, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->AUTO_ADVANCE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v4, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/HistoryState;->HISTORY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v4, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    iput-object v8, v4, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;

    const/16 v9, 0x13

    invoke-direct {v8, v9}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsAfAutoFocusGuardRunnable;-><init>(I)V

    iput-object v8, v4, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v4}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v4, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v4, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v8

    iput-object v5, v8, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v8, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    const-string v11, "ZOOM_EXIT"

    invoke-direct {v10, v3, v11, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v3, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v3, v8, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v9, 0x19

    invoke-direct {v3, v9, v7}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v3, v8, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v8, v4}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v3, v4, v2, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-boolean v7, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAutoTransitionState:Z

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Zoom;->ZOOM_SMOOTH_JUMP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomSmoothJumpRunnable;-><init>()V

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ZOOM_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v6, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->ZOOM:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
