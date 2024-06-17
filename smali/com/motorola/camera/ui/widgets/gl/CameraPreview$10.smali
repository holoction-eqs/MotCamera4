.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic val$begin:F

.field public final synthetic val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$end:F

.field public final synthetic val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final synthetic val$onAnimationEnd:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;FLcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda3;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$end:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$begin:F

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$end:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$begin:F

    cmpg-float p1, p1, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-gez p1, :cond_0

    div-float/2addr v0, p2

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    sub-float p1, p0, v0

    add-float/2addr v0, p0

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, p1, v0, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setBlurRect(Landroid/graphics/RectF;)V

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onPreviewChanged()V

    goto :goto_0

    :cond_0
    iget-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v0, p2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr p0, p2

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    :goto_0
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 4

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$end:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$begin:F

    cmpl-float v0, p1, v0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-ltz v0, :cond_0

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v3, p1

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v2, p1

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iput-boolean p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mReusePreview:Z

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-object p1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$end:F

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$begin:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mContinuousBlur:Z

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iput-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mReusePreview:Z

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->onPreviewChanged()V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$10;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
