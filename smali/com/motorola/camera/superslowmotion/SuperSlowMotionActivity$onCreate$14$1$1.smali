.class public final Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    iget-object p1, p1, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/window/layout/DisplayFeature;

    instance-of v2, v2, Landroidx/window/layout/FoldingFeature;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of p1, v0, Landroidx/window/layout/FoldingFeature;

    if-eqz p1, :cond_2

    check-cast v0, Landroidx/window/layout/FoldingFeature;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    sget-object p1, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    if-eqz v0, :cond_3

    check-cast v0, Landroidx/window/layout/HardwareFoldingFeature;

    iget-object v1, v0, Landroidx/window/layout/HardwareFoldingFeature;->state:Landroidx/window/layout/FoldingFeature$State;

    :cond_3
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$onCreate$14$1$1;->this$0:Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    iput-boolean p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->isSplitScreen:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->updateUiForSplitScreen(Z)V

    return-void
.end method
