.class public final synthetic Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(ZLandroid/view/View;Lcom/motorola/camera/cli/content/presentation/CliPresentation;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    iput-boolean p4, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    const-string v1, "$it"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$2:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    const-string v2, "this$0"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$0:Z

    iget-boolean p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;->f$3:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, p0, v4}, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->presentationContainer$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->onLastContentClosed:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
