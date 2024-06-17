.class public final Lcom/motorola/camera/CameraIntentReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 13

    iget v0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->$r8$classId:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget v0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->$r8$clinit:I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mIsTimerRunning:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;

    invoke-direct {v6, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown$2;-><init>(Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;I)V

    const-wide/16 v7, 0x3e8

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e99999a    # 0.3f

    const/4 v11, 0x2

    div-int/lit16 p1, p1, 0x3e8

    add-int/lit8 v12, p1, -0x1

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {p1, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mCounterText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p1, v0, v4}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    if-ne v1, v0, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;->mIsTimerRunning:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TimerCountdown;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TIMER_COMPLETE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_2
    :goto_1
    return v4

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    return v3

    :cond_3
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/work/WorkQuery;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/work/WorkQuery;->mIds:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Landroidx/work/WorkQuery;->mTags:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v2

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/CameraIntentReceiver;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    sget-object v0, Lcom/motorola/camera/CameraIntentReceiver;->VIBRATE_PATTERN:[J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.systemui.camera_launch_source"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1}, Lcom/motorola/camera/Util;->getIntentSource(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    const-string v6, "motorola.intent.extra.CALLER"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    sget-boolean v7, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object v7

    sget-object v8, Lcom/motorola/camera/CameraKpi$KPI;->CAMERA_RECEIVER:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {v7, v8}, Lcom/motorola/camera/CameraKpi;->startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    :cond_5
    invoke-static {}, Lcom/motorola/camera/utility/KeyguardHelper;->isKeyguardLocked()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    const-string v7, "device_policy"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_7

    move v1, v4

    goto :goto_4

    :cond_7
    :goto_3
    move v1, v3

    :goto_4
    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    const-string v1, "wiggle_gesture"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->QUICK_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v7, v2, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v7, v2}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_5
    move v3, v4

    goto :goto_8

    :cond_9
    iget v2, v0, Lcom/motorola/camera/CameraApp;->mResumeRefCount:I

    if-lez v2, :cond_a

    move v2, v4

    goto :goto_6

    :cond_a
    move v2, v3

    :goto_6
    if-eqz v2, :cond_c

    new-instance v0, Landroid/content/Intent;

    const-string v2, "motorola.camera.intent.action.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->MEDIA_CONTROL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {p0, p1}, Lcom/motorola/camera/CameraIntentReceiver;->onActivityRunning(Landroid/content/Intent;)V

    goto :goto_5

    :cond_c
    iget v0, v0, Lcom/motorola/camera/CameraApp;->mStartRefCount:I

    if-lez v0, :cond_d

    move v0, v4

    goto :goto_7

    :cond_d
    move v0, v3

    :goto_7
    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/motorola/camera/CameraIntentReceiver;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    :cond_f
    invoke-virtual {p0, v5, p1}, Lcom/motorola/camera/CameraIntentReceiver;->onActivityStopped(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_5

    :goto_8
    xor-int/lit8 p1, v3, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/CameraIntentReceiver;->mIntentEnqueued:Z

    return v4

    :goto_9
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v0

    iget v5, p1, Landroid/os/Message;->what:I

    aget v0, v0, v5

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/4 v5, 0x3

    if-eqz v0, :cond_1a

    if-eq v0, v4, :cond_19

    if-eq v0, v1, :cond_18

    if-eq v0, v5, :cond_17

    const/4 p1, 0x4

    if-eq v0, p1, :cond_15

    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    goto/16 :goto_f

    :cond_10
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->cancelAnimation(I)V

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    if-eqz v1, :cond_11

    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mSupportsExposureComp:Z

    if-eqz v3, :cond_12

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mExposureTex:Lcom/motorola/camera/ui/widgets/gl/textures/ExposureSliderTexture;

    goto :goto_a

    :cond_11
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture;

    :cond_12
    :goto_a
    if-nez v2, :cond_13

    goto/16 :goto_f

    :cond_13
    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v1, :cond_14

    const v1, 0x3ec28f5c    # 0.38f

    goto :goto_b

    :cond_14
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_b
    move v10, v1

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;

    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$6;

    invoke-direct {v6, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture$6;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    const-wide/16 v7, 0x1f4

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;-><init>(Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;JFFII)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, v1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    invoke-virtual {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    goto/16 :goto_f

    :cond_15
    iget-object v0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchArea:Landroid/graphics/PointF;

    if-eqz v1, :cond_21

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mDragging:Z

    if-nez v1, :cond_16

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "LOCATION"

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mTouchArea:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "ENABLE"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v5, Lcom/motorola/camera/fsm/camera/Trigger$Event;->ROI_DRAG:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v5, v1, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_16
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_f

    :cond_17
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    invoke-static {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->-$$Nest$manimateFocus(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;Z)V

    goto/16 :goto_f

    :cond_18
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    goto :goto_c

    :cond_19
    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iput-boolean v4, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mCafTimeout:Z

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mFirstTime:Z

    :goto_c
    invoke-static {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->-$$Nest$manimateFocus(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;Z)V

    goto/16 :goto_f

    :cond_1a
    iget-object v0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFocusScan:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object v6, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-boolean v6, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFocusScan:Z

    if-eqz v6, :cond_1b

    move-object v6, p1

    check-cast v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iput-wide v2, v6, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mLensMoveStartTime:J

    goto :goto_d

    :catchall_2
    move-exception p0

    goto :goto_10

    :cond_1b
    move-object v2, p1

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-wide v2, v2, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mLensMoveStartTime:J

    :goto_d
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->cancel()V

    iget-object p0, p0, Lcom/motorola/camera/CameraIntentReceiver$1;->this$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mRoiActive:Z

    if-nez p1, :cond_20

    move-object p1, p0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mRoiTex:Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/RoiTexture;->mLocked:Z

    if-eqz p1, :cond_1c

    goto :goto_e

    :cond_1c
    move-object p1, p0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->this$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mFocusScan:Z

    if-eqz p1, :cond_1e

    move-object p1, p0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mFirstTime:Z

    if-eqz p1, :cond_1d

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    invoke-static {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->-$$Nest$manimateFocus(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;Z)V

    goto :goto_e

    :cond_1d
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_e

    :cond_1e
    move-object p1, p0

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mFirstTime:Z

    if-eqz p1, :cond_1f

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->reset()V

    goto :goto_e

    :cond_1f
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$LensFadeRoiBehavior;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_20
    :goto_e
    monitor-exit v0

    :cond_21
    :goto_f
    return v4

    :goto_10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
