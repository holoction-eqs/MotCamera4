.class public final Lcom/motorola/camera/cli/content/CliContentViewModel;
.super Lcom/motorola/camera/arch/view/BaseViewModel;
.source "SourceFile"


# instance fields
.field public final actionReceiver:Lcom/motorola/camera/SecureCamera$1;

.field public callback:Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;

.field public final cliDisplay$delegate:Lkotlin/SynchronizedLazyImpl;

.field public cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

.field public mainHandler:Landroid/os/Handler;

.field public presentationOpening:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/motorola/camera/arch/view/BaseViewModel;-><init>()V

    new-instance v0, Lcom/motorola/camera/SecureCamera$1;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/SecureCamera$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->actionReceiver:Lcom/motorola/camera/SecureCamera$1;

    sget-object v0, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE$2:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliDisplay$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final close(Z)V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/window/core/Version$bigInteger$2;

    iget-object v0, v0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz p1, :cond_2

    iput-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;

    :cond_2
    return-void
.end method

.method public final dispatchAction(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.motorola.camera3.EXTRA_ACTION"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    const-string v3, "com.motorola.camera3.EXTRA_CONTENT"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz p0, :cond_2

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-ne v0, v2, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;

    instance-of v0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    if-eqz v0, :cond_2

    const-string v0, "com.motorola.camera3.VIDEO_STATE"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->updateVideoIndicator(I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->contentDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-ne p1, v2, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliPresentation;->viewMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;

    instance-of p1, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    if-eqz p1, :cond_2

    check-cast p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->blackFrame:Landroid/view/View;

    if-eqz p0, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/motorola/camera/cli/content/CliContentViewModel;->close(Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v4, v5}, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;IZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->cliPresentation:Lcom/motorola/camera/cli/content/presentation/CliPresentation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->presentationOpening:Z

    if-nez v0, :cond_1

    sget v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;

    if-eqz v1, :cond_2

    iput-boolean v4, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->presentationOpening:Z

    new-instance v2, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;

    invoke-direct {v2, p0, v0}, Lcom/motorola/camera/cli/content/CliContentViewModel$showContent$1$1;-><init>(Lcom/motorola/camera/cli/content/CliContentViewModel;I)V

    new-instance v0, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;

    const/4 v3, 0x2

    iget-object v1, v1, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    invoke-direct {v0, v3, v1, v2}, Lkotlin/reflect/jvm/internal/KTypeImpl$arguments$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p1, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->callback:Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;

    if-eqz p0, :cond_2

    const-string v0, "com.motorola.camera3.EXTRA_ORIENTATION"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliPresentationHolder$onCreate$1;->this$0:Lcom/motorola/camera/cli/content/CliPresentationHolder;

    invoke-direct {v0, p0, p1, v4}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cli/content/CliPresentationHolder;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/motorola/camera/cli/content/CliContentViewModel;->dispatchAction(Landroid/content/Intent;)V

    :cond_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.motorola.camera3.CLI_CONTENT_ACTION_RECEIVER"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->actionReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {v0, v1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public final onDestroy(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/cli/content/CliContentViewModel;->actionReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-virtual {p1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
