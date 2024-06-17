.class public final Lcom/motorola/camera/fsm/camera/states/FirstUseStates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/states/iCameraState;


# static fields
.field public static final FIRST_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final FIRST_USE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final FIRST_USE_TOOLTIP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final FIRST_USE_TUTORIAL_FEEDBACK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

.field public static final HELP_MODE_INFO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/StateKey$Key;->FIRST_USE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->INTRO:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TUTORIAL_TOOLTIP:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_TOOLTIP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->TUTORIAL_FEEDBACK:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_TUTORIAL_FEEDBACK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->CLI_CAMERA:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    new-instance v0, Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/StateKey$Key;->MODE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    filled-new-array {v1, v2}, [Lcom/motorola/camera/fsm/camera/StateKey$Key;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/StateKey;-><init>([Lcom/motorola/camera/fsm/camera/StateKey$Key;)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->HELP_MODE_INFO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    return-void
.end method

.method public static getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    if-eq p1, v1, :cond_1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object p0, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v1, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA8;)V

    iput-object v3, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v2

    iput-object p0, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v1, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v1, v2, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    invoke-direct {v1, v5}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable$$ExternalSynthetic$IA13;)V

    iput-object v1, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_TOOLTIP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    if-eq p1, v1, :cond_2

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object p0, v2, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v1, v2, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/16 v3, 0x18

    invoke-direct {v1, v3}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(I)V

    iput-object v1, v2, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v2}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    if-eq p1, v2, :cond_3

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object p0, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v4, 0x11

    invoke-direct {v2, v4, v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    iput-object v2, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_TUTORIAL_FEEDBACK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    if-eq p1, v2, :cond_4

    new-instance p1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {p1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object p0, p1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v2, p1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance p0, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;

    const/16 v2, 0x12

    invoke-direct {p0, v2, v1}, Lcom/motorola/camera/fsm/camera/states/RoiStates$IsTouchExpComUp;-><init>(IZ)V

    iput-object p0, p1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final configure(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 20

    move-object/from16 v0, p1

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

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

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getCloseAppTransition()Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->INACTIVE_TIMEOUT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/Main;->INACTIVITY_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v6, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    iput-object v2, v1, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    invoke-virtual {v1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_INTRO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v8, 0xe

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;

    sget-object v9, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MODE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-direct {v7, v6}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates$clearFirstBundleRunnable;-><init>(I)V

    iput-object v7, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mExitAfterFireChange:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v6, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v6}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v10, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v11, 0x1

    invoke-direct {v10, v3, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    iput-object v10, v6, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v3, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v3, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v6, v3}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    sget-object v10, Lcom/motorola/camera/fsm/camera/Trigger$Event;->HELP_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v10, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/16 v12, 0x19

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(I)V

    iput-object v11, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v12, 0xf

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v11, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    sget-object v11, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CHANGE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v11, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v3

    iput-object v10, v3, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v13, 0xc

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v12, v3, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v12, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;

    const/16 v13, 0x1b

    invoke-direct {v12, v13}, Lcom/motorola/camera/fsm/camera/states/Main$CtaPermissionCheckRunnable;-><init>(I)V

    iput-object v12, v3, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    sget-object v12, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_TOOLTIP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v12, v3, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v13, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v13, v3}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MODE_VALUES:Ljava/util/List;

    new-instance v13, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v14, Lcom/motorola/camera/fsm/camera/UseCase;->MODE_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v15, 0x6

    invoke-direct {v13, v14, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    check-cast v3, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v10, v3, v13, v15}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/List;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v2}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v12, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;

    const/16 v8, 0x18

    invoke-direct {v6, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/SceneLockRunnable;-><init>(I)V

    iput-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    new-instance v6, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v6}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v7, v6, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v8, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v8, v6}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v6, v2, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v6, v8}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v8

    sget-object v13, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v13, v8, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v11, v8, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v15, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    move-object/from16 p0, v7

    const/4 v7, 0x1

    invoke-direct {v15, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    iput-object v15, v8, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v15, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    move-object/from16 v16, v1

    const/4 v1, 0x6

    invoke-direct {v7, v15, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v7, v8, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v8, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v1

    iput-object v13, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_CANNOT_SWITCH_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    sget-object v13, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->HISTORY:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v2

    const-string v2, "HISTORY_STATE"

    invoke-direct {v7, v13, v2, v0, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    iput-object v7, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v1, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MEDIA_CONTROL_SWITCH_CAMERA:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v11, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v8, 0x6

    invoke-direct {v7, v15, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v7, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    iput-object v7, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_SMART_ACTIONS_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/SmartCameraStates;->SMART_CAMERA_ACTIONS_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getSwitchEntryTransitions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v12}, Lcom/motorola/camera/fsm/camera/states/ControlPanelStates;->getControlPanelTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v12}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v12}, Lcom/motorola/camera/fsm/camera/states/MultiShotStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v12}, Lcom/motorola/camera/fsm/camera/states/Zoom;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v7, Lcom/motorola/camera/fsm/camera/Trigger$Event;->LAUNCH_MODE_UI:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v7, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v7, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    move-object/from16 v18, v15

    sget-object v15, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NORMAL_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    move-object/from16 v19, v1

    const/4 v1, 0x5

    invoke-direct {v8, v15, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v8, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v8, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;

    const/4 v8, 0x0

    const/4 v15, 0x1

    invoke-direct {v7, v8, v15}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;-><init>(II)V

    iput-object v7, v0, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v7, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getEditSlider(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v5, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Lcom/motorola/camera/fsm/camera/states/RoiStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v12}, Lcom/motorola/camera/fsm/camera/states/ExposureStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAMERA_SWITCH_PREVIEW_END:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v5, 0x2

    invoke-direct {v4, v9, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;-><init>(II)V

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->getMonoSwitchEntryTransitions(Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SWITCH_MODE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v11, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    const/4 v7, 0x2

    invoke-direct {v5, v9, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    invoke-direct {v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->NONE_SWITCH:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-direct {v5, v7, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v5, 0x6

    invoke-direct {v1, v14, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;-><init>(II)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v11, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    sget-object v4, Lcom/motorola/camera/fsm/camera/UseCase;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/UseCase;

    const/4 v5, 0x6

    invoke-direct {v1, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/motorola/camera/fsm/camera/states/Zoom$DragEnableGuardRunnable;-><init>(IZ)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;-><init>(II)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Lcom/motorola/camera/fsm/camera/states/BokehStates;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Lcom/motorola/camera/fsm/camera/states/SpotColorState;->getEntryTransition(Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/motorola/camera/fsm/camera/CameraTransition;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BOKEH_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;

    invoke-direct {v4}, Lcom/motorola/camera/fsm/camera/states/runnables/SetRepeatingRequestRunnable;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-boolean v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    new-instance v1, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;

    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lcom/motorola/camera/fsm/camera/states/runnables/ZoomJumpRunnable;-><init>(I)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v1, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v1, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Lcom/motorola/camera/fsm/camera/states/SceneDetectionStates;->getEntryTransitions(Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MODE_INFO_DIALOG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->HELP_MODE_INFO_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v0

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SETTINGS_LIST_OPENED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v5, v0, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreQcfaSessionRunnable;-><init>(II)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;

    invoke-virtual {v12}, Lcom/motorola/camera/fsm/camera/StateKey;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v13, v2, v8, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreStringBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;Ljava/io/Serializable;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SETTINGS:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreFocusRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;I)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v2, v5}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SettingsStates;->SETTINGS_OPEN_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v2, v0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v10, v3, v2, v0}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/List;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {v17 .. v17}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_CLI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    move-object/from16 v6, v16

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v7, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v7}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    move-object/from16 v8, p0

    iput-object v8, v7, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-direct {v9, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    iput-object v9, v7, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v5}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x0

    invoke-static {v10, v3, v5, v5}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/List;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->FIRST_USE_TUTORIAL_FEEDBACK_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v5, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v7, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v7}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    move-object/from16 v9, v19

    iput-object v9, v7, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    iput-object v11, v7, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SwitchGuardRunnable;-><init>(Z)V

    iput-object v9, v7, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable;-><init>(Lcom/motorola/camera/fsm/camera/states/Main$CleanBuilderRunnable$$ExternalSynthetic$IA3;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;

    const/4 v12, 0x6

    move-object/from16 v13, v18

    invoke-direct {v11, v13, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StartKPIRunnable;-><init>(Ljava/lang/Enum;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;

    invoke-direct {v11, v9}, Lcom/motorola/camera/fsm/camera/states/runnables/CameraListRunnable;-><init>(Ljava/util/List;)V

    iput-object v11, v7, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v9, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v9, v7}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v7, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v7, v9}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v9

    iput-object v8, v9, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    iput-object v11, v9, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v11, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v11, v9}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v9, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DIALOG_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-static {v9, v5}, Lcom/motorola/camera/fsm/camera/states/FirstUseStates;->getTutorialTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x0

    invoke-static {v9, v3, v5, v5}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/List;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mStateKey:Lcom/motorola/camera/fsm/camera/StateKey;

    iput-object v6, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mParent:Lcom/motorola/camera/fsm/State;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    iput-object v8, v1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/fsm/camera/states/runnables/ModeTeardownRunnable;-><init>(IZ)V

    iput-object v5, v1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v5, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v5, v1}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/CameraState$1;->mTransitions:Ljava/util/LinkedHashSet;

    invoke-static {v1, v5}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;->LEFT:Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    invoke-direct {v7, v8, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v7, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v7, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;

    sget-object v8, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->FIRST_USE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    const-string v11, "ORIENTATION"

    const/4 v12, 0x0

    invoke-direct {v7, v8, v11, v12}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    iput-object v7, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object v5

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    new-instance v6, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;->RIGHT:Lcom/motorola/camera/fsm/camera/states/runnables/guards/DragOrientationGuardRunnable$ORI;

    invoke-direct {v6, v7, v4}, Lcom/motorola/camera/fsm/camera/states/RoiStates$Lib3AGuardRunnable;-><init>(Ljava/io/Serializable;I)V

    iput-object v6, v5, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;

    const/4 v6, 0x1

    invoke-direct {v4, v8, v11, v6}, Lcom/motorola/camera/fsm/camera/states/runnables/StoreIntBundleRunnable;-><init>(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;Ljava/lang/String;I)V

    iput-object v4, v5, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    new-instance v4, Lcom/motorola/camera/fsm/camera/CameraTransition;

    invoke-direct {v4, v5}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    invoke-static {v9, v3, v4, v4}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/List;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v10, v3, v4, v4}, Lcom/motorola/camera/fsm/camera/states/StateHelper;->getIdleTransitions(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/util/List;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    return-void
.end method

.method public final getDelayKey()Lcom/motorola/camera/fsm/camera/StateKey$Key;
    .locals 0

    sget-object p0, Lcom/motorola/camera/fsm/camera/StateKey$Key;->FIRST_USE:Lcom/motorola/camera/fsm/camera/StateKey$Key;

    return-object p0
.end method
