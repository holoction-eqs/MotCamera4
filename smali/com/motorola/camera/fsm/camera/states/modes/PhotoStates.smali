.class public final Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;
.super Lcom/motorola/camera/fsm/camera/states/modes/AbstractModeStates;
.source "SourceFile"


# static fields
.field public static final PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final PHOTO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PHOTO:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->IDLE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method


# virtual methods
.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->PHOTO:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method

.method public final getIdleState(Lcom/motorola/camera/fsm/camera/CameraState;)Lcom/motorola/camera/fsm/camera/CameraState;
    .locals 11

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance p1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {p1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, p1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, p1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    iput-object v3, p1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v6, 0x6

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v3, p1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {p1, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v1, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    iput-object v1, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "HISTORY_STATE"

    invoke-direct {v1, v8, v10, v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    iput-object v1, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v3, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->EXIT_SMART_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_SWITCH_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v3, v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    invoke-direct {v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;

    invoke-direct {v5, v3}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(Ljava/util/List;)V

    iput-object v5, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_SMART_ACTIONS_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SMART_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v8, 0x2

    invoke-direct {v3, v5, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getLeftPageShowModeUi()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getEditSlider(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_UNAVAILABLE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH_PREVIEW_END:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v5, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v3, v5, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v3, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions(Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-direct {v5, v9, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v6, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    const/4 v9, 0x5

    invoke-direct {v5, v6, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v6, 0xf

    invoke-direct {v5, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v5, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v7}, Lcom/motorola/camera/fsm/camera/states/GalleryStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;Z)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/BokehStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BOKEH_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v7, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v5, 0x8

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_INFO_DIALOG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->HELP_MODE_INFO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ALWAYS_AWARE_CONNECT_WIFI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->WIFI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v2, v3, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/AlwaysAwareStates;->CONNECT_WIFI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CONTROL_PANEL_TORCH_AUTO_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable$$ExternalSynthetic$IA0;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BEAUTY_PREVIEW_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v7, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SESSION:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v5, "IS_SKIP_RECONFIG"

    invoke-direct {v2, v3, v5, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreBooleanBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;

    invoke-direct {v1, v3, v5, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/ClearBundleKeyRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    return-object p0
.end method

.method public final getParentStateKey()Lcom/motorola/camera/fsm/camera/StateKey;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/PhotoStates;->PHOTO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-object p0
.end method
