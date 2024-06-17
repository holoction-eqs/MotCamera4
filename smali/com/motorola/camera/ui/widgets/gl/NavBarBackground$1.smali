.class public final Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final synthetic val$visible:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;ZI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->val$visible:Z

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {p0, p2, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPreScale(FF)V

    :goto_0
    return-void

    :goto_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setAlpha(F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->val$visible:Z

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-nez p0, :cond_0

    move-object p0, v2

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CircleTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_0
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :goto_0
    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setAlpha(F)V

    if-nez p0, :cond_4

    iget-boolean p0, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-eqz p0, :cond_2

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setAlpha(F)V

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_2

    :cond_2
    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->visibleToggleTexture()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    iget-boolean p0, v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mIsToggleReadyToBeEnabled:Z

    invoke-virtual {v2, p0}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->enableZoomToggle(Z)V

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setVisibility(Z)V

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setDraggable(Z)V

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_3
    iget-object p0, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :goto_0
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v1, Lcom/motorola/camera/ui/widgets/gl/FrontZoomComponent;

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$1;->val$visible:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    if-eqz p0, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setAlpha(F)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mZoomSliderBar:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->setVisibility(Z)V

    :cond_1
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    if-eqz p0, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;->setAlpha(F)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->visibleToggleTexture()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->handleFrameTexture()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    if-eqz p0, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/BaseZoomComponent;->mFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_4
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
