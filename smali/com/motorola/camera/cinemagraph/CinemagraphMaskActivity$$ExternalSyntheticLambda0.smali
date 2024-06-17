.class public final synthetic Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    const v2, 0x7f1202ad

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_1
    sget v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->hideSystemUi()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mOriginalMaskBytes:[B

    if-nez v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mHeight:I

    iget v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mWidth:I

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mOriginalMaskBytes:[B

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v2, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getMask([B)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->clearMask()V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mOriginalMaskBytes:[B

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->drawMaskFromBits([B)V

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->isEmptyMask()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mDrawMaskCallback:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView$DrawMaskCallback;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/airbnb/lottie/model/MutablePair;

    iget-object v2, v0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v2, v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback$$ExternalSyntheticLambda0;-><init>(Lcom/airbnb/lottie/model/MutablePair;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->updateMaskToEngine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    const v2, 0x7f1200a8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinnerText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionEndFrame()I

    move-result v0

    iget v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mFrameNum:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsBounce:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->restartEngine()V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setBaseIndex(I)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v2}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionEndFrame()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->addImages(II)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->updateMaskToEngine()V

    :cond_3
    sget-boolean v0, Lcom/motorola/camera/storage/MediaVolumesHolder;->isFreeBytesUpdated:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/motorola/camera/ShotType;->CINEMA_GRAPH:Lcom/motorola/camera/ShotType;

    invoke-static {v0}, Lcom/motorola/camera/storage/StorageUtils;->isFreeBytesSufficientWithFallback(Lcom/motorola/camera/ShotType;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CINEMAGRAPH_DEBUG:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->saveDebugFrames()V

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    new-instance v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;

    invoke-direct {v1, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$2;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    iget-boolean v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsBounce:Z

    iget-boolean v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsVideo:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->createFinalCinemagraph(Lcom/motorola/camera/cinemagraph/CinemagraphEngine$ProcessingCallback;ZZ)V
    :try_end_1
    .catch Lcom/motorola/camera/cinemagraph/CinemagraphException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createFinalCinemagraph returned with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CinemagraphMaskActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/CameraApp;->postRunnable(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
