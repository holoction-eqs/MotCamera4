.class public final Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;
.super Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mType:Ljava/lang/Enum;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Enum;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->$r8$classId:I

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->mType:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 13

    sget-object v0, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->ROI:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    iget v1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->$r8$classId:I

    const-string v2, "LOCK_FOCUS_STATE"

    const-string v3, "LOCATION"

    const-string v4, "CAPTURE_TRIGGER"

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->mType:Ljava/lang/Enum;

    const/4 v7, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_d

    .line 1
    :pswitch_0
    check-cast p2, Landroid/os/Bundle;

    if-nez p2, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_1

    goto :goto_1

    :cond_0
    sget-object p2, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->MULTI_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p2

    .line 2
    :cond_2
    :goto_1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    .line 3
    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentPhotoTypeMode()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v8

    if-nez v8, :cond_4

    const/16 v8, 0x13

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    move v8, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v8, v6

    :goto_3
    if-nez v1, :cond_5

    move v1, v6

    goto :goto_4

    :cond_5
    move v1, v5

    :goto_4
    const-string v9, "LONG_PRESS"

    invoke-virtual {p2, v9, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const-string v10, "ROI_INNER"

    invoke-virtual {p2, v10, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 5
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v12, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    if-ne v12, v11, :cond_6

    move v11, v6

    goto :goto_5

    :cond_6
    move v11, v5

    .line 6
    :goto_5
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    if-eqz v3, :cond_7

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isTapInPreview(Landroid/graphics/PointF;)Z

    move-result v12

    invoke-static {v3}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isInAllowedAreaForTapAnyWhere(Landroid/graphics/PointF;)Z

    move-result v3

    goto :goto_6

    :cond_7
    move v3, v5

    move v12, v3

    :goto_6
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable$Type;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_13

    if-eq p0, v6, :cond_d

    if-eq p0, v7, :cond_8

    goto/16 :goto_c

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    goto/16 :goto_c

    :cond_9
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isRoiSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_c

    if-eqz v12, :cond_c

    if-eqz v9, :cond_c

    if-nez v10, :cond_c

    if-nez v1, :cond_c

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p0

    if-nez p0, :cond_c

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->tapAllowed(Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 7
    sget-object p0, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    if-ne p0, p2, :cond_a

    move p0, v6

    goto :goto_7

    :cond_a
    move p0, v5

    :goto_7
    if-nez p0, :cond_c

    :cond_b
    move v5, v6

    :cond_c
    if-eqz v5, :cond_16

    .line 8
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v2, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_c

    :cond_d
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSpotColorMode()Z

    move-result p0

    const/4 p1, 0x6

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-nez p1, :cond_f

    const/16 p1, 0x10

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_8

    :cond_e
    move p1, v5

    goto :goto_9

    :cond_f
    :goto_8
    move p1, v6

    :goto_9
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    if-nez p1, :cond_10

    if-eqz v11, :cond_10

    if-nez v9, :cond_15

    :cond_10
    if-nez p1, :cond_16

    if-eqz v9, :cond_16

    if-nez v10, :cond_16

    if-eqz v8, :cond_16

    if-eqz v1, :cond_16

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result p1

    if-nez p1, :cond_16

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->tapAllowed(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 9
    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    if-ne p1, p2, :cond_11

    move p1, v6

    goto :goto_a

    :cond_11
    move p1, v5

    :goto_a
    if-nez p1, :cond_16

    :cond_12
    if-nez p0, :cond_16

    if-nez v0, :cond_16

    goto :goto_b

    .line 10
    :cond_13
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_c

    :cond_14
    if-eqz v9, :cond_16

    if-eqz v10, :cond_16

    :cond_15
    :goto_b
    move v5, v6

    :cond_16
    :goto_c
    return v5

    .line 11
    :goto_d
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->tapAllowed(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_25

    if-nez v1, :cond_17

    goto/16 :goto_13

    :cond_17
    const-string v1, "TIMER"

    .line 12
    invoke-virtual {p2, v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_18

    move v1, v6

    goto :goto_e

    :cond_18
    move v1, v5

    .line 13
    :goto_e
    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->CAPTURE_ACTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    .line 14
    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 15
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_19

    move v8, v6

    goto :goto_f

    :cond_19
    move v8, v5

    :goto_f
    if-ne v6, v4, :cond_1a

    move v4, v6

    goto :goto_10

    :cond_1a
    move v4, v5

    :goto_10
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v9, Lcom/motorola/camera/settings/SettingsManager;->ROI_LOCK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v9

    .line 16
    iget-object v9, v9, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 17
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    if-eqz p2, :cond_1b

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isTapInPreview(Landroid/graphics/PointF;)Z

    move-result v3

    invoke-static {p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/TapGuardTransitionRunnable;->isInAllowedAreaForTapAnyWhere(Landroid/graphics/PointF;)Z

    move-result p2

    goto :goto_11

    :cond_1b
    move p2, v5

    move v3, p2

    :goto_11
    check-cast p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/SingleTapGuardRunnable$SingleTapCondition;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_22

    if-eq p0, v6, :cond_20

    if-eq p0, v7, :cond_1f

    const/4 p2, 0x3

    if-eq p0, p2, :cond_1c

    goto :goto_13

    :cond_1c
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_13

    :cond_1d
    if-eqz v9, :cond_1e

    invoke-virtual {v0, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1e
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isRoiSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_25

    if-eqz v3, :cond_25

    if-eqz v9, :cond_25

    if-eqz v4, :cond_25

    goto :goto_12

    :cond_1f
    if-eqz v8, :cond_25

    if-eqz p2, :cond_25

    if-eqz v1, :cond_25

    goto :goto_12

    :cond_20
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoFocusTrackingEnabled()Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_13

    :cond_21
    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isRoiSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_25

    if-eqz v3, :cond_25

    if-nez v9, :cond_25

    if-eqz v4, :cond_25

    goto :goto_12

    :cond_22
    sget-boolean p0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    if-eqz p0, :cond_23

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p0

    if-nez p0, :cond_24

    :cond_23
    if-eqz v8, :cond_25

    if-eqz p2, :cond_25

    :cond_24
    if-nez v1, :cond_25

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCaptureAllowed()Z

    move-result p0

    if-eqz p0, :cond_25

    :goto_12
    move v5, v6

    :cond_25
    :goto_13
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 18
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 19
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/guards/LongPressGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
