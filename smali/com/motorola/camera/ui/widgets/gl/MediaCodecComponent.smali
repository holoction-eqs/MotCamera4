.class public final Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;


# instance fields
.field public final audioLensSwitchPIPWindowSettingListener:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;

.field public final audioLensSwitchSettingListener:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;

.field public final mAudioLensSwitchHandler:Landroidx/preference/PreferenceFragmentCompat$1;

.field public mAudioLensSwitchSetup:Z

.field public final mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

.field public mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/TextureManager;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    new-instance p2, Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p2, p0, v0, v1}, Landroidx/preference/PreferenceFragmentCompat$1;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->audioLensSwitchSettingListener:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->audioLensSwitchPIPWindowSettingListener:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;

    new-instance p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    invoke-direct {p2, p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    return-void
.end method


# virtual methods
.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 9

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v5, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v6, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v7, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSED_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v8, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array/range {v1 .. v8}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaCodecComponent"

    return-object p0
.end method

.method public final loadTextures()Z
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->loadTexture()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->registerListener(Z)V

    return v0
.end method

.method public final onDraw([F[F[F)V
    .locals 8

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v0, p3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    if-eqz v0, :cond_3

    monitor-enter v0

    :try_start_0
    iget-object v3, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v3, :cond_2

    iget-object v4, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v4, v5, :cond_2

    iget-object v5, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v5, v6, :cond_2

    iget-object v6, v0, Lcom/motorola/camera/utility/EGLHelper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3, v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->makeCurrent(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    move v0, v1

    goto :goto_2

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    iget-object v3, p3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    if-eqz v3, :cond_4

    if-nez v0, :cond_6

    :cond_4
    const-string v3, "MediaCodecEngine"

    const-string v4, "egl makeCurrent fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p3, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p3, v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v2

    :cond_6
    :goto_4
    if-eqz v0, :cond_c

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {p3, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object p3, p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p3}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_a

    iget-object p3, p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {p3, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_7

    :cond_7
    iget-object p3, p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-object p2, p2, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    iget-wide v5, p2, Lcom/motorola/camera/capturedmediadata/RecordingTime;->mPauseDuration:J

    sub-long/2addr v3, v5

    monitor-enter p3

    :try_start_1
    iget-object p2, p3, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz p2, :cond_9

    iget-object p2, p3, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq p2, v0, :cond_9

    iget-object p2, p3, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq p2, v0, :cond_9

    iget-object p2, p3, Lcom/motorola/camera/utility/EGLHelper;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p2, v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object p2

    const/16 v0, 0x3059

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-static {p2, v0, v3, v4}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    iget-object p2, p3, Lcom/motorola/camera/utility/EGLHelper;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p3, Lcom/motorola/camera/utility/EGLHelper;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p3, Lcom/motorola/camera/utility/EGLHelper;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->TAG:Ljava/lang/String;

    const-string v3, "egl"

    invoke-static {p2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "display"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "surface"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const-string v0, "eglSwapBuffers"

    invoke-static {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p3

    goto :goto_6

    :cond_9
    :goto_5
    monitor-exit p3

    move v1, v2

    :goto_6
    move v2, v1

    goto :goto_7

    :catchall_1
    move-exception p0

    monitor-exit p3

    throw p0

    :cond_a
    :goto_7
    if-eqz v2, :cond_b

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_b
    const/4 p2, 0x0

    :goto_8
    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGL10:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-static {p1, p2, p3, p0}, Lcom/motorola/camera/ui/widgets/gl/EglToolBox;->makeCurrent(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_c
    return-void
.end method

.method public final onDrawFbo([F[F[F)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->drawFbo([F[F)V

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object p0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final onStatus(I)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchHandler:Landroidx/preference/PreferenceFragmentCompat$1;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "unknown audio lens switch status:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaCodecComponent"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final processDualCapture(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/nio/Buffer;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;I)V
    .locals 8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentModeSupportP3(I)Z

    move-result v6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-virtual {p0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    rem-int/lit16 p0, p4, 0xb4

    if-nez p0, :cond_1

    add-int/lit16 p4, p4, 0xb4

    rem-int/lit16 p4, p4, 0x168

    :cond_1
    move v3, p4

    new-instance v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;

    invoke-direct {v5, p3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;-><init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V

    sget-object p0, Lcom/motorola/camera/saving/SaveImageService$LazyLoader;->INSTANCE:Lcom/motorola/camera/saving/SaveImageService;

    iget-object p0, p0, Lcom/motorola/camera/saving/SaveImageService;->mServiceHandler:Landroid/os/Handler;

    new-instance p2, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;

    move-object v1, p2

    move-object v4, p3

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/motorola/camera/saving/SaveImageService$$ExternalSyntheticLambda7;-><init>(Landroid/graphics/Bitmap;ILcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData;ZLcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, "MediaCodecComponent"

    const-string p2, "Capture failed due to invalid bitmap"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->CAPTURE_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p1, p0}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :goto_1
    return-void
.end method

.method public final registerListener(Z)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->audioLensSwitchPIPWindowSettingListener:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->audioLensSwitchSettingListener:Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda2;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->DUAL_CAPTURE_AUDIO_LENS_SWITCH_PIP_WINDOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V

    :goto_0
    return-void
.end method

.method public final declared-synchronized setupAudioLensSwitch()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchSetup:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoo;->INSTANCE:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->initAudioLensSwitch(Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioLensSwitchMode:Z

    iput-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v3, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    if-nez v3, :cond_1

    iget v3, v1, Lcom/motorola/camera/PreviewSize;->width:I

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v3, v1}, Lcom/motorola/camera/ProfileSelector;->selectProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    :cond_1
    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->initAudioRecord()V

    iget-object v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    monitor-exit v0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-nez v0, :cond_3

    const-string v0, "MediaCodecComponent"

    const-string v1, "Failed to get CameraPreview component, skip to update audio lens switch flag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->ENABLED:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->updateAudioLensSwitchFlag(ZLcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iput-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mAudioLensSwitchEnabled:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchSetup:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final startAudioLensSwitchAnimation(FZ)V
    .locals 25

    move/from16 v8, p1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-nez v0, :cond_0

    const-string v0, "MediaCodecComponent"

    const-string v1, "Failed to get CameraPreview component, skip to update dual capture texture alpha"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v9, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    if-eqz p2, :cond_1

    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v10, v9, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    const/4 v13, 0x1

    iget-object v14, v9, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    iget-object v15, v9, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_6

    cmpl-float v16, v8, v1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;->PIP_LIGHT:Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture$AudioLensSwitchFlag;

    if-nez v16, :cond_2

    iget-object v2, v9, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v2, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_2
    cmpl-float v0, v8, v0

    if-nez v0, :cond_3

    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v7, v1, v0

    iget-object v6, v9, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v6, v7}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;

    invoke-direct {v1, v9, v8, v13}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;FI)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v14}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getAlpha()F

    move-result v4

    const/16 v23, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v0, v5

    move-object v12, v5

    move/from16 v5, p1

    move-object v13, v6

    move/from16 v6, v18

    move v11, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v12, v11}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v2, 0x0

    aput-object v15, v1, v2

    const/4 v2, 0x1

    aput-object v14, v1, v2

    iget v2, v9, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v12, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    if-nez v16, :cond_4

    const v21, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_4
    move/from16 v21, v8

    :goto_0
    if-nez v16, :cond_5

    goto :goto_1

    :cond_5
    const v8, 0x3ecccccd    # 0.4f

    :goto_1
    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;

    invoke-direct {v3, v9, v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModesSliderTexture$8;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;FI)V

    const-wide/16 v19, 0x12c

    const/16 v24, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v22, v8

    invoke-direct/range {v17 .. v24}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, v12, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    iget v0, v9, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v12, v0, v10}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v14, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    sub-float v3, v1, v8

    invoke-virtual {v15, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    cmpl-float v0, v8, v0

    if-nez v0, :cond_7

    const/4 v11, 0x1

    goto :goto_2

    :cond_7
    move v11, v2

    :goto_2
    if-eqz v14, :cond_8

    invoke-virtual {v14, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_8
    if-eqz v15, :cond_9

    invoke-virtual {v15, v11}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_9
    cmpl-float v0, v8, v1

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    const v8, 0x3ecccccd    # 0.4f

    :goto_3
    invoke-virtual {v10, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/ToggleTexture;->setAlpha(F)V

    iget-object v0, v9, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    :cond_b
    :goto_4
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 13

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    invoke-static {v0}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getDualCapturePreviewFboSize()Lcom/motorola/camera/PreviewSize;

    move-result-object v0

    goto/16 :goto_5

    :cond_3
    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/motorola/camera/settings/SettingsManager;->LOGICAL_ZOOM_TYPES:Ljava/util/List;

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v6

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v7

    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v8, v8, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    if-eqz v9, :cond_4

    iget v9, v8, Landroid/graphics/Point;->y:I

    if-nez v9, :cond_5

    :cond_4
    invoke-static {v5, v2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v8

    :cond_5
    iget v5, v8, Landroid/graphics/Point;->x:I

    iget v9, v8, Landroid/graphics/Point;->y:I

    if-gt v5, v9, :cond_6

    move v5, v2

    goto :goto_2

    :cond_6
    move v5, v1

    :goto_2
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/ArraysUtilJVM;->getArea(Landroid/util/Size;)I

    move-result v9

    iget v10, v8, Landroid/graphics/Point;->x:I

    iget v11, v8, Landroid/graphics/Point;->y:I

    mul-int/2addr v10, v11

    if-gt v9, v10, :cond_8

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v9

    iget v10, v8, Landroid/graphics/Point;->x:I

    iget v11, v8, Landroid/graphics/Point;->y:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-gt v9, v10, :cond_8

    new-instance v0, Lcom/motorola/camera/PreviewSize;

    if-eqz v5, :cond_7

    invoke-direct {v0, v6, v7}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    goto :goto_5

    :cond_7
    invoke-direct {v0, v7, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->getPreviewSizes(Lcom/motorola/camera/settings/CameraType;)[Landroid/util/Size;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/motorola/camera/PreviewSize;->transformFrom(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v10, v4, v8, v0}, Lcom/motorola/camera/settings/SettingsHelper$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/PreviewSize;

    new-instance v1, Lcom/motorola/camera/PreviewSize;

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v4

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v0

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v4

    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v0

    :goto_3
    invoke-direct {v1, v4, v0}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    move-object v0, v1

    goto :goto_5

    :cond_b
    :goto_4
    new-instance v0, Lcom/motorola/camera/PreviewSize;

    if-eqz v5, :cond_c

    invoke-direct {v0, v6, v7}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    goto :goto_5

    :cond_c
    invoke-direct {v0, v7, v6}, Lcom/motorola/camera/PreviewSize;-><init>(II)V

    :cond_d
    :goto_5
    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget-object v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v5

    if-eqz v5, :cond_e

    iget v5, v0, Lcom/motorola/camera/PreviewSize;->width:I

    goto :goto_6

    :cond_e
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMin()I

    move-result v5

    :goto_6
    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    if-eqz v6, :cond_f

    iget v0, v0, Lcom/motorola/camera/PreviewSize;->height:I

    goto :goto_7

    :cond_f
    invoke-virtual {v0}, Lcom/motorola/camera/PreviewSize;->getMax()I

    move-result v0

    :goto_7
    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getSize()Landroid/graphics/Point;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    :cond_10
    iget-object v6, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mPreviewOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v6, v5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->getUiContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayRealSize(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_8

    :cond_11
    invoke-static {}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getMainDisplayRealSize()Landroid/graphics/Point;

    move-result-object v2

    :goto_8
    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v6

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    neg-float v4, v4

    neg-float v2, v2

    const/4 v8, 0x0

    invoke-direct {v7, v4, v2, v8}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v1, v3, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    int-to-float v2, v5

    div-float/2addr v2, v6

    int-to-float v0, v0

    div-float/2addr v0, v6

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostScale(FFF)V

    invoke-virtual {v1, v8, v3, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setPostRotation(FFF)V

    :cond_12
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v0, Lcom/motorola/camera/fsm/camera/UseCase;->CAMERA_INIT:Lcom/motorola/camera/fsm/camera/UseCase;

    invoke-static {p1, v0}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isUseCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/UseCase;)Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchEnabled()Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->setupAudioLensSwitch()V

    goto/16 :goto_1c

    :cond_13
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PREPARE_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_24

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMirrorSupported()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v3

    if-nez v3, :cond_14

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_14

    move v3, v2

    goto :goto_9

    :cond_14
    move v3, v1

    :goto_9
    if-eqz v3, :cond_17

    iput-boolean v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieShouldFlip:Z

    const/16 v3, 0x10e

    const/4 v6, -0x1

    if-eq v3, v0, :cond_16

    const/16 v3, 0x5a

    if-ne v3, v0, :cond_15

    goto :goto_a

    :cond_15
    iput v6, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipX:I

    iput v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipY:I

    goto :goto_b

    :cond_16
    :goto_a
    iput v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipX:I

    iput v6, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieFlipY:I

    goto :goto_b

    :cond_17
    iput-boolean v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mSelfieShouldFlip:Z

    :cond_18
    :goto_b
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->getEGLHelper()Lcom/motorola/camera/utility/EGLHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    iget-boolean v6, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz v6, :cond_19

    if-eqz v0, :cond_19

    iput-object v0, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    :cond_19
    iget-object v0, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/Flags;->clear()V

    invoke-static {v3}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v7

    sget-object v8, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->ERROR:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    const-string v9, "MediaCodecEngine"

    iget-object v10, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    if-nez v7, :cond_1a

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Setup media codec with invalid preview size: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto/16 :goto_f

    :cond_1a
    iput-object v3, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-boolean v7, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioLensSwitchMode:Z

    if-eqz v7, :cond_1c

    iget-object v7, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V

    iput-object v5, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_1b
    iput-object v5, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    :cond_1c
    iget-object v7, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    if-nez v7, :cond_1d

    iget v7, v3, Lcom/motorola/camera/PreviewSize;->width:I

    iget v11, v3, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v7, v11}, Lcom/motorola/camera/ProfileSelector;->selectProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v7

    iput-object v7, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    :cond_1d
    :try_start_0
    new-instance v7, Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->createMediaCodec(Lcom/motorola/camera/PreviewSize;)Landroid/media/MediaCodec;

    move-result-object v11

    new-instance v12, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;

    invoke-direct {v12, p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$EncoderCallback;-><init>(Lcom/motorola/camera/mediacodec/MediaCodecEngine;)V

    invoke-direct {v7, v11, v12}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;-><init>(Landroid/media/MediaCodec;Lcom/motorola/camera/mediacodec/MediaCodecHelperCallback;)V

    iput-object v7, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz v6, :cond_1e

    iput-boolean v2, v7, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->isUsingVideoSurface:Z

    iget-object v7, v7, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v7

    const-string v11, "codec.createInputSurface()"

    invoke-static {v7, v11}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCodecSurface:Landroid/view/Surface;

    :cond_1e
    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->MICROPHONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v7}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x3

    if-ne v7, v11, :cond_1f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureVideoMode()Z

    move-result v7

    if-eqz v7, :cond_21

    :cond_1f
    sget-object v7, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v11, "audio"

    invoke-virtual {v7, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    if-eqz v7, :cond_20

    invoke-virtual {v7}, Landroid/media/AudioManager;->getMode()I

    move-result v7

    if-ne v7, v4, :cond_20

    move v7, v2

    goto :goto_c

    :cond_20
    move v7, v1

    :goto_c
    if-nez v7, :cond_21

    move v7, v2

    goto :goto_d

    :cond_21
    move v7, v1

    :goto_d
    if-eqz v7, :cond_22

    invoke-virtual {p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->initAudioRecord()V

    invoke-virtual {p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->initAudioCodecHelper()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v4

    :cond_22
    if-eqz v6, :cond_23

    goto :goto_e

    :cond_23
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v4}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v10

    check-cast v7, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v7}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v7

    invoke-static {p0, v4, v6, v7}, Lcom/motorola/camera/Util;->correctOrientationRelativeToSensor(IIIZ)I

    move-result p0

    :goto_e
    new-instance v4, Ljava/util/concurrent/CyclicBarrier;

    new-instance v6, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    invoke-direct {v6, p1, p0, v1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;II)V

    invoke-direct {v4, v2, v6}, Ljava/util/concurrent/CyclicBarrier;-><init>(ILjava/lang/Runnable;)V

    iput-object v4, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    new-instance v2, Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-direct {v2}, Lcom/motorola/camera/capturedmediadata/RecordingTime;-><init>()V

    iput-object v2, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    new-instance v2, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    invoke-direct {v2}, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;-><init>()V

    iput-object v2, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    new-instance v4, Lcom/motorola/camera/saving/FileName;

    sget-object v6, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    iget-wide v11, v2, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mCaptureTime:J

    invoke-direct {v4, v6, v11, v12}, Lcom/motorola/camera/saving/FileName;-><init>(Lcom/motorola/camera/ShotType;J)V

    :try_start_1
    invoke-virtual {v4}, Lcom/motorola/camera/saving/FileName;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/storage/StorageUtils;->getCameraMediaFilePathWithFallback(Ljava/lang/String;)Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/storage/MediaFile;->fromMediaFilePath(Lcom/motorola/camera/storage/MediaFilePath;)Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    move-result-object v5

    iget-object v2, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    invoke-virtual {v3}, Lcom/motorola/camera/PreviewSize;->toSize()Landroid/util/Size;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputSize:Landroid/util/Size;

    iget-object v2, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    iput p0, v2, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOrientation:I

    iput-object v4, v2, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mFileName:Lcom/motorola/camera/saving/FileName;

    iput-object v5, v2, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mMediaFile:Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-virtual {v5}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->getWriteFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    iput-object p0, v2, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputFD:Ljava/io/FileDescriptor;

    new-instance p0, Landroid/media/MediaMuxer;

    iget-object v2, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaData:Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;

    iget-object v2, v2, Lcom/motorola/camera/capturedmediadata/CodecVideoMediaData;->mOutputFD:Ljava/io/FileDescriptor;

    invoke-direct {p0, v2, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object p0, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mMediaMuxer:Landroid/media/MediaMuxer;

    sget-object p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->LOADED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PREPARED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    move-object p1, v10

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1c

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "setup failed,filename:%s,message:%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/motorola/camera/storage/StorageUtils;->deleteSilently(Lcom/motorola/camera/storage/MediaFile;)V

    invoke-virtual {v0, v8}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    goto :goto_f

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Unable to create encoder:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v5, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    iput-object v5, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    iput-object v5, p1, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    :goto_f
    check-cast v10, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v10, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto/16 :goto_1c

    :cond_24
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RECORDING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    monitor-enter p0

    :try_start_2
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_25

    goto :goto_10

    :cond_25
    :try_start_3
    iget-boolean p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mIsUsingVideoSurface:Z

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mEglHelper:Lcom/motorola/camera/utility/EGLHelper;

    iget-object v0, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCodecSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/EGLHelper;->createWindowSurface(Landroid/view/Surface;)V

    :cond_26
    invoke-virtual {p0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->startEngine()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_10

    :catch_2
    move-exception p1

    :try_start_4
    const-string v0, "MediaCodecEngine"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    const v2, 0x7f120158

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(I)V

    iput v3, v1, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-virtual {v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->build()Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_ERROR:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_10
    monitor-exit p0

    goto/16 :goto_1c

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_27
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_PAUSING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    monitor-enter p0

    :try_start_5
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_11

    :cond_28
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setPauseTime(Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    iget-object p1, p1, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->PAUSE:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz p1, :cond_29

    iget-object p1, p1, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_29
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_PAUSED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_11
    monitor-exit p0

    goto/16 :goto_1c

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_RESUME_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    monitor-enter p0

    :try_start_6
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_12

    :cond_2b
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRecordingTime:Lcom/motorola/camera/capturedmediadata/RecordingTime;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/motorola/camera/capturedmediadata/RecordingTime;->setResumeTime(Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mVideoCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    iget-object p1, p1, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->RESUME:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    if-eqz p1, :cond_2c

    iget-object p1, p1, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->eventQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_2c
    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->RECORDING_RESUMED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_12
    monitor-exit p0

    goto/16 :goto_1c

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2d
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_CAPTURE_CODEC_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget v10, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result p1

    if-nez p1, :cond_2f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_13

    :cond_2e
    move-object p1, v5

    goto :goto_14

    :cond_2f
    :goto_13
    sget-object p1, Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;->SINGLE_SHOT:Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;

    invoke-virtual {v8, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->getBundle(Lcom/motorola/camera/fsm/camera/FsmContext$BundleType;)Landroid/os/Bundle;

    move-result-object p1

    :goto_14
    new-instance v9, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    invoke-static {}, Lcom/motorola/camera/fsm/camera/states/runnables/ConfigureCaptureRequestRunnable;->getNewCaptureSequenceId()I

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoFamilyMode()Z

    move-result v3

    if-eqz v3, :cond_30

    sget-object v3, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    goto :goto_15

    :cond_30
    sget-object v3, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    :goto_15
    invoke-direct {v9, v0, v1, p1, v3}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    sget-object p1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p1, v0, v5}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result p1

    if-nez p1, :cond_32

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_16

    :cond_31
    move p1, v1

    goto :goto_17

    :cond_32
    :goto_16
    move p1, v2

    :goto_17
    if-eqz p1, :cond_33

    sget-object p1, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-static {p1}, Lcom/motorola/camera/ui/SettingSoundPlayer;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p1

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_33
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCapturePhotoMode()Z

    move-result p1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    if-eqz p1, :cond_34

    invoke-virtual {v9, v8}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;

    const/4 v11, 0x0

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;II)V

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v1, 0x10

    invoke-direct {p0, v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1c

    :cond_34
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {v9, v8}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {p1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/IMeisheRender;

    move-object v1, v0

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-nez v1, :cond_35

    move-object v1, v5

    goto :goto_18

    :cond_35
    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectName:Ljava/lang/String;

    :goto_18
    if-eqz v1, :cond_37

    iget-object v1, v9, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v2, "ANALYTICS_MIRROR_EFFECT_NAME"

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-nez v0, :cond_36

    goto :goto_19

    :cond_36
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectName:Ljava/lang/String;

    :goto_19
    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;

    const/4 v11, 0x1

    move-object v6, v0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;II)V

    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v1, 0x11

    invoke-direct {p0, v1, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_1c

    :cond_38
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p1

    invoke-virtual {v9, p1, v1}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/settings/CameraType;Z)V

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v8, v9, v10}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_1c

    :cond_39
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->CODEC_VIDEO_STOP_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :goto_1a
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    goto :goto_1b

    :cond_3a
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->stopAudioLensSwitch()V

    goto :goto_1a

    :goto_1b
    iget-object p1, p1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->stop(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    :cond_3b
    :goto_1c
    return-void
.end method

.method public final declared-synchronized stopAudioLensSwitch()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchSupported(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchSetup:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecEngine:Lcom/motorola/camera/mediacodec/MediaCodecEngine;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioLensSwitchMode:Z

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/motorola/camera/mediacodec/MediaCodecHelper;->stop()V

    iput-object v3, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioCodecHelper:Lcom/motorola/camera/mediacodec/MediaCodecHelper;

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    iput-object v3, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_2
    iget-boolean v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioLensSwitchMode:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioLensSwitchMode:Z

    iput-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget-object v3, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    if-nez v3, :cond_3

    iget v3, v2, Lcom/motorola/camera/PreviewSize;->width:I

    iget v2, v2, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-static {v3, v2}, Lcom/motorola/camera/ProfileSelector;->selectProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    :cond_3
    invoke-virtual {v0}, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->initAudioRecord()V

    iget-object v2, v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :try_start_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    :goto_0
    :try_start_4
    monitor-exit v0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->mAudioLensSwitchEnabled:Z

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoo;->INSTANCE:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->stopAudioLensSwitch()V

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-nez v0, :cond_6

    const-string v0, "MediaCodecComponent"

    const-string v2, "Failed to get CameraPreview component, skip to reset audio lens switch textures"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->isDualCaptureTextureEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->resetAudioLensSwitchTextures()V

    :cond_7
    :goto_1
    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mAudioLensSwitchSetup:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final unloadTextures()V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->mCodecTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/CodecTexture;->unloadTexture()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->registerListener(Z)V

    return-void
.end method
