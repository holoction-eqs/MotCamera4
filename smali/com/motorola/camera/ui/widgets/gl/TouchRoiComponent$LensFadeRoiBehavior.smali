.class public final Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFirstTime:Z

.field public final mHandler:Landroid/os/Handler;

.field public mLensMoveStartTime:J

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;


# direct methods
.method public static -$$Nest$manimateFocus(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFacesDetected:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->FACE_DETECT:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiCompCallback;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mIsAlwaysShowFaces:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->animateFocusArea(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->getHideAnimation(J)Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;)V
    .locals 3

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mLensMoveStartTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mFirstTime:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/CameraIntentReceiver$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/CameraIntentReceiver$1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mCafTimeout:Z

    return-void
.end method

.method public final reset()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mFirstTime:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->cancel()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-nez v2, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isShutterButtonMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
