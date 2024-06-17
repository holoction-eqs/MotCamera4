.class public final Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$6;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

.field public final synthetic val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$6;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$6;->val$texture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    const v0, -0x40e147ae    # -0.62f

    mul-float/2addr p2, v0

    const/high16 v0, -0x41000000    # -0.5f

    div-float/2addr p2, v0

    add-float/2addr p2, p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final onAnimationStart()V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$6;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method
