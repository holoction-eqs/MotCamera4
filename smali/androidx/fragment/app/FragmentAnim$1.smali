.class public final Landroidx/fragment/app/FragmentAnim$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$fragment:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/FragmentAnim$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final noteStateNotSaved()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    return-void
.end method

.method public final onCancel()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/FragmentAnim$1;->$r8$classId:I

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p0, Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    :goto_0
    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v2

    iput-object v1, v2, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ensureAnimationInfo()Landroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-object v1, p0, Landroidx/fragment/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-void

    :goto_2
    check-cast p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->cancel()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
