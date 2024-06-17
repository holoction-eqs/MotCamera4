.class public final Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

.field public final synthetic val$deltaHeight:F

.field public final synthetic val$deltaTranslation:F

.field public final synthetic val$deltaWidth:F

.field public final synthetic val$preTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$startSize:Landroid/util/SizeF;

.field public final synthetic val$transform:Lcom/motorola/camera/CameraKpi;

.field public final synthetic val$translation:Lcom/motorola/camera/ui/widgets/gl/Vector3F;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;Landroid/util/SizeF;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FLcom/motorola/camera/CameraKpi;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$startSize:Landroid/util/SizeF;

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$deltaWidth:F

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$deltaHeight:F

    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$preTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$deltaTranslation:F

    iput-object p7, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$transform:Lcom/motorola/camera/CameraKpi;

    iput-object p8, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$translation:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$startSize:Landroid/util/SizeF;

    invoke-virtual {v1}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$deltaWidth:F

    mul-float/2addr v3, p2

    add-float/2addr v3, v2

    invoke-virtual {v1}, Landroid/util/SizeF;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$deltaHeight:F

    mul-float/2addr v2, p2

    add-float/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$preTrans:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$deltaTranslation:F

    mul-float/2addr p0, p2

    add-float/2addr p0, v1

    const/4 p2, 0x0

    invoke-direct {v0, p2, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p0, 0x4

    iget-object p2, p1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 4

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$transform:Lcom/motorola/camera/CameraKpi;

    iget-object v1, v1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v2, v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;->setSize(FF)V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->val$translation:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p0, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
