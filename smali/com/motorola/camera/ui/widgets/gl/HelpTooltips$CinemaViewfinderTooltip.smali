.class public final Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$CinemaViewfinderTooltip;
.super Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;
.source "SourceFile"


# static fields
.field public static final SIZE:Landroid/util/SizeF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SizeF;

    const/high16 v1, 0x43700000    # 240.0f

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-direct {v0, v1, v2}, Landroid/util/SizeF;-><init>(FF)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$CinemaViewfinderTooltip;->SIZE:Landroid/util/SizeF;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f1205c7

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$CinemaViewfinderTooltip;->SIZE:Landroid/util/SizeF;

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;-><init>(ILandroid/util/SizeF;)V

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    return-void
.end method

.method public final markDismissed()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mDismissed:Z

    return-void
.end method

.method public final shouldDismiss(Lcom/motorola/camera/fsm/ChangeEvent;)Z
    .locals 2

    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_IDLE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isReentering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->CINEMAGRAPH:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "CANCELLED"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/motorola/camera/fsm/camera/states/modes/CinemagraphModeStates;->CINEMAGRAPH_CAPTURING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->shouldShow(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCinemagraphMode()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_CINEMAGRAPH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateDisplay(ILcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTexturePosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v3, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mHeightDp:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-interface {v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getCaptureBarGuideLine()F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x42100000    # 36.0f

    add-float/2addr v3, v5

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v3, v2

    mul-float/2addr v2, v5

    neg-float v5, v2

    add-float v6, v3, v2

    sub-float/2addr v3, v2

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v5, v6, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, v7, Landroid/graphics/RectF;->top:F

    iget v5, v7, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getSurfaceDensity()F

    move-result p2

    mul-float/2addr p2, v2

    sub-float/2addr v3, p2

    if-eqz p1, :cond_3

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_2

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_1

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_0

    move p0, v1

    goto :goto_3

    :cond_0
    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_2

    :cond_3
    const/4 p1, 0x4

    :goto_1
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mArrowDirection:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mTextureSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    :goto_2
    int-to-float p0, p0

    div-float/2addr p0, v4

    add-float/2addr p0, v3

    :goto_3
    invoke-virtual {v0, v1, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(FFF)V

    return-void
.end method
