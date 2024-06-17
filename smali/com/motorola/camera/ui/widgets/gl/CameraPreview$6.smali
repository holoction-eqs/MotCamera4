.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final synthetic val$isDualCaptureMode:Z

.field public final synthetic val$previewOffset:F

.field public final synthetic val$previewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

.field public final synthetic val$startOffset:F

.field public final synthetic val$startRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

.field public final synthetic val$startScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$viewRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

.field public final synthetic val$viewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;Lcom/motorola/camera/ui/widgets/gl/Vector3F;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FFLcom/motorola/camera/ui/widgets/gl/Rotation;Lcom/motorola/camera/ui/widgets/gl/Rotation;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startOffset:F

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewOffset:F

    iput-object p6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iput-object p7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iput-object p8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iput-boolean p9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$isDualCaptureMode:Z

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 6

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v0, v3

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v1, v3

    iget v3, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr p1, v3

    mul-float/2addr v0, p2

    mul-float/2addr v1, p2

    mul-float/2addr p1, p2

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v2, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v2, v0

    iput v2, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v0, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v0, v1

    iput v0, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v0, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v0, p1

    iput v0, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewOffset:F

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startOffset:F

    invoke-static {p1, v0, p2, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(FFFF)F

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$startRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    cmpl-float v5, v1, v4

    if-nez v5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    float-to-int v4, v4

    invoke-static {v1, v4}, L_COROUTINE/ArtificialStackFrames;->getRotation(FI)F

    move-result v1

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    sub-float/2addr v1, v4

    :goto_0
    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    mul-float/2addr v1, p2

    add-float/2addr v1, v0

    iget v0, v2, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    invoke-direct {v4, v1, v0, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {v1, v0, v3, p1, v4}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$isDualCaptureMode:Z

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleAnimatedValues:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object v0, v1, v0

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    const/4 v4, 0x0

    aget-object v1, v1, v4

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v2, v4

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v3, v4

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr v0, v4

    mul-float/2addr v2, p2

    mul-float/2addr v3, p2

    mul-float/2addr v0, p2

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget v1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    add-float/2addr v1, v2

    iput v1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v1, v3

    iput v1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    add-float/2addr v1, v0

    iput v1, p2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_1
    return-void
.end method

.method public final onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$previewOffset:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->val$viewRotation:Lcom/motorola/camera/ui/widgets/gl/Rotation;

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->applyPreviewChangeValues(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Lcom/motorola/camera/ui/widgets/gl/Vector3F;FLcom/motorola/camera/ui/widgets/gl/Rotation;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
