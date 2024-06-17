.class public final Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$1;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V
    .locals 6

    sget-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method


# virtual methods
.method public final processPreview(Landroid/media/Image;Z[JZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
