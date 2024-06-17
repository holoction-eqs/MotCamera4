.class public final Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfMlStateMachine$McfMlStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onModelResults(Lcom/motorola/camera/mcf/McfCallbackModelResults;)V
    .locals 13

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mModel:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    sget-object v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/motorola/camera/shared/ai/model/McfMlModel;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    if-ne v0, v1, :cond_11

    :cond_0
    iget v0, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mStatus:I

    if-nez v0, :cond_11

    iget-object v0, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mResults:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/McfModelResult;

    iget-object v0, v0, Lcom/motorola/camera/mcf/McfModelResult;->mScore:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, v1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf;->AVAILABLE_MOT_SCAN_AUTO_CAPTURE_MODES:Lcom/motorola/camera/mcf/Mcf$CapKey;

    invoke-static {p1, v0}, Lcom/motorola/camera/mcf/Mcf;->getCapabilities(Ljava/lang/String;Lcom/motorola/camera/mcf/Mcf$CapKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "ON_DOWN"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v4

    iget-object v4, v4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "TIMER"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_DOWN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v4, v5, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ON_UP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    invoke-direct {v0, v5, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    const-string v0, "CAPTURE_TRIGGER"

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v2, p1, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_2
    return-void

    :cond_4
    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackModelResults;->mResults:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/mcf/McfModelResult;

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfModelResult;->mLabel:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    if-lez v2, :cond_6

    move v2, v1

    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_6

    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_6
    :goto_4
    new-array p1, v1, [Landroid/graphics/Point;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Point;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->isMlSlideSupported()Z

    move-result v2

    const/4 v4, 0x4

    if-eqz v2, :cond_10

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->slidePointTuning:Lcom/motorola/camera/slidedoc/SlidePointTuning;

    iget-object v2, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lastUpdateTime:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    iput-wide v5, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lastUpdateTime:J

    :cond_7
    iput-wide v5, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->lastUpdateTime:J

    const/4 v7, 0x0

    if-eqz p1, :cond_9

    array-length v8, p1

    if-ne v8, v4, :cond_9

    array-length v4, p1

    new-array v4, v4, [Landroid/graphics/Point;

    move v8, v1

    :goto_5
    array-length v9, p1

    if-ge v8, v9, :cond_8

    new-instance v9, Landroid/graphics/Point;

    aget-object v10, p1, v8

    invoke-direct {v9, v10}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    new-instance v8, Lcom/motorola/camera/slidedoc/TimePoints;

    invoke-direct {v8, v5, v6, v4}, Lcom/motorola/camera/slidedoc/TimePoints;-><init>(J[Landroid/graphics/Point;)V

    invoke-static {p1}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->parallelFourEdge([Landroid/graphics/Point;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0, v5, v6, p1}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->smoothRectPoints(J[Landroid/graphics/Point;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :catch_0
    move-exception p1

    goto :goto_8

    :cond_9
    move-object v8, v7

    :cond_a
    :goto_6
    if-eqz v8, :cond_b

    iget-wide v9, v8, Lcom/motorola/camera/slidedoc/TimePoints;->upMillis:J

    sub-long v9, v5, v9

    iget p1, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->mUpdateInterval:I

    int-to-long v11, p1

    cmp-long p1, v9, v11

    if-lez p1, :cond_b

    goto :goto_7

    :cond_b
    move-object v7, v8

    :goto_7
    invoke-virtual {v0, v5, v6}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getSmoothPoints(J)[Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:[Landroid/graphics/Point;

    if-nez p1, :cond_c

    if-eqz v7, :cond_c

    iget-object p1, v7, Lcom/motorola/camera/slidedoc/TimePoints;->points:[Landroid/graphics/Point;

    iput-object p1, v0, Lcom/motorola/camera/slidedoc/SlidePointTuning;->showingPoints:[Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :goto_8
    :try_start_1
    const-string v4, "SlidePointTuning"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    :goto_9
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishOneZoom:Z

    if-eqz p1, :cond_f

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishZoomTick:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishZoomTick:I

    const/4 v2, 0x3

    if-lt p1, v2, :cond_e

    invoke-virtual {v0}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->onZoomEnd()V

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->INFLATION_STATES:Ljava/util/ArrayList;

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->SCAN_AUTO_CAPTURE_ENABLE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "get(SettingsManager.SCAN\u2026UTO_CAPTURE_ENABLE).value"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {v3}, Lkotlin/UByte$Companion;->setAutoCaptureEnable(Z)V

    :cond_d
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishZoomTick:I

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->finishOneZoom:Z

    goto :goto_b

    :cond_e
    if-ne p1, v3, :cond_11

    invoke-virtual {v0}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->onZoomEnd()V

    goto :goto_b

    :cond_f
    invoke-virtual {v0}, Lcom/motorola/camera/slidedoc/SlidePointTuning;->getShowingPoints()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->-$$Nest$mcheckSmartScale(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;Ljava/util/ArrayList;)V

    goto :goto_b

    :goto_a
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_11

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->-$$Nest$misValidPoints(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;[Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mPointFilter:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;

    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;->-$$Nest$maddPoints(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$PointFilter;[Landroid/graphics/Point;)V

    :cond_11
    :goto_b
    return-void
.end method
