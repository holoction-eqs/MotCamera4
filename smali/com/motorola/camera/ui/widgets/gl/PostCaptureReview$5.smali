.class public final Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

.field public final synthetic val$portrait:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->val$portrait:Z

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p1

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->val$portrait:Z

    if-eqz v1, :cond_0

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_0

    :cond_0
    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    :goto_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    iget-object p2, p2, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {p2, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mOffScreenTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
