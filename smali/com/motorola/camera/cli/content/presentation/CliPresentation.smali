.class public final Lcom/motorola/camera/cli/content/presentation/CliPresentation;
.super Lcom/motorola/camera/arch/view/BasePresentation;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final contentDeque:Ljava/util/ArrayDeque;

.field public final eventListener:Lcom/motorola/camera/cli/CliEventListener;

.field public final onLastContentClosed:Lkotlin/jvm/functions/Function0;

.field public final presentationContainer$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final viewMap:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;ILcom/motorola/camera/cli/CliEventListener;Landroidx/window/core/Version$bigInteger$2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/arch/view/BasePresentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    iput-object p4, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->eventListener:Lcom/motorola/camera/cli/CliEventListener;

    iput-object p5, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->onLastContentClosed:Lkotlin/jvm/functions/Function0;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    new-instance p1, Landroidx/window/core/Version$bigInteger$2;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->presentationContainer$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final hideContent(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->onViewRemoved()V

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, v1, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->view:Landroid/view/View;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, p0, p3}, Lcom/motorola/camera/cli/content/presentation/CliPresentation$$ExternalSyntheticLambda0;-><init>(ZLandroid/view/View;Lcom/motorola/camera/cli/content/presentation/CliPresentation;Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/motorola/camera/arch/view/BasePresentation;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    const/16 p1, 0x1706

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    sget-object v0, Lcom/motorola/camera/cli/util/WakeLockHelper;->Companion:Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/cli/util/WakeLockHelper$Companion;->getInstance$com$motorola$camera$utility$SingletonHolder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cli/util/WakeLockHelper;

    iget-object p0, p0, Lcom/motorola/camera/cli/util/WakeLockHelper;->mMainWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public final show()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
