.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$motorola$camera$ui$widgets$gl$textures$ModeMenuTexture$$InternalSyntheticLambda$5$226770539cacce65ba937bd83ef8a10ada7161712b18f93f191e7460f638a609$0()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mLoaded:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->loadTexture()V

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->run$com$motorola$camera$ui$widgets$gl$textures$ModeMenuTexture$$InternalSyntheticLambda$5$226770539cacce65ba937bd83ef8a10ada7161712b18f93f191e7460f638a609$0()V

    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ReadPixelsCallback;

    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    if-eqz v7, :cond_1

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    :goto_1
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0, v5, v1, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->processDualCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/nio/Buffer;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;I)V

    goto :goto_3

    :goto_2
    invoke-virtual {v0, v5, v1, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->processDualCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/nio/Buffer;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    return-void

    :pswitch_3
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ReadPixelsCallback;

    if-eqz v0, :cond_4

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mAudioLensSwitchFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    goto :goto_4

    :cond_3
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFboTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    :goto_4
    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->readPixels()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;

    iget v2, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    packed-switch v2, :pswitch_data_2

    goto :goto_5

    :pswitch_4
    invoke-virtual {v0, v5, v1, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->processDualCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/nio/Buffer;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;I)V

    goto :goto_6

    :goto_5
    invoke-virtual {v0, v5, v1, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->processDualCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/nio/Buffer;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;I)V

    goto :goto_6

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_6
    return-void

    :pswitch_5
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iput-boolean v8, v1, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mHandlerIsProcessing:Z

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3, v0, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_6
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroidx/core/view/ContentInfoCompat$CompatImpl;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v10, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    new-instance v11, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;

    invoke-direct {v11, v0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    monitor-enter v9

    :try_start_0
    iget-object v0, v9, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mClip:Ljava/lang/Object;

    check-cast v0, Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, v9, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/os/Parcelable;

    move-object v10, v0

    check-cast v10, Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v0, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v10, v9, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mClip:Ljava/lang/Object;

    check-cast v10, Ljava/nio/Buffer;

    invoke-virtual {v0, v10}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v10, v9, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/os/Parcelable;

    move-object v11, v10

    check-cast v11, Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    check-cast v10, Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    iget-object v12, v9, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mExtras:Ljava/lang/Object;

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iget-object v12, v12, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v12, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v12}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v12

    check-cast v12, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v12, v12, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    new-array v2, v2, [Landroid/graphics/Bitmap;

    cmpl-float v13, v11, v10

    if-lez v13, :cond_5

    const/high16 v13, 0x43700000    # 240.0f

    mul-float/2addr v13, v12

    div-float v14, v13, v11

    mul-float/2addr v14, v10

    float-to-int v14, v14

    float-to-int v13, v13

    invoke-static {v0, v13, v14, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    aput-object v13, v2, v8

    iget-object v13, v9, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/os/Parcelable;

    check-cast v13, Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    mul-float/2addr v13, v12

    div-float v11, v13, v11

    mul-float/2addr v11, v10

    float-to-int v10, v11

    float-to-int v11, v13

    invoke-static {v0, v11, v10, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    aput-object v10, v2, v7

    goto :goto_7

    :cond_5
    const/high16 v13, 0x435c0000    # 220.0f

    mul-float/2addr v13, v12

    div-float v14, v13, v10

    mul-float/2addr v14, v11

    float-to-int v14, v14

    float-to-int v13, v13

    invoke-static {v0, v14, v13, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    aput-object v13, v2, v8

    iget-object v13, v9, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/os/Parcelable;

    check-cast v13, Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    mul-float/2addr v13, v12

    div-float v10, v13, v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    float-to-int v11, v13

    invoke-static {v0, v10, v11, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    aput-object v10, v2, v7

    :goto_7
    aget-object v10, v2, v8

    if-eq v10, v0, :cond_6

    aget-object v10, v2, v7

    if-eq v10, v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v9

    sput-boolean v8, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mIsSaveComplete:Z

    iget-object v9, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    aget-object v0, v2, v7

    iget v10, v9, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "/cache_bitmap.png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    int-to-float v10, v10

    :try_start_1
    invoke-static {v0, v10, v8, v8, v7}, Lcom/motorola/camera/Util;->rotateImage(Landroid/graphics/Bitmap;FZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getJpegQuality()I

    move-result v13

    invoke-virtual {v0, v12, v13, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v10}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v10, "com.motorola.camera3.background.provider.filedatacontract.FileProviderCustom"

    invoke-static {v0, v10, v11}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v10, "UiMaskComponent"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    iput-object v6, v9, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->cacheURI:Landroid/net/Uri;

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    aget-object v3, v2, v8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getIndicatorBarAndTopMargin()F

    move-result v3

    const/high16 v6, 0x41200000    # 10.0f

    add-float/2addr v3, v6

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v6, v6, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v9, v0, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    const/high16 v10, 0x41a00000    # 20.0f

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    aget-object v2, v2, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v6, v2

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setScaleY(F)V

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    new-instance v9, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1, v6, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;FFLcom/motorola/camera/ui/layoutmanager/LayoutManager;)V

    invoke-virtual {v2, v9}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x118

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v8}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1450

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v7}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :pswitch_8
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    sget v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_SINGLE_TAP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3, v0, v8}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    :pswitch_9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    new-instance v2, Landroidx/work/Worker$2;

    iget-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mDrawLock:Ljava/lang/Object;

    invoke-direct {v2, v0, v3}, Landroidx/work/Worker$2;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :pswitch_a
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    new-instance v3, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v3, v0}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v2, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Z)V

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    return-void

    :pswitch_b
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    if-eqz v2, :cond_b

    iget-object v0, v0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    check-cast v0, [B

    const/16 v2, 0x80

    new-array v3, v2, [I

    move v4, v8

    :goto_9
    array-length v5, v0

    if-ge v4, v5, :cond_a

    aget-byte v5, v0, v4

    if-lez v5, :cond_7

    goto :goto_a

    :cond_7
    add-int/lit16 v5, v5, 0x100

    :goto_a
    move v6, v8

    :goto_b
    if-ge v6, v2, :cond_9

    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v10, v9, 0x2

    if-gt v9, v5, :cond_8

    if-ge v5, v10, :cond_8

    add-int/lit8 v6, v6, 0x0

    aget v5, v3, v6

    add-int/2addr v5, v7

    aput v5, v3, v6

    goto :goto_c

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_9
    :goto_c
    add-int/lit8 v4, v4, 0x8

    goto :goto_9

    :cond_a
    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    monitor-enter v2

    :try_start_2
    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mDataList:[I

    invoke-virtual {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->updateHistogram()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    goto :goto_d

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_b
    :goto_d
    iput-boolean v7, v1, Lcom/motorola/camera/ui/widgets/gl/HistogramComponent;->mInIdle:Z

    return-void

    :pswitch_c
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    sget v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->$r8$clinit:I

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v6, [F

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v9, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v9, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    monitor-enter v9

    :try_start_3
    iget-object v10, v9, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->mBitmapTexture:Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;

    monitor-enter v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v10, v0, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/BitmapTexture;->setBitmap(Landroid/graphics/Bitmap;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v9

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    invoke-virtual {v0, v6, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    iget-boolean v0, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mHasPendingAnimation:Z

    if-eqz v0, :cond_11

    iput-boolean v8, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mHasPendingAnimation:Z

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/PreviewChange;

    iget-object v1, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v6

    iget v9, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchTargetRatio:F

    iget v10, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iget v11, v0, Lcom/motorola/camera/ui/PreviewChange;->mFacing:I

    move-object v12, v6

    check-cast v12, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v12, v12, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mLayout:Lcom/motorola/camera/ui/layoutmanager/LayoutValue;

    iget v13, v12, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->width:F

    iget v12, v12, Lcom/motorola/camera/ui/layoutmanager/LayoutValue;->height:F

    cmpl-float v14, v13, v12

    if-lez v14, :cond_c

    div-float/2addr v13, v12

    goto :goto_e

    :cond_c
    div-float v13, v12, v13

    :goto_e
    iget-boolean v12, v0, Lcom/motorola/camera/ui/PreviewChange;->mControlPanelSwitch:Z

    invoke-static {v10, v11, v13, v12, v8}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getPreviewRatio(IIFZZ)F

    move-result v10

    iget v11, v0, Lcom/motorola/camera/ui/PreviewChange;->mFromMode:I

    iget-object v12, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v9, v11, v12, v6}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getScissorRect(FILcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Landroid/graphics/RectF;

    move-result-object v9

    iget v11, v0, Lcom/motorola/camera/ui/PreviewChange;->mToMode:I

    iget-object v12, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v10, v11, v12, v6}, Lcom/motorola/camera/settings/ModeSettingsHelper;->getScissorRect(FILcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Landroid/graphics/RectF;

    move-result-object v6

    iput v10, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchTargetRatio:F

    invoke-virtual {v9, v6}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mModeSwitchBlurTex:Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;

    if-nez v10, :cond_10

    iget-boolean v0, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v9, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-instance v6, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;

    const/16 v9, 0xc

    invoke-direct {v6, v2, v0, v9}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v0, v9

    int-to-float v12, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v0, v9

    int-to-float v13, v0

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mPreviewStencilTexture:Lcom/motorola/camera/ui/widgets/gl/textures/PreviewStencilTexture;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v14

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    sub-int/2addr v3, v9

    int-to-float v15, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v9

    if-gtz v3, :cond_e

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v9

    if-lez v3, :cond_d

    goto :goto_f

    :cond_d
    move/from16 v16, v8

    goto :goto_10

    :cond_e
    :goto_f
    move/from16 v16, v7

    :goto_10
    if-eqz v16, :cond_f

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v8, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v8

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mBlurTexSize:Landroid/graphics/PointF;

    iget v8, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, v5

    iget v9, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v9, v5

    invoke-virtual {v3, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    :cond_f
    move/from16 v17, v5

    const/4 v3, 0x3

    invoke-virtual {v11, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v18

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;

    const/16 v21, 0x1

    move-object v9, v5

    move-object v10, v2

    move-object v11, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    invoke-direct/range {v9 .. v21}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$11;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Landroid/graphics/Rect;FFLcom/motorola/camera/ui/widgets/gl/Vector3F;FZFLcom/motorola/camera/ui/widgets/gl/Vector3F;Landroid/graphics/Rect;Ljava/lang/Runnable;I)V

    const-wide/16 v21, 0x64

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    invoke-direct/range {v19 .. v26}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    iget v1, v2, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v3, v1, v0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object v0, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto :goto_11

    :cond_10
    iget-boolean v3, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mContinuousBlur:Z

    if-eqz v3, :cond_11

    iget-boolean v0, v0, Lcom/motorola/camera/ui/PreviewChange;->mAutoClear:Z

    if-eqz v0, :cond_11

    invoke-virtual {v11, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/BlurPreviewTexture;->setAlpha(F)V

    invoke-virtual {v11, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iput-boolean v8, v2, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mContinuousBlur:Z

    iput-boolean v7, v1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_11
    :goto_11
    return-void

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_6
    monitor-exit v10

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    monitor-exit v9

    throw v0

    :pswitch_d
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/media/Image;

    iget-boolean v2, v1, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mCapturing:Z

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->addImage(Landroid/media/Image;)V

    iget-object v2, v1, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v2}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mAdapters:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$CinemagraphAdapter;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$$ExternalSyntheticLambda0;

    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v5, :pswitch_data_3

    goto :goto_13

    :pswitch_e
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;

    monitor-enter v4

    :try_start_7
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object v6

    int-to-long v9, v2

    invoke-virtual {v6, v9, v10}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-boolean v6, v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-nez v6, :cond_12

    invoke-virtual {v5, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_12
    iget-object v5, v4, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v7, v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit v4

    goto :goto_12

    :catchall_4
    move-exception v0

    monitor-exit v4

    throw v0

    :goto_13
    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    check-cast v4, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    sget-object v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->Companion:Lkotlin/ULong$Companion;

    const-string v5, "this$0"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;

    invoke-direct {v5, v4, v2, v7}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;II)V

    invoke-virtual {v4, v5}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_13
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iput-boolean v8, v1, Lcom/motorola/camera/ui/widgets/gl/CinemagraphComponent;->mFrameProcessing:Z

    return-void

    :pswitch_f
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mAutoHide:Z

    iget v0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;->mToastDuration:I

    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->show()V

    if-eqz v2, :cond_14

    int-to-long v0, v0

    invoke-virtual {v3, v8, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_14
    return-void

    :pswitch_10
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/String;

    sget-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;->TOP:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    if-eqz v2, :cond_15

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-direct {v4, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    iput-object v3, v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->showToast(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;)V

    :cond_15
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_16

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    iput-object v3, v4, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mAlignment:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$Align;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->showToast(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;)V

    :cond_16
    instance-of v2, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    if-eqz v2, :cond_17

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->showToast(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;)V

    :cond_17
    return-void

    :pswitch_11
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/ExternalDisplayTipsComponent;

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/ExternalDisplayTipsComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v2, "$this_apply"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void

    :pswitch_12
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/ChangeEvent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/ExternalDisplayTipsComponent;

    sget-object v2, Lcom/motorola/camera/ui/uicomponents/ExternalDisplayTipsComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v4, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->FIRST_USE:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "show_external_display_tips"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->show()V

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/ExternalDisplayTipsComponent;->externalDisplayAnimation$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_18

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_18
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/ExternalDisplayTipsComponent;->externalDisplayToast$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_19

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b001b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    iget-object v0, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/fsm/camera/FsmContext;->clearBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)V

    :cond_1a
    return-void

    :pswitch_13
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/DialogPopup;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f0a005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1b
    const v4, 0x7f0d001c

    invoke-virtual {v2, v4, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v4, 0x7f0a030c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/AlertPopup;

    sget v4, Lcom/motorola/camera/ui/widgets/AlertPopup;->$r8$clinit:I

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget-object v4, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v4}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v5

    if-eqz v5, :cond_1c

    const v5, 0x7f0a02c2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v5, v4, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v4, v4, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v4

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1c
    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iget v4, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->backgroundColor:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->message:I

    if-eqz v2, :cond_1d

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetMessage(Lcom/motorola/camera/ui/widgets/AlertPopup;I)V

    goto :goto_14

    :cond_1d
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageText:Ljava/lang/String;

    if-eqz v2, :cond_1e

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetMessage(Lcom/motorola/camera/ui/widgets/AlertPopup;Ljava/lang/CharSequence;)V

    goto :goto_14

    :cond_1e
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->messageHTML:Ljava/lang/String;

    if-eqz v2, :cond_1f

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetMessageHTML(Lcom/motorola/camera/ui/widgets/AlertPopup;Ljava/lang/String;)V

    :cond_1f
    :goto_14
    iget v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->title:I

    if-eqz v2, :cond_20

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetTitle(Lcom/motorola/camera/ui/widgets/AlertPopup;I)V

    :cond_20
    iget v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveButtonText:I

    if-eqz v2, :cond_21

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    if-eqz v4, :cond_21

    const v5, 0x7f0a00a6

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/AlertPopup;->mPositiveClickListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    :cond_21
    iget v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeButtonText:I

    if-eqz v2, :cond_22

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    if-eqz v4, :cond_22

    const v5, 0x7f0a00a5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v4, v3, Lcom/motorola/camera/ui/widgets/AlertPopup;->mNegativeClickListener:Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;

    :cond_22
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->keepOrientation:Z

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetKeepOrientation(Lcom/motorola/camera/ui/widgets/AlertPopup;Z)V

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->negativeOnCancel:Z

    invoke-static {v3, v2}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetNegativeOnCancel(Lcom/motorola/camera/ui/widgets/AlertPopup;Z)V

    iget-boolean v0, v0, Lcom/motorola/camera/ui/widgets/AlertPopup$AlertPopupData;->positiveAllCaps:Z

    invoke-static {v3, v0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->-$$Nest$msetPositiveAllCaps(Lcom/motorola/camera/ui/widgets/AlertPopup;Z)V

    iput-object v3, v1, Lcom/motorola/camera/ui/uicomponents/DialogPopup;->mAlertPopup:Lcom/motorola/camera/ui/widgets/AlertPopup;

    iget v0, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    iget-boolean v1, v3, Lcom/motorola/camera/ui/widgets/AlertPopup;->mKeepOrientation:Z

    if-eqz v1, :cond_23

    move v0, v8

    :cond_23
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/AlertPopup;->setOrientation(I)V

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    iget-object v0, v3, Lcom/motorola/camera/ui/widgets/AlertPopup;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_14
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v2, v1, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v3, :cond_24

    if-ltz v0, :cond_24

    iput v3, v2, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mRatioWidth:I

    iput v0, v2, Lcom/motorola/camera/ui/uicomponents/AutoFitSurfaceView;->mRatioHeight:I

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v1, v8}, Lcom/motorola/camera/ui/uicomponents/CameraSurfaceViewComponent;->applyPreviewChange(Z)V

    return-void

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Size cannot be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;

    iget v1, v1, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    invoke-virtual {v0}, Landroidx/core/view/ContentInfoCompat$CompatImpl;->getBitmapFromBuffer()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Lcom/motorola/camera/provider/photos/PhotosProvider;->sTemporarySnapshots:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider;->sTemporarySnapshots:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_15
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v2, :cond_25

    goto :goto_16

    :cond_25
    move v7, v8

    :cond_26
    :goto_16
    if-eqz v7, :cond_27

    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mZoomSegmentValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_27
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
