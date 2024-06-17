.class public final Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->this$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    const p1, 0x7f1205da

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final afterDismiss()V
    .locals 1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_USE_SLIDE_SCAN:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final show()V
    .locals 7

    const/16 v0, 0x32

    int-to-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->this$0:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    iget v2, v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->mScreenDensity:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->x:F

    iget-object v0, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getToggleBarGuideLine()F

    move-result v0

    const/16 v2, 0x4b

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sget v2, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->TOGGLE_SIZE:F

    sub-float/2addr v0, v2

    const/16 v2, 0x14

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v1, v1, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->mScreenDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->y:F

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x800033

    goto :goto_0

    :cond_0
    const v0, 0x800035

    :goto_0
    move v2, v0

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->x:F

    float-to-int v3, v0

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$ControllerTutorialTip;->y:F

    float-to-int v4, v0

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$default(Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;I)V

    return-void
.end method
