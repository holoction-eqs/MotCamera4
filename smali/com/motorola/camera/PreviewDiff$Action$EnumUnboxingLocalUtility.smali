.class public abstract synthetic Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static _values()[I
    .locals 1

    const/16 v0, 0x14

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getMCheckInData(I)I
    .locals 7

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    const/16 v1, 0xa

    const/4 v3, 0x3

    if-ne p0, v3, :cond_2

    return v1

    :cond_2
    const/4 v4, 0x6

    const/4 v5, 0x4

    if-ne p0, v5, :cond_3

    return v4

    :cond_3
    const/4 v6, 0x5

    if-ne p0, v6, :cond_4

    return v2

    :cond_4
    const/4 v2, 0x7

    if-ne p0, v4, :cond_5

    return v2

    :cond_5
    if-ne p0, v2, :cond_6

    return v3

    :cond_6
    if-ne p0, v0, :cond_7

    return v6

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-ne p0, v1, :cond_9

    return v5

    :cond_9
    const/16 v1, 0xb

    if-ne p0, v1, :cond_a

    return v1

    :cond_a
    const/16 v1, 0xc

    if-ne p0, v1, :cond_b

    return v0

    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    return v1

    :cond_c
    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic getText(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "algo_vendor"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "msluts"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "bst_ai_scene_config"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "control_param_DSLR"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method

.method public static m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zabu;
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    .line 2
    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p0, Lcom/google/android/gms/common/api/internal/zabu;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    return-object p0
.end method

.method public static m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;)Lcom/google/android/gms/common/api/internal/zabu;
    .locals 1

    .line 6
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    .line 7
    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p0, Lcom/google/android/gms/common/api/internal/zabu;

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    return-object p0
.end method

.method public static m(Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/camera/CameraTransition;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Lcom/google/android/gms/common/api/internal/zabu;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/CameraState$1;->transition(Lcom/motorola/camera/fsm/camera/CameraTransition;)V

    .line 12
    invoke-static {}, Lcom/motorola/camera/fsm/camera/CameraTransition;->builder()Lcom/google/android/gms/common/api/internal/zabu;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 14
    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    return-object p0
.end method

.method public static m(Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraTransition;)Lcom/google/android/gms/common/api/internal/zabu;
    .locals 0

    .line 15
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p0, Lcom/google/android/gms/common/api/internal/zabu;

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    return-object p0
.end method

.method public static m(Lcom/google/android/gms/common/api/internal/zabu;Ljava/util/LinkedHashSet;Lcom/motorola/camera/fsm/camera/CameraState$1;Lcom/motorola/camera/fsm/ChangeEvent;)Lcom/motorola/camera/fsm/camera/CameraState$1;
    .locals 1

    .line 18
    new-instance v0, Lcom/motorola/camera/fsm/camera/CameraTransition;

    .line 19
    invoke-direct {v0, p0}, Lcom/motorola/camera/fsm/camera/CameraTransition;-><init>(Lcom/google/android/gms/common/api/internal/zabu;)V

    .line 20
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p2}, Lcom/motorola/camera/fsm/camera/CameraState$1;->build()Lcom/motorola/camera/fsm/camera/CameraState;

    move-result-object p0

    .line 22
    invoke-virtual {p3, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->addState(Lcom/motorola/camera/fsm/camera/CameraState;)V

    .line 23
    new-instance p0, Lcom/motorola/camera/fsm/camera/CameraState$1;

    .line 24
    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/CameraState$1;-><init>()V

    return-object p0
.end method

.method public static m(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, p2, p3}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->parse(Ljava/lang/String;Lorg/json/JSONObject;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    .line 29
    new-instance p0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static m(Lcom/google/android/gms/common/api/internal/zabu;Lcom/motorola/camera/fsm/camera/Trigger$Event;Lcom/motorola/camera/fsm/camera/StateKey;)Ljava/util/ArrayList;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabu;->event(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/api/internal/zabu;->to(Lcom/motorola/camera/fsm/camera/StateKey;)V

    .line 33
    new-instance p0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/String;ILorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;)V
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 37
    invoke-static {p3, p4, p0}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->buildJsonRequest(Lorg/json/JSONObject;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/io/Serializable;)V

    return-void
.end method

.method public static m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z
    .locals 0

    .line 38
    invoke-interface {p0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p0

    .line 39
    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Ljms/IJobMgrService$_Parcel;->hasCliCutout(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result p0

    return p0
.end method

.method public static m(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;ILjava/lang/String;)Z
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField;->get(I)Ljava/lang/Boolean;

    move-result-object p0

    .line 42
    invoke-static {p0, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic stringValueOf(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "NONE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "CROP"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "FADE"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "ZOOM"

    return-object p0

    :cond_3
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$1(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "GALLERY"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "MOTO_ACTIONS_QD_TUTORIAL"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "NONE"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "SETTINGS_LOCATION"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "SETTINGS"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "VIDEO_PLAYER"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string p0, "YOUTUBE_LIVE"

    return-object p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string p0, "LENS"

    return-object p0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const-string p0, "CINEMAGRAPH"

    return-object p0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    const-string p0, "DOCUMENT"

    return-object p0

    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const-string p0, "OBJECT_DETECTION"

    return-object p0

    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    const-string p0, "PHOTOS_STABILIZE"

    return-object p0

    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    const-string p0, "DND_PERMISSION_REQUEST"

    return-object p0

    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    const-string p0, "MOTO_FEEDBACK"

    return-object p0

    :cond_d
    const/16 v0, 0xf

    if-ne p0, v0, :cond_e

    const-string p0, "WIFI_ADD_NETWORKS"

    return-object p0

    :cond_e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_f

    const-string p0, "WIFI_PANEL"

    return-object p0

    :cond_f
    const/16 v0, 0x11

    if-ne p0, v0, :cond_10

    const-string p0, "FLEXIBLE_APP_UPDATE"

    return-object p0

    :cond_10
    const/16 v0, 0x12

    if-ne p0, v0, :cond_11

    const-string p0, "SUPER_SLOW_MOTION"

    return-object p0

    :cond_11
    const/16 v0, 0x13

    if-ne p0, v0, :cond_12

    const-string p0, "COLLAGE_EDITOR"

    return-object p0

    :cond_12
    const/16 v0, 0x14

    if-ne p0, v0, :cond_13

    const-string p0, "CTA_PRIVACY"

    return-object p0

    :cond_13
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$2(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "JMS"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "COPROC"

    return-object p0

    :cond_1
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$3(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "INITIALIZED"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "DEINITIALIZED"

    return-object p0

    :cond_1
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$4(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "OPEN"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "CLOSE"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "CLOSING"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "UNUSED"

    return-object p0

    :cond_3
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$5(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "STARTED"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "STOPPED"

    return-object p0

    :cond_1
    const-string p0, "null"

    return-object p0
.end method

.method public static synthetic stringValueOf$6(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "CAPTURE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "MS_CAPTURE"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "ROI_DRAG"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "TTF_TRIGGER"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "ROI_LOCK"

    return-object p0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    const-string p0, "CINEMAGRAPH"

    return-object p0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    const-string p0, "PANORAMA"

    return-object p0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    const-string p0, "SLOW_MOTION"

    return-object p0

    :cond_7
    const-string p0, "null"

    return-object p0
.end method
