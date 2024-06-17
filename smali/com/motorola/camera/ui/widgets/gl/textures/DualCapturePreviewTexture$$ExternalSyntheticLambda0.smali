.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

.field public final synthetic f$1:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFirstFrame()V
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    invoke-interface {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;->onFirstFrame()V

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    :cond_0
    return-void

    :goto_0
    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    if-ne v3, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->setAlpha(F)V

    invoke-interface {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture$FirstFrameCallback;->onFirstFrame()V

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mFirstFrameCallbackCount:I

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
