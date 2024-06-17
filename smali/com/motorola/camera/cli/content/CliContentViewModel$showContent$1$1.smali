.class public final Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $orientation:I

.field public final synthetic this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cli/content/CliContentViewModel;I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

    iput p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->$orientation:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    move-object v4, p2

    check-cast v4, Lcom/motorola/camera/cli/CliEventListener;

    const-string p1, "context"

    invoke-static {v1, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventListener"

    invoke-static {v4, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    iget-object p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->this$0:Lcom/motorola/camera/cli/content/CliContentViewModel;

    iget-object v0, p2, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliDisplay$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "<get-cliDisplay>(...)"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/view/Display;

    iget v3, p0, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;->$orientation:I

    new-instance v5, Landroidx/window/core/Version$bigInteger$2;

    const/4 p0, 0x4

    invoke-direct {v5, p2, p0}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/cli/content/presentation/CliPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;ILcom/motorola/camera/cli/CliEventListener;Landroidx/window/core/Version$bigInteger$2;)V

    iput-object p1, p2, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    const/4 p0, 0x0

    iput-boolean p0, p2, Lcom/motorola/camera/cli/content/CliContentViewModel;->presentationOpening:Z

    return-object p1
.end method
