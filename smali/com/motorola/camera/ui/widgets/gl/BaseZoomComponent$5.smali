.class public final Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

.field public final synthetic val$center:F

.field public final synthetic val$end:F

.field public final synthetic val$endPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public final synthetic val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final synthetic val$height:F

.field public final synthetic val$positionOnly:Z

.field public final synthetic val$start:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;ZFFFFLcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$positionOnly:Z

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$start:F

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$end:F

    iput p5, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$center:F

    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$height:F

    iput-object p7, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iput-object p8, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$endPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 4

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v2, v3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$positionOnly:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$start:F

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$end:F

    cmpl-float p1, p1, v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$height:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$center:F

    if-lez p1, :cond_2

    sub-float p1, p0, v3

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    sub-float/2addr p2, p0

    add-float/2addr p2, v3

    goto :goto_0

    :cond_1
    add-float p1, p0, v3

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_4

    sub-float/2addr p2, p0

    sub-float/2addr p2, v3

    :goto_0
    sub-float/2addr v2, p0

    add-float/2addr v2, v3

    goto :goto_2

    :cond_2
    sub-float p1, p0, v3

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_3

    sub-float/2addr p2, p0

    add-float/2addr p2, v3

    goto :goto_1

    :cond_3
    add-float p1, p0, v3

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_4

    sub-float/2addr p2, p0

    sub-float/2addr p2, v3

    :goto_1
    sub-float/2addr v2, p0

    sub-float/2addr v2, v3

    :goto_2
    div-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :cond_4
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    return-void
.end method

.method public final onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    return-void
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$endPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->updatePostTranslation()V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$positionOnly:Z

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->resetTextureState()V

    :cond_1
    return-void
.end method

.method public final onAnimationStart()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->this$0:Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$glComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent$5;->val$positionOnly:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->mClickable:Z

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setLongClickable(Z)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->visibleToggleTexture()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void
.end method
