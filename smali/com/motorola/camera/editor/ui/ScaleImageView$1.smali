.class public final Lcom/motorola/camera/editor/ui/ScaleImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/GestureRecognizer;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$1;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    invoke-direct {p0, p1, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$1;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput p2, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;->UNKNOWN:Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    iget v2, p0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/motorola/camera/ui/UIManager;->getVerticalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    invoke-virtual {p0, p3, p4}, Lcom/motorola/camera/ui/UIManager;->getHorizontalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide p3

    const-string p0, "ON_DOWN"

    invoke-virtual {p2, p0, p3, p4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "DIRECTION"

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p2, p0, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "TYPE"

    invoke-virtual {p2, p0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    const-string p1, "ORIGIN"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->GESTURE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, "GestureRecognizer"

    const-string p1, "Rx invalid fling event. Throwing it away!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_2
    return v1

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/editor/ui/ScaleImageView;

    iget p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mPinchMode:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mScaleAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$ScaleAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->isReady()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/motorola/camera/editor/ui/ScaleImageView;->cancelAllAnimator()V

    new-instance p1, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

    const/high16 p2, 0x42700000    # 60.0f

    div-float/2addr p3, p2

    div-float/2addr p4, p2

    invoke-direct {p1, p0, p3, p4}, Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;-><init>(Lcom/motorola/camera/editor/ui/ScaleImageView;FF)V

    iput-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mFlingAnimator:Lcom/motorola/camera/editor/ui/ScaleImageView$FlingAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_6
    :goto_3
    return v2

    :goto_4
    iget-object p1, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_7
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_5
    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void

    :pswitch_0
    if-nez p1, :cond_0

    const-string p0, "GestureRecognizer"

    const-string p1, "Rx invalid long press event. Throwing it away!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mInLongPress:Z

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v0, "LOCATION"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CAPTURE_TRIGGER"

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/UIManager;->dispatchLongPress(Landroid/os/Bundle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v1, v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mUiEventScale:F

    div-float v4, p3, v1

    div-float v1, p4, v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v5

    iget-object v0, v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz v5, :cond_d

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureSSLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mToggleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ZoomToggleTexture$5;

    invoke-virtual {v5, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :cond_1
    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPreviewType:I

    if-ne v5, v2, :cond_2

    move v3, v2

    :cond_2
    if-eqz v3, :cond_3

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    :goto_0
    invoke-virtual {v5}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v6

    const v7, 0x3cf5c28f    # 0.03f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6, v6}, Lcom/google/common/base/Splitter$1;->inset(FF)V

    if-eqz v3, :cond_4

    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    goto :goto_1

    :cond_4
    iget-object v6, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    :goto_1
    invoke-virtual {v6}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRect()Lcom/google/common/base/Splitter$1;

    move-result-object v6

    if-eqz v3, :cond_5

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    goto :goto_2

    :cond_5
    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    :goto_2
    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->subtract(FF)V

    iget v1, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    const/4 v4, 0x0

    cmpg-float v9, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v10, 0x40000000    # 2.0f

    if-gez v9, :cond_6

    invoke-virtual {v6}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v9, v1

    invoke-virtual {v5}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v1

    div-float/2addr v1, v10

    cmpl-float v1, v9, v1

    if-lez v1, :cond_7

    invoke-virtual {v5}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v1

    invoke-virtual {v6}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v9

    sub-float/2addr v1, v9

    neg-float v1, v1

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v9, v1

    invoke-virtual {v5}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v1

    div-float/2addr v1, v10

    cmpl-float v1, v9, v1

    if-lez v1, :cond_7

    invoke-virtual {v5}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v1

    invoke-virtual {v6}, Lcom/google/common/base/Splitter$1;->width()F

    move-result v9

    sub-float/2addr v1, v9

    :goto_3
    div-float/2addr v1, v10

    iput v1, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    :cond_7
    iget v1, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    cmpg-float v4, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    if-gez v4, :cond_8

    invoke-virtual {v6}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v4

    div-float/2addr v4, v10

    add-float/2addr v4, v1

    invoke-virtual {v5}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v1

    div-float/2addr v1, v10

    cmpl-float v1, v4, v1

    if-lez v1, :cond_9

    invoke-virtual {v5}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v1

    invoke-virtual {v6}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v4

    sub-float/2addr v1, v4

    neg-float v1, v1

    goto :goto_4

    :cond_8
    invoke-virtual {v6}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v4

    div-float/2addr v4, v10

    add-float/2addr v4, v1

    invoke-virtual {v5}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v1

    div-float/2addr v1, v10

    cmpl-float v1, v4, v1

    if-lez v1, :cond_9

    invoke-virtual {v5}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v1

    invoke-virtual {v6}, Lcom/google/common/base/Splitter$1;->height()F

    move-result v4

    sub-float/2addr v1, v4

    :goto_4
    div-float/2addr v1, v10

    iput v1, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    :cond_9
    iput-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-eqz v3, :cond_a

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mMasterCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mSlaveCameraPreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    :goto_5
    invoke-virtual {v1, v8, v7}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPBorderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_b

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v1, v8, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_b
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;->mPIPFrameTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SmoothRectangleTexture;

    if-eqz v1, :cond_c

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/DualCaptureTexture;->mPIPPosition:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v1, v8, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :cond_c
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->PIP_PREVIEW_DRAG:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    goto :goto_7

    :cond_d
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mViewfinderTexture:Lcom/motorola/camera/ui/widgets/gl/textures/viewfinders/DefaultViewfinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :goto_6
    move v2, v3

    :goto_7
    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1
    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_e

    goto/16 :goto_1c

    :cond_e
    iget-object v0, v0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object v0, v0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    check-cast v0, Lcom/motorola/camera/ui/UIManager;

    iget-boolean v6, v0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    if-eqz v6, :cond_f

    goto/16 :goto_10

    :cond_f
    iget v6, v0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/16 v7, 0xb4

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-ne v6, v2, :cond_22

    iget v6, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    if-eqz v6, :cond_11

    if-ne v6, v7, :cond_10

    goto :goto_8

    :cond_10
    move v6, v3

    goto :goto_9

    :cond_11
    :goto_8
    move v6, v2

    :goto_9
    if-nez v6, :cond_12

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_13

    :cond_12
    if-eqz v6, :cond_14

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_14

    :cond_13
    iput v9, v0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_f

    :cond_14
    sget-object v10, Lcom/motorola/camera/settings/FastSettingsManager;->SURFACE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/FastSettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v10, Landroid/graphics/Point;

    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v11}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v11, v11

    const/high16 v12, 0x43f00000    # 480.0f

    div-float/2addr v11, v12

    sget-object v12, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v12}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v12

    const/high16 v13, 0x42480000    # 50.0f

    mul-float/2addr v13, v11

    const/high16 v14, 0x41f00000    # 30.0f

    mul-float/2addr v11, v14

    int-to-float v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    if-nez v6, :cond_15

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v12, v12, v14

    if-gtz v12, :cond_16

    :cond_15
    if-eqz v6, :cond_17

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v12, v12, v14

    if-lez v12, :cond_17

    :cond_16
    move v12, v2

    goto :goto_a

    :cond_17
    move v12, v3

    :goto_a
    if-eqz v6, :cond_18

    iget v14, v5, Landroid/graphics/PointF;->x:F

    cmpg-float v14, v14, v13

    if-ltz v14, :cond_1b

    :cond_18
    iget v14, v5, Landroid/graphics/PointF;->x:F

    iget v15, v10, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    sub-float/2addr v15, v13

    cmpl-float v14, v14, v15

    if-gtz v14, :cond_1b

    if-nez v6, :cond_19

    iget v14, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v14, v14, v13

    if-ltz v14, :cond_1b

    :cond_19
    iget v14, v5, Landroid/graphics/PointF;->y:F

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float/2addr v10, v13

    cmpl-float v10, v14, v10

    if-lez v10, :cond_1a

    goto :goto_b

    :cond_1a
    move v10, v3

    goto :goto_c

    :cond_1b
    :goto_b
    move v10, v2

    :goto_c
    if-nez v6, :cond_1c

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v13, v13, v11

    if-gtz v13, :cond_1d

    :cond_1c
    if-eqz v6, :cond_1e

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v11

    if-lez v6, :cond_1e

    :cond_1d
    move v6, v2

    goto :goto_d

    :cond_1e
    move v6, v3

    :goto_d
    if-eqz v12, :cond_20

    if-nez v10, :cond_1f

    if-eqz v6, :cond_20

    :cond_1f
    move v6, v2

    goto :goto_e

    :cond_20
    move v6, v3

    :goto_e
    if-eqz v6, :cond_21

    iput v8, v0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_f
    iput-object v6, v0, Lcom/motorola/camera/ui/UIManager;->mDragStart:Landroid/graphics/PointF;

    goto :goto_11

    :cond_21
    iput-boolean v2, v0, Lcom/motorola/camera/ui/UIManager;->mScaling:Z

    :goto_10
    move v2, v3

    goto/16 :goto_1e

    :cond_22
    :goto_11
    iget v6, v0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const-string v10, "IS_TOUCHED"

    const-string v11, "ORIGIN"

    const-string v12, "ENABLE"

    const-string v13, "ORIENTATION"

    const-string v14, "TYPE"

    const-string v15, "DIRECTION"

    const-string v7, "DELTA_VALUE"

    const-string v2, "VALUE"

    if-ne v6, v9, :cond_27

    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/ui/UIManager;->getVerticalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v6

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iget-object v3, v0, Lcom/motorola/camera/ui/UIManager;->mDragStart:Landroid/graphics/PointF;

    iget v8, v3, Landroid/graphics/PointF;->x:F

    neg-float v8, v8

    iget v3, v3, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    invoke-virtual {v9, v8, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v3, 0x2

    new-array v8, v3, [F

    const/4 v3, 0x0

    aput v1, v8, v3

    const/16 v16, 0x1

    aput v4, v8, v16

    invoke-virtual {v9, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget v3, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    move/from16 v17, v1

    const/16 v1, 0xb4

    if-eqz v3, :cond_24

    if-ne v3, v1, :cond_23

    goto :goto_12

    :cond_23
    const/4 v3, 0x0

    aget v8, v8, v3

    goto :goto_13

    :cond_24
    :goto_12
    aget v8, v8, v16

    :goto_13
    invoke-virtual {v9, v2, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v3, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    if-eqz v3, :cond_26

    if-ne v3, v1, :cond_25

    goto :goto_14

    :cond_25
    move/from16 v1, p3

    goto :goto_15

    :cond_26
    :goto_14
    move/from16 v1, p4

    :goto_15
    invoke-virtual {v9, v7, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v9, v15, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v9, v14, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v3, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {v9, v13, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v9, v12, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v9, v11, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v9, v10, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_VERTICAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v9, v6}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_16

    :cond_27
    move/from16 v17, v1

    :goto_16
    iget v1, v0, Lcom/motorola/camera/ui/UIManager;->mDragDirection:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2d

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->isGestureNavigateEnabled()Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, v0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-object v3, v3, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v3, v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v3

    iget v3, v5, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    if-lt v3, v1, :cond_28

    goto/16 :goto_1b

    :cond_28
    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/motorola/camera/ui/UIManager;->getHorizontalDirection(FF)Lcom/motorola/camera/fsm/camera/Trigger$DragDirection;

    move-result-object v3

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iget-object v8, v0, Lcom/motorola/camera/ui/UIManager;->mDragStart:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    neg-float v9, v9

    iget v8, v8, Landroid/graphics/PointF;->y:F

    neg-float v8, v8

    invoke-virtual {v6, v9, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v1, v8, v9

    const/4 v1, 0x1

    aput v4, v8, v1

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget v6, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    const/16 v9, 0xb4

    if-eqz v6, :cond_2a

    if-ne v6, v9, :cond_29

    goto :goto_17

    :cond_29
    aget v6, v8, v1

    goto :goto_18

    :cond_2a
    :goto_17
    const/4 v1, 0x0

    aget v6, v8, v1

    :goto_18
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    if-eqz v1, :cond_2c

    if-ne v1, v9, :cond_2b

    goto :goto_19

    :cond_2b
    move/from16 v1, p4

    goto :goto_1a

    :cond_2c
    :goto_19
    move/from16 v1, p3

    :goto_1a
    invoke-virtual {v4, v7, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v4, v15, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v4, v14, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v2, v0, Lcom/motorola/camera/ui/UIManager;->mOrientation:I

    invoke-virtual {v4, v13, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v12, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v4, v11, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v10, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->DRAG_HORIZONTAL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    goto :goto_1d

    :cond_2d
    :goto_1b
    const/4 v1, 0x1

    goto :goto_1d

    :cond_2e
    :goto_1c
    move v1, v2

    const-string v0, "GestureRecognizer"

    const-string v2, "Rx invalid scroll event. Throwing it away!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    move v2, v1

    :goto_1e
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    iget v0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-string p0, "GestureRecognizer"

    const-string p1, "Rx invalid single tap  event. Throwing it away!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/editor/ui/ScaleImageView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object p0, p0, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Lcom/motorola/camera/ui/GestureRecognizer$Listener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    check-cast p0, Lcom/motorola/camera/ui/UIManager;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/UIManager;->mDownEventHandled:Z

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v6

    iget-object v6, v6, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    const-string p1, "ENABLE"

    invoke-static {p1, v0}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v1, "LOCATION"

    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "CAPTURE_TRIGGER"

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->TOUCH:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "ON_UP"

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    sget-boolean v1, Lcom/motorola/camera/Util;->KPI_TIMELINE:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "ON_UP preview"

    invoke-static {v1}, Lcom/motorola/camera/CameraKpi;->logKeyProgress(Ljava/lang/String;)V

    :cond_3
    sget-boolean v1, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/CameraKpi$KPI;->TAP_TO_TAKE_PICTURE:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_4
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "TIMER"

    if-eqz v1, :cond_5

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    const-string v1, "ON_DOWN"

    iget-wide v3, p0, Lcom/motorola/camera/ui/UIManager;->mOnDownTimestamp:J

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/motorola/camera/ui/UIManager;->mController:Lcom/motorola/camera/Controller;

    iget-boolean v1, v1, Lcom/motorola/camera/Controller;->mIsSplitScreen:Z

    const-string v3, "IS_SPLIT_SCREEN"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/UIManager;->isCliDisplay()Z

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPhotoBoothMode()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/16 v3, 0xdac

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "IS_PHOTO_BOOTH_CAPTURE_TIMES"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    xor-int/2addr v0, v1

    const-string v1, "TIMER_CANCEL_UI"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SINGLE_TAP_UP:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1, p1, v5}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/UIManager;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->TOGGLE_TAP_PREVIEW:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_1
    move v0, v5

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
