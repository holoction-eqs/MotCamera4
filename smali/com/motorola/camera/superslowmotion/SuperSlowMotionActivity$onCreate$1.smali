.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar$RangeSliderListener;


# instance fields
.field public isSelectingRange:Z

.field public maxReached:Z

.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMaximumRangeLimitReached()V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->maxReached:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->isSelectingRange:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->maxReached:Z

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionToast:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->hideRunnable:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda4;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f1204c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final onMinimumRangeLimitReached()V
    .locals 0

    return-void
.end method

.method public final onStartTrackingTouch()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setPlayHeadVisible(Z)V

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setSelectingRange(Z)V

    iput-boolean v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->isSelectingRange:Z

    iput-boolean v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->maxReached:Z

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final onStopTrackingTouch()V
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setPlayHeadVisible(Z)V

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setSelectingRange(Z)V

    iput-boolean v3, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->isSelectingRange:Z

    iput-boolean v1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->maxReached:Z

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final onValueChanged([I)V
    .locals 2

    const-string v0, "newValue"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->tooltip:Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionEditTooltip;->getPosition()Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    :cond_0
    return-void
.end method
