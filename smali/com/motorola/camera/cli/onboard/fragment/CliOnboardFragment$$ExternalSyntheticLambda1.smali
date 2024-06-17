.class public final synthetic Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const-string p1, "$isShowNextPage"

    iget-object v0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "this$0"

    iget-object p0, p0, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/motorola/camera/cli/onboard/fragment/CliOnboardFragment;->showNextPage()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    iget-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_2

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-nez p0, :cond_2

    iget-boolean p0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p0, :cond_2

    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_2
    :goto_0
    return v1
.end method
