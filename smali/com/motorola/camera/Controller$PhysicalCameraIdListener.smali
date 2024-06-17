.class public final Lcom/motorola/camera/Controller$PhysicalCameraIdListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine$MultiCameraListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Controller;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivePhysicalCameraIdChanged(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_FLASH_FOR_UW:Lcom/motorola/camera/AppFeatures$Feature;

    iget v1, p0, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;->$r8$classId:I

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/motorola/camera/Controller$PhysicalCameraIdListener;->this$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAMSSupportedMode()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    int-to-float v3, v2

    const-string v4, "currentZoom"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v3, v1

    invoke-static {v3}, Lcom/motorola/camera/utility/ZoomHelper;->isWithinPhysicalBackMainZoomRatioRange(F)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object v4, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mPhysicalCameraId:Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->isPhysicalIdBackMain(Ljava/lang/String;)Z

    move-result v4

    if-eqz p1, :cond_0

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v1, v2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->access$showAMSToast(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Z)V

    goto :goto_2

    :cond_2
    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    invoke-static {v1, v3}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->access$showAMSToast(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;Z)V

    :goto_2
    if-eqz p1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iput-object p1, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mPhysicalCameraId:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUWAutoNVForSATDisabled()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentWidePhysicalId(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->setupFlash(Z)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mPhysicalCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mPhysicalCameraId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->updateItems$1()V

    :cond_6
    :goto_3
    return-void

    :pswitch_1
    if-eqz p1, :cond_7

    check-cast p0, Lcom/motorola/camera/Controller;

    invoke-virtual {p0}, Lcom/motorola/camera/Controller;->isCliDisplay()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {p1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->initData(Ljava/lang/String;Z)V

    :cond_7
    return-void

    :goto_4
    sget-object v1, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isUWAutoNVForSATDisabled()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentZoomBlendingCamera()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentWidePhysicalId(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->setupFlash(Z)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->mPhysicalCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->updateRecyclerViewAsync()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->mPhysicalCameraId:Ljava/lang/String;

    :cond_a
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
