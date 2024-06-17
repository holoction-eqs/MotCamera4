.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->$r8$lambda$UiDZAu6Hkc1X7-k3ca7FfgCwlaY(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Landroid/media/ImageReader;)V

    return-void

    :goto_0
    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->$r8$lambda$UiDZAu6Hkc1X7-k3ca7FfgCwlaY(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Landroid/media/ImageReader;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
