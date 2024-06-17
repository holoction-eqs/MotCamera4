.class public final Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->$r8$classId:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    monitor-enter v0

    :try_start_0
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    invoke-virtual {v4, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v1

    iget v10, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v0, v5

    sub-float/2addr v0, v10

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/high16 v4, 0x43b40000    # 360.0f

    if-gez v1, :cond_0

    add-float/2addr v0, v4

    :cond_0
    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    sub-float/2addr v0, v4

    :cond_1
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;

    new-instance v7, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;

    invoke-direct {v7, p0, v5, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture$1$1;-><init>(Ljava/lang/Runnable;II)V

    const-wide/16 v8, 0x12c

    add-float v11, v10, v0

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    new-array v3, v3, [Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3, v5}, Lcom/motorola/camera/ui/widgets/gl/animations/RotateAnimation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HistogramTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieLivePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieLivePreviewTexture;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mBeingCovered:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mWideSelfieRectangleTexture:Lcom/motorola/camera/ui/widgets/gl/textures/SelfieRectangleTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mBeingCovered:Z

    xor-int/2addr p0, v3

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->mEnabledFastCaptureUITimer:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/SmallCliHoldStillComponent;->holdStillText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v1, 0x7f12013c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoWhiteBalance()Z

    move-result v0

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    sget-object v6, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v5

    :goto_1
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    goto :goto_2

    :cond_4
    move-object v0, v5

    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAWB:I

    invoke-static {p0, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->access$getAutoWB(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoExposureTime()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_8

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v4, :cond_7

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_5

    :cond_8
    move-object v0, v5

    :goto_5
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    goto :goto_6

    :cond_9
    move-object v0, v5

    :goto_6
    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    iget-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mExposureTime:J

    invoke-static {v2, v3}, Lkotlin/ULong$Companion;->getAutoExposureTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_7
    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoISO()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_d

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v4, :cond_c

    goto :goto_8

    :cond_c
    const/4 v1, 0x3

    :goto_8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_9

    :cond_d
    move-object v0, v5

    :goto_9
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;

    if-eqz v0, :cond_e

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarOptionsAdapter$SingleViewHolder;->textView:Landroid/widget/TextView;

    :cond_e
    if-nez v5, :cond_f

    goto :goto_a

    :cond_f
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mISO:I

    invoke-static {v0}, Lkotlin/ULong$Companion;->getAutoISO(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_a
    sget v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    goto/16 :goto_d

    :cond_11
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mSupportedSettings:Ljava/util/ArrayList;

    sget v1, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->ENABLE_ID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoWhiteBalance()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-nez v1, :cond_12

    goto :goto_b

    :cond_12
    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mAWB:I

    invoke-static {p0, v2}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->access$getAutoWB(Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_b
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/probar/ProBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoExposureTime()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-nez v1, :cond_14

    goto :goto_c

    :cond_14
    iget-wide v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mExposureTime:J

    invoke-static {v2, v3}, Lkotlin/ULong$Companion;->getAutoExposureTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_c
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->isAutoISO()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mFlagView:Landroid/widget/TextView;

    if-nez v0, :cond_16

    goto :goto_d

    :cond_16
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeBarComponent;->mISO:I

    invoke-static {p0}, Lkotlin/ULong$Companion;->getAutoISO(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    :goto_d
    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mTipVisible:Z

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void

    :goto_e
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;

    const/4 v2, 0x4

    invoke-direct {v3, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$8;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v4, 0x1f4

    const v6, 0x3f333333    # 0.7f

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;-><init>(Lkotlin/ULong$Companion;JFFII)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mScrollbar:Lcom/motorola/camera/ui/widgets/gl/textures/FrameTexture;

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/FadeAnimation;->startAnimation(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ScrollableListTexture;->mAnimationTracker:Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/AnimationTracker;->addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
