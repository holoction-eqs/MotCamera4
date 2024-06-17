.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final synthetic val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$deltaHeight:F

.field public final synthetic val$deltaTranslation:F

.field public final synthetic val$deltaWidth:F

.field public final synthetic val$endScissorRect:Landroid/graphics/Rect;

.field public final synthetic val$needScale:Z

.field public final synthetic val$onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$startScissorRect:Landroid/graphics/Rect;

.field public final synthetic val$targetScale:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Landroid/graphics/Rect;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FZFLcom/motorola/camera/ui/widgets/gl/Vector3F;Landroid/graphics/Rect;Ljava/lang/Runnable;I)V
    .locals 0

    iput p12, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startScissorRect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaWidth:F

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaHeight:F

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaTranslation:F

    iput-boolean p7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$needScale:Z

    iput p8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$targetScale:F

    iput-object p9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object p10, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$endScissorRect:Landroid/graphics/Rect;

    iput-object p11, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 13

    const/4 p1, 0x4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$targetScale:F

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$needScale:Z

    const/4 v6, 0x0

    iget v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaTranslation:F

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v9, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaHeight:F

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaWidth:F

    iget-object v11, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startScissorRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v10, p2

    add-float/2addr v10, v12

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v9, p2

    add-float/2addr v9, v11

    invoke-virtual {v0, v10, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v9, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v7, p2

    add-float/2addr v7, v8

    invoke-direct {v0, v9, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v6, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v5, :cond_0

    invoke-static {v3, v2, p2, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(FFFF)F

    move-result p2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v3, p2

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v1, p2

    invoke-virtual {v2, v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v10, p2

    add-float/2addr v10, v12

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v9, p2

    add-float/2addr v9, v11

    invoke-virtual {v0, v10, v9}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v9, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v8, v8, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v7, p2

    add-float/2addr v7, v8

    invoke-direct {v0, v9, v7, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v6, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v5, :cond_1

    invoke-static {v3, v2, p2, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(FFFF)F

    move-result p2

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v2, p2

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v1, p2

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {p2, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    invoke-virtual {p2, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 10

    const/4 p1, 0x4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->$r8$classId:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$targetScale:F

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$blurTexScale:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$onAnimationEnd:Ljava/lang/Runnable;

    iget-boolean v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$needScale:Z

    const/4 v5, 0x0

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$deltaTranslation:F

    iget-object v7, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$startPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->val$endScissorRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v9, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v7, v6

    invoke-direct {v0, v8, v7, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v5, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v5, v1

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v2, v1

    invoke-virtual {v4, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v9, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v8, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v7, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    add-float/2addr v7, v6

    invoke-direct {v0, v8, v7, v5}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v5, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    if-eqz v4, :cond_2

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    mul-float/2addr v4, v1

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v2, v1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v1, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(FF)V

    invoke-virtual {v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->$r8$classId:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
