.class public final Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mFrameIndex:I

.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;II)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->mFrameIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mWidth:I

    iget v2, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iget p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->mFrameIndex:I

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->getInputImage(ILandroid/graphics/Bitmap;Z)V

    iget-object p0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->getmMarginX()I

    move-result p0

    iget-object v2, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v2}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->getmMarginY()I

    move-result v2

    iget-object v3, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v3}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->getOffsetWidth()I

    move-result v3

    iget-object v4, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v4}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->getOffsetheight()I

    move-result v4

    invoke-static {v1, p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSelectedBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    iput-object p0, v0, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->updatePreviewFrame()Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_0
    return-void

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v2, v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mLockBitmapPreview:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v4, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mBitmapPreview:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v5, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iget v6, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->mFrameIndex:I

    iget-object v3, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v3}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->getSelectionStartFrame()I

    move-result v3

    sub-int/2addr v6, v3

    invoke-virtual {v5, v4, v6}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->createSingleFrame(Landroid/graphics/Bitmap;I)V

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v4, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    iget-object v3, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mBitmapPreview:Landroid/graphics/Bitmap;

    iput-object v3, v4, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->updatePreviewFrame()Z

    move-result v3

    iget-object v4, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v4, v4, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->updateDrawDuration(J)V

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$LoadInputFrameRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    new-instance v1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v3, 0x18

    invoke-direct {v1, p0, v3}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
