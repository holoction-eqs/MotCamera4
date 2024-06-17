.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighMPRemosaicFamilyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showSwitchToPhotoModeReminder(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResAutoSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreAe:I

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isZoomOkForAutoHighResDetection$1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isHdrOkForAutoHighResDetection()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isFlashOkForAutoHighResDetection()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->startHighResAutoSwitchDetection()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->stopHighResAutoSwitchDetection()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForSmoothSwitchCase()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForSmoothSwitchCase(Z)V

    :cond_2
    :goto_0
    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreAe:I

    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResAutoSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isWithinPhysicalBackMainZoomRatioRange(F)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreZoom:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_7

    invoke-static {v0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isWithinPhysicalBackMainZoomRatioRange(F)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz v0, :cond_3

    sget-object v3, Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;->MULTI_CAMERA:Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/fsm/camera/FsmContext;->getSubStateMachine(Lcom/motorola/camera/fsm/camera/FsmContext$SubStateMachineType;)Lcom/motorola/camera/fsm/camera/subfsms/SubStateMachine;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine;->activePhysicalCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->isPhysicalIdBackMain(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_7

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isAeOkForAutoHighResDetection()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isHdrOkForAutoHighResDetection()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isFlashOkForAutoHighResDetection()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->stopHighResAutoSwitchDetection()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForSmoothSwitchCase(Z)V

    goto :goto_3

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_6

    iget v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreZoom:F

    cmpl-float v2, v1, v3

    if-lez v2, :cond_7

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->isAeOkForAutoHighResDetection()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->startHighResAutoSwitchDetection()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->stopHighResAutoSwitchDetection()V

    :cond_7
    :goto_3
    iput p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mPreZoom:F

    return-void

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_8

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->areAllOkForAutoHighResDetection()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->startHighResAutoSwitchDetection()V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->stopHighResAutoSwitchDetection()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForSmoothSwitchCase(Z)V

    goto :goto_4

    :cond_9
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    const/4 p1, 0x0

    invoke-static {v2, p0, p1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForKnifeSwitchCase(ZLjava/lang/Object;Lcom/motorola/camera/utility/ZoomSegment;)V

    :cond_a
    :goto_4
    return-void

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_b

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->areAllOkForAutoHighResDetection()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->startHighResAutoSwitchDetection()V

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->stopHighResAutoSwitchDetection()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForSmoothSwitchCase(Z)V

    :cond_c
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
