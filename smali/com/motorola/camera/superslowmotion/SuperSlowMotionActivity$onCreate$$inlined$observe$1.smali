.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;->$r8$classId:I

    const/4 v1, 0x1

    const-string v2, "viewBinding"

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$$inlined$observe$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1204c5

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f1204c4

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;

    invoke-direct {v0, p0, v1}, Landroidx/preference/ListPreferenceDialogFragmentCompat$1;-><init>(Ljava/lang/Object;I)V

    const v1, 0x7f12012e

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->dialog:Landroid/app/AlertDialog;

    :cond_0
    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->mediaStoreUri:Landroid/net/Uri;

    if-eqz p1, :cond_2

    new-instance v4, Lcom/motorola/camera/CameraData;

    const-string v0, ""

    invoke-direct {v4, p1, v0, v1}, Lcom/motorola/camera/CameraData;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p1

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v1

    invoke-virtual {v4}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/motorola/camera/SecureMediaIdsManager;->addMediaId(Landroid/net/Uri;JI)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroidx/work/JobListenableFuture$1;

    const/16 p1, 0xa

    invoke-direct {v9, p0, p1}, Landroidx/work/JobListenableFuture$1;-><init>(Ljava/lang/Object;I)V

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzon;->start(Lcom/motorola/camera/CameraData;Landroidx/constraintlayout/utils/widget/ImageFilterButton;ZZZLandroidx/work/JobListenableFuture$1;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v0, 0x0

    const v1, 0x7f1204c6

    invoke-virtual {p1, v1, v0}, Lcom/motorola/camera/CameraApp;->showToast(II)V

    :goto_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    if-nez v3, :cond_4

    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda4;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_1
    return-void

    :pswitch_2
    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setThumbnails(Ljava/util/List;)V

    return-void

    :cond_5
    invoke-static {v2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->hideRunnable:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda4;

    iget-object p1, p1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionToast:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
