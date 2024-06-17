.class public final synthetic Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    check-cast p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result p7

    sub-int/2addr p5, p7

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result p7

    sub-int/2addr p5, p7

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p7

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p9

    sub-int/2addr p7, p9

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p7, p3

    iget-object p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->centerControls:Landroid/view/ViewGroup;

    invoke-static {p3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result p9

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    sub-int/2addr p9, v2

    if-nez p3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    add-int/2addr p3, v2

    goto :goto_2

    :cond_3
    move p3, v0

    :goto_2
    sub-int/2addr v1, p3

    iget-object p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->timeView:Landroid/view/ViewGroup;

    invoke-static {p3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result p3

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->overflowShowButton:Landroid/view/View;

    invoke-static {v2}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->getWidthWithMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, p3

    invoke-static {p9, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object p9, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->bottomBar:Landroid/view/ViewGroup;

    if-nez p9, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    invoke-virtual {p9}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p9

    instance-of v3, p9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_5

    check-cast p9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p9, p9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, p9

    add-int/2addr v2, v3

    :cond_5
    :goto_3
    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    const/4 p9, 0x1

    if-le p5, p3, :cond_7

    if-gt p7, v2, :cond_6

    goto :goto_4

    :cond_6
    move p3, v0

    goto :goto_5

    :cond_7
    :goto_4
    move p3, p9

    :goto_5
    iget-boolean p5, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-eq p5, p3, :cond_8

    iput-boolean p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    new-instance p3, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    const/4 p5, 0x5

    invoke-direct {p3, p0, p5}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-eq p4, p8, :cond_9

    move v0, p9

    :cond_9
    iget-boolean p2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->isMinimalMode:Z

    if-nez p2, :cond_a

    if-eqz v0, :cond_a

    new-instance p2, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    const/4 p3, 0x6

    invoke-direct {p2, p0, p3}, Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/ui/PlayerControlView;

    sget-object v0, Landroidx/media3/ui/PlayerControlView;->PLAYBACK_SPEEDS:[F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_b

    if-eq p5, p9, :cond_c

    :cond_b
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->updateSettingsWindowSize()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->settingsWindowMargin:I

    sub-int v2, p2, p0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p2

    neg-int p2, p2

    sub-int v3, p2, p0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_c
    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mRootLocationOnWindow:[I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    return-void

    :goto_6
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUICli;

    sget p1, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUICli;->$r8$clinit:I

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUICli;->updateGuidelinePosition()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
