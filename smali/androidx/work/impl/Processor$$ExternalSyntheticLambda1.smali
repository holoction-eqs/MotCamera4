.class public final synthetic Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;Landroid/view/View;)V
    .locals 1

    .line 3
    const/4 v0, 0x5

    iput v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->$r8$classId:I

    const-string v1, "this$0"

    iget-boolean v2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    check-cast p0, Landroid/graphics/PointF;

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->SHOW_STATES:Ljava/util/Set;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    if-eqz v2, :cond_0

    invoke-virtual {v3, v6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->resetColorPickerPosition(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->colorPicker:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    :goto_0
    iget-object v0, v3, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->colorPicker:Lcom/motorola/camera/ui/controls_2020/sliderbar/ColorPickerView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr p0, v2

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    :cond_3
    :goto_1
    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    check-cast v3, Landroid/view/View;

    sget v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->$r8$clinit:I

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->lensAllowed:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->googleLens:Landroid/view/View;

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->animateShowView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    check-cast v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/PermissionsManager;->getInstance()Lcom/motorola/camera/PermissionsManager;

    move-result-object v1

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, p0}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    xor-int/2addr v1, v6

    sget-object v5, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v5}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v7

    iget-object v7, v7, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    sget-object v0, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {v3, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const v1, 0x7f120593

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    :goto_4
    return-void

    :pswitch_3
    check-cast p0, Lcom/motorola/camera/saving/SaveImageService;

    check-cast v3, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;

    iget-object v0, v3, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0}, Lcom/motorola/camera/saving/SaveImageService;->getProcessingCameraData(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)Lcom/motorola/camera/CameraData;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/motorola/camera/saving/SaveImageService;->removeImageProcessing(Lcom/motorola/camera/CameraData;Z)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    check-cast v3, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mProcessTextView:Landroid/widget/TextView;

    const v1, 0x7f1202ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mAdjustButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mRotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/editor/DocEditorActivity;->updateSaveButtonEnableState()V

    if-nez v2, :cond_a

    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v1, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    if-ne v3, v1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Lcom/motorola/camera/editor/DocJpegHolder;->releaseMono()V

    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iput-object v3, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mMonoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v4}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState$enumunboxing$(I)V

    :cond_a
    :goto_5
    return-void

    :pswitch_5
    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    check-cast v3, Landroid/view/View;

    sget v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->$r8$clinit:I

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->presentationContainer$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->onLastContentClosed:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    :cond_b
    return-void

    :pswitch_6
    check-cast p0, Landroidx/work/impl/Processor;

    check-cast v3, Landroidx/work/impl/model/WorkGenerationalId;

    invoke-virtual {p0, v3, v2}, Landroidx/work/impl/Processor;->onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    return-void

    :goto_6
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;

    check-cast v3, [Landroid/util/Range;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ZoomSliderBar;->mMeterTexture:Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mStaggeredMeter:Z

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mMeterSegmentRanges:[Landroid/util/Range;

    xor-int/lit8 v0, v2, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mDotVisible:Z

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->mInitialized:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/MeterTexture;->doLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
