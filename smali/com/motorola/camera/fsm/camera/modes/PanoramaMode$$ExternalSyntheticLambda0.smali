.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/FsmContext;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v3, "WIDE_SELFIE_CAPTURE"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "getSmallCaptureImageAvailableListener"

    invoke-static {v2, p1, v1, v4}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->getWideSelfieImageData(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/media/ImageReader;[Landroid/graphics/Rect;Ljava/lang/String;)Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPreviewImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    const/4 p1, 0x0

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->processFrames(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "PanoramaMode"

    const-string p1, "getImageAvailableListener ImageReader#acquireNextImage() is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/motorola/camera/fsm/camera/FsmContext;->getModeSetup()Lcom/motorola/camera/fsm/camera/modes/AbstractMode;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    const-string v0, "CAPTURING"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPanoAttachImage:Lkotlin/DeepRecursiveFunction;

    iget-object p1, p1, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast p1, Landroid/media/Image;

    if-nez p1, :cond_2

    new-instance p1, Lkotlin/DeepRecursiveFunction;

    const/16 v0, 0x14

    invoke-direct {p1, v1, v0}, Lkotlin/DeepRecursiveFunction;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mPanoAttachImage:Lkotlin/DeepRecursiveFunction;

    new-instance v0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;

    invoke-direct {v0, p0, v2}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;-><init>(Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;Lcom/motorola/camera/fsm/camera/FsmContext;)V

    sget-object p0, Lcom/motorola/camera/panorama/PanoramaService$LazyLoader;->INSTANCE:Lcom/motorola/camera/panorama/PanoramaService;

    new-instance v1, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;

    invoke-direct {v1, p1, v0}, Lcom/motorola/camera/panorama/PanoProcessFramesCallable;-><init>(Lkotlin/DeepRecursiveFunction;Lcom/motorola/camera/fsm/camera/modes/PanoramaMode$PanoStatusListener;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/panorama/PanoramaService;->addCallable(Lcom/motorola/camera/panorama/PanoCallable;)V

    goto :goto_1

    :catch_0
    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :cond_3
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "WIDE_SELFIE_FACE_RECT"

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/AbstractMode;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    const-string v1, "getCaptureImageAvailableListener"

    invoke-static {v2, p1, v0, v1}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->getWideSelfieImageData(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/media/ImageReader;[Landroid/graphics/Rect;Ljava/lang/String;)Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->mImageData:Lcom/motorola/camera/panorama/lenovo/WideSelfieImageData;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/fsm/camera/modes/PanoramaMode;->processFrames(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
