.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

.field public final synthetic val$postTranslationY:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;FI)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->val$postTranslationY:F

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationCancel(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const/4 v0, 0x0

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->val$postTranslationY:F

    invoke-virtual {p1, v0, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->$r8$classId:I

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->val$postTranslationY:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v2, v0, v1

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    invoke-virtual {v3, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    const/4 v2, 0x1

    if-nez p1, :cond_1

    cmpl-float p1, v1, v0

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->PIP_LIGHT:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v2, p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostTranslation(FFF)V

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void

    :goto_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mGlComponent:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;->val$postTranslationY:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->PIP_LIGHT:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;->-$$Nest$mrequestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
