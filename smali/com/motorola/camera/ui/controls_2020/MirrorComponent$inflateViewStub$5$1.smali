.class public final Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_apply:Ljava/lang/Object;

.field public this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;Landroidx/appcompat/widget/AppCompatSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$this_apply:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$this_apply:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$r8$classId:I

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$this_apply:Ljava/lang/Object;

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->resetShowTime(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomStartProgress:I

    int-to-float p1, p1

    int-to-float p2, p2

    sub-float/2addr p1, p2

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const p3, 0x7f080209

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const p3, 0x7f080208

    :goto_0
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr p2, p1

    const/16 p1, 0x64

    int-to-float p1, p1

    div-float/2addr p2, p1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isZoomEnabled:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "VALUE"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p2, "TYPE"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "ORIENTATION"

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "CLI_ZOOM_ENABLE"

    invoke-virtual {p1, p2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "CAMERA_TYPE"

    sget-object v0, Lcom/motorola/camera/settings/CameraType;->CLI_MAIN:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "VIDEO_RECORDING"

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p2, v0, p1, p3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p0, p2}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :cond_1
    return-void

    :goto_1
    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->seekText:Landroid/widget/TextView;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyManualMultiSupported()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p0, :cond_8

    iget p1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->setFaceBeautyFeatures(II)V

    goto :goto_3

    :cond_4
    iget-boolean p0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isToningExpand:Z

    if-nez p0, :cond_6

    iget p0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    if-ne p0, v1, :cond_5

    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->modifyAdjustment(I)V

    goto :goto_3

    :cond_5
    if-eqz p0, :cond_8

    iget-object p1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p0, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->setFaceBeautyFeatures(II)V

    goto :goto_3

    :cond_6
    iget p0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    if-eqz p0, :cond_8

    if-eqz p2, :cond_8

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyHelper;->getFaceBeautyToningType()I

    move-result p0

    add-int/2addr p0, v1

    iget p1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    if-eq p1, p0, :cond_7

    iget-object p1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p1, :cond_7

    iget-object p3, p1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->toningFeatures:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    iput v2, p3, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:I

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->notifyChild(I)V

    :cond_7
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz p0, :cond_8

    iget p1, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->setFaceBeautyToning(II)V

    :cond_8
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomStartProgress:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isZoomEnabled:Z

    :cond_0
    return-void

    :goto_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Ljava/lang/Object;

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TIMEOUT:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->$this_apply:Ljava/lang/Object;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "CLI_ZOOM_ENABLE"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v3, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v4, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCALE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v3, v4, v0, v2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;Z)V

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1, v3}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->isZoomEnabled:Z

    check-cast v1, Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    if-ne p0, p1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const p1, 0x7f080209

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMin()I

    move-result p1

    if-ne p0, p1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const p1, 0x7f080208

    :goto_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :goto_1
    check-cast v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;

    iget-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->isToningExpand:Z

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->manualPanel:Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;

    if-eqz v0, :cond_3

    iget v4, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->features:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget v6, v6, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->default:I

    invoke-virtual {v0, v4}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->getFaceBeautyFeature(I)I

    move-result v4

    if-eq v6, v4, :cond_2

    const/4 v4, 0x7

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;

    iget v5, v5, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyModel;->state:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    invoke-virtual {v0, v4, v3}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->defaultChild(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyRecyclerView;->updateRestoreState()V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFaceBeautyManualMultiSupported()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_b

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, v4

    :goto_3
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isVideoMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    :cond_7
    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    move v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->setFaceBeautyState(I)V

    :cond_a
    :goto_7
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$inflateViewStub$5$1;->this$0:Ljava/lang/Object;

    goto :goto_a

    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_8

    :cond_c
    move-object p0, v4

    :goto_8
    if-nez p0, :cond_d

    goto :goto_a

    :cond_d
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_SMART_ADJUSTMENT_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget v0, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentFeature:I

    packed-switch v0, :pswitch_data_1

    goto :goto_a

    :pswitch_1
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_NOSE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_9

    :pswitch_2
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_FACE_SLIM_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_9

    :pswitch_3
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_BIG_EYE_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_9

    :pswitch_4
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_TONING_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_TONING_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget p1, v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/facebeauty/FaceBeautyComponent;->currentToningFeature:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_a

    :pswitch_5
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->FACE_BEAUTY_UI_SMOOTH_LEVEL:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_9
    :pswitch_6
    invoke-static {p1, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_a
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object p1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TIMEOUT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, p1, v4}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
