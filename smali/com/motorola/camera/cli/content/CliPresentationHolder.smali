.class public final Lcom/motorola/camera/cli/content/CliPresentationHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public context:Ljava/lang/Object;

.field public eventListener:Ljava/lang/Object;

.field public isInitialized:Z

.field public final mainHandler:Ljava/lang/Object;

.field public orientation:I

.field public presentationDeque:Ljava/lang/Object;

.field public viewModel:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/motorola/camera/cli/CliEventListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->eventListener:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->context:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->mainHandler:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    return-void
.end method

.method public static final access$changeOrientation(Lcom/motorola/camera/cli/content/CliPresentationHolder;I)V
    .locals 5

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/arch/view/BasePresentation;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/shared/OrientationEvent;->getCliDisplayRotation(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/motorola/camera/shared/OrientationEvent;->getSurfaceRotationDegrees(I)I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    iput v1, v0, Lcom/motorola/camera/arch/view/BasePresentation;->orientation:I

    check-cast v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    iget-object v1, v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    const-string v4, "contentId"

    invoke-static {v2, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/motorola/camera/arch/view/BasePresentation;->orientation:I

    iput v3, v2, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->orientation:I

    invoke-virtual {v2}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onOrientationChanged()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getCurrentPresentation()Lcom/motorola/camera/arch/view/BasePresentation;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->presentationDeque:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/arch/view/BasePresentation;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final runOnUiThread(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder;->mainHandler:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/arch/view/BasePresentationHolder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
