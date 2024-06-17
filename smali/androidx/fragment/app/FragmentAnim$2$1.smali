.class public final Landroidx/fragment/app/FragmentAnim$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/FragmentAnim$2$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/FragmentAnim$2$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$2$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions(Z)Z

    return-void

    :pswitch_1
    check-cast p0, Landroidx/fragment/app/DialogFragment;

    iget-object v0, p0, Landroidx/fragment/app/DialogFragment;->mOnDismissListener:Landroidx/fragment/app/DialogFragment$3;

    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/DialogFragment$3;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/fragment/app/FragmentAnim$2;

    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$2;->val$container:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$2;->val$callback:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->completeSpecialEffect()V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/fragment/app/FragmentAnim$2;

    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    :goto_0
    if-eqz v1, :cond_1

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object v2, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$2;->val$callback:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManager$2;

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$2;->val$signal:Ljava/lang/Object;

    check-cast p0, Landroidx/core/os/CancellationSignal;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/FragmentManager$2;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    :cond_1
    return-void

    :goto_1
    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroidx/fragment/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
