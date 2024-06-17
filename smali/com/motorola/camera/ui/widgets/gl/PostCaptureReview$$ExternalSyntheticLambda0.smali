.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->POST_CAPTURE:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->mPostCaptureListeners:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    const-class p0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/motorola/camera/saving/ImageCaptureManager;

    monitor-enter v0

    :try_start_2
    sget-object v1, Lcom/motorola/camera/saving/ImageCaptureManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/ImageCaptureManager;

    iput-object p0, v1, Lcom/motorola/camera/saving/ImageCaptureManager;->mImageReviewListener:Lcom/motorola/camera/saving/ImageCaptureManager$ImageReviewListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_ACCEPT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mAcceptBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mPlayBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDeleteBtn:Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ButtonTexture;->loadTexture()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mButtonsLoaded:Z

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mShowPlay:Z

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->setVisibility(ZZ)V

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->mDirty:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview;->doDelayedDismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
