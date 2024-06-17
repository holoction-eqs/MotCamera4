.class public final Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;
.super Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mType:Lcom/motorola/camera/settings/CameraType;

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;Lcom/motorola/camera/ui/widgets/gl/iRenderer;ILcom/motorola/camera/settings/CameraType;)V
    .locals 6

    const-string v2, ""

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v5, -0x1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    move-object v0, p0

    move-object v1, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Ljava/lang/String;FII)V

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->mType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->updateIdText()V

    return-void
.end method


# virtual methods
.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->BACK_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->mType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p1, p2}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/motorola/camera/settings/CameraType;->DEBUG_ID:Lcom/motorola/camera/settings/CameraType;

    if-ne p2, p3, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "CAMERA_TYPE"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SAME_FACING_SWITCH:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final updateIdText()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->mType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    const/4 v4, -0x1

    if-ne v0, v2, :cond_0

    iget v0, v3, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mAppColor:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setBackgroundColor(I)V

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setBackgroundColor(I)V

    iget v0, v3, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mAppColor:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setTextColor(I)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    return-void
.end method
