.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;->this$1:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;->$r8$classId:I

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;->this$1:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-nez p1, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setAlpha(F)V

    :cond_0
    return-void

    :pswitch_1
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-nez p1, :cond_1

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->setAlpha(F)V

    :cond_1
    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v4, p2

    invoke-virtual {v0, v3, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitDragToScrollBounds()F

    move-result v0

    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->updateScrollPosition()V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    cmpl-float p0, v0, v1

    if-gtz p0, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->cancelAnimation()V

    :cond_3
    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v4, p2

    invoke-virtual {v0, v4, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->add(FFF)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-object v0, p0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->limitDragToScrollBounds()F

    move-result v0

    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mViewMatrixOffset:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->setViewMatrixOffsetFromOrigin(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    move-object v3, p0

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;->updateScrollPosition()V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListExTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    cmpl-float p0, v0, v1

    if-gtz p0, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->cancelAnimation()V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;->$r8$classId:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;->this$1:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    if-nez p1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mFadeAnimation:I

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mFadeAnimation:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;->this$1:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mFadeAnimation:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    const/4 v1, 0x1

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mFadeAnimation:I

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
