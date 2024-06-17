.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/cinemagraph/TrimSeekBar$OnTrimCallback;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

.field public trimming:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTrim(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;->trimming:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;->trimming:Z

    iget-object v0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iget-object v1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewBinding:Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    xor-int/lit8 p1, p1, 0x1

    iget-object v1, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setPlayHeadVisible(Z)V

    iget-object p1, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$3;->trimming:Z

    invoke-virtual {p1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setSelectingRange(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p0, "viewBinding"

    invoke-static {p0}, Lkotlin/ExceptionsKt;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void
.end method
