.class public final Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->$r8$classId:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z

    iget v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimFade:I

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mFadeAnimation:I

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;

    invoke-direct {v6, p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v7, 0x12c

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v2, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimFade:I

    invoke-virtual {v0, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-boolean v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mLoaded:Z

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->mMaxAlpha:F

    iget v12, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v0

    sub-float/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->EPSILON_1:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimFade:I

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->hasAnimation(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mFadeAnimation:I

    if-ne v1, v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;

    invoke-direct {v5, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture$3$1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v8

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {v1, v12, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimFade:I

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setClickable(Z)V

    :goto_2
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_3
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    monitor-enter v0

    :try_start_4
    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v1

    iget v9, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    int-to-float v0, v4

    sub-float/2addr v0, v9

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v3, 0x43b40000    # 360.0f

    if-ltz v1, :cond_6

    goto :goto_4

    :cond_6
    add-float/2addr v0, v3

    :goto_4
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_7

    sub-float/2addr v0, v3

    :cond_7
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;-><init>(Ljava/lang/Runnable;II)V

    const-wide/16 v7, 0x12c

    add-float v10, v9, v0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ParentAnimatedButtonTexture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;->mAnimRotate:I

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
