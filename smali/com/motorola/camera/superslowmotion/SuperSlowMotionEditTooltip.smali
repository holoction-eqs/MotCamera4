.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.source "SourceFile"


# instance fields
.field public final anchor:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1205dd

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->anchor:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    return-void
.end method


# virtual methods
.method public final afterDismiss()V
    .locals 1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION_EDIT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final getPosition()Landroid/graphics/Point;
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->anchor:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeCenterX()F

    move-result v1

    add-float/2addr v1, v0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    new-instance p0, Landroid/graphics/Point;

    float-to-int v0, v1

    float-to-int v1, v2

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public final show()V
    .locals 8

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->getPosition()Landroid/graphics/Point;

    move-result-object v0

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_CENTER:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->anchor:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$enumunboxing$(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;ILandroid/view/View;)V

    return-void
.end method
