.class public final Landroidx/media3/ui/PlayerControlViewLayoutManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

.field public final synthetic val$playerControlView:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlViewLayoutManager;Landroidx/media3/ui/PlayerControlView;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iput-object p2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->val$playerControlView:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->$r8$classId:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->val$playerControlView:Landroidx/media3/ui/PlayerControlView;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    iget-boolean p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBarsRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    :cond_0
    return-void

    :pswitch_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    iget-boolean p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBarsRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    :cond_1
    return-void

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    iget-boolean p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->showAllBarsRunnable:Landroidx/media3/ui/PlayerControlViewLayoutManager$$ExternalSyntheticLambda0;

    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->needToShowBars:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->$r8$classId:I

    const/4 v0, 0x3

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager$3;->this$0:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void

    :pswitch_1
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->setUxState(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
