.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_15

    instance-of p1, p2, Landroid/os/Bundle;

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->isControlPanelAvailableInCurrentMode()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "TYPE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "DIRECTION"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ORIGIN"

    const-class v2, Landroid/graphics/PointF;

    invoke-static {p2, v1, v2}, Lokio/SegmentPool;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    const/4 v2, 0x3

    if-ne p1, v2, :cond_15

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    const/4 p1, 0x2

    new-array v3, p1, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, p1, :cond_2

    const/4 v6, -0x1

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    :cond_3
    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v5}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v5

    sub-float/2addr v3, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    goto/16 :goto_6

    :cond_4
    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->None:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const/16 v5, 0x5a

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Close:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    const/4 v7, 0x1

    sget-object v8, Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;->Open:Lcom/motorola/camera/ui/controls_2020/controlbar/GestureAction;

    if-eq v1, v5, :cond_a

    const/16 v5, 0xb4

    const/4 v9, 0x4

    if-eq v1, v5, :cond_8

    const/16 v5, 0x10e

    if-eq v1, v5, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    if-ne v0, v9, :cond_c

    goto :goto_1

    :cond_6
    if-ne v0, p1, :cond_7

    goto :goto_2

    :cond_7
    if-ne v0, v7, :cond_c

    goto :goto_1

    :cond_8
    if-ne v0, v2, :cond_9

    goto :goto_1

    :cond_9
    if-ne v0, v9, :cond_c

    goto :goto_2

    :cond_a
    if-ne v0, p1, :cond_b

    :goto_1
    move-object v3, v8

    goto :goto_3

    :cond_b
    if-ne v0, v7, :cond_c

    :goto_2
    move-object v3, v6

    :cond_c
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v7, :cond_e

    if-eq v0, p1, :cond_d

    move-object v6, v3

    goto :goto_4

    :cond_d
    move-object v6, v8

    :cond_e
    :goto_4
    const-string v0, "ON_DOWN"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->lastCloseTimestamp:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x96

    cmp-long p2, v0, v2

    if-gez p2, :cond_f

    move p2, v7

    goto :goto_5

    :cond_f
    move p2, v4

    :goto_5
    if-ne v6, v8, :cond_10

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->hiddenState:Z

    if-nez v0, :cond_15

    if-eqz p2, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eq p2, v7, :cond_13

    if-eq p2, p1, :cond_11

    goto :goto_6

    :cond_11
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p0, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {p0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_6

    :cond_13
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;->controlPanelToggle:Landroid/widget/ToggleButton;

    if-nez p0, :cond_14

    goto :goto_6

    :cond_14
    invoke-virtual {p0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_15
    :goto_6
    return-void

    :goto_7
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-eq p1, p2, :cond_16

    goto :goto_8

    :cond_16
    new-instance p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;

    const/16 p2, 0x13

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarComponent;I)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
