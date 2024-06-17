.class public final Landroidx/fragment/app/FragmentTransition$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$callback:Ljava/lang/Object;

.field public final synthetic val$outFragment:Ljava/lang/Object;

.field public final synthetic val$signal:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Ljava/util/ArrayList;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/FragmentTransition$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$1;->val$signal:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$1;->val$callback:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransition$1;->val$outFragment:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/FragmentTransition$1;->$r8$classId:I

    iget-object v1, p0, Landroidx/fragment/app/FragmentTransition$1;->val$signal:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/fragment/app/FragmentTransition$1;->val$outFragment:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/fragment/app/FragmentTransition$1;->val$callback:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/fragment/app/FragmentManager$2;

    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast v1, Landroidx/core/os/CancellationSignal;

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentManager$2;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/fragment/app/FragmentManager$2;

    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast v1, Landroidx/core/os/CancellationSignal;

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentManager$2;->onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V

    return-void

    :goto_0
    check-cast p0, Ljava/util/List;

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    check-cast v1, Landroidx/fragment/app/DefaultSpecialEffectsController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v0, v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    invoke-static {v0, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->_applyState(ILandroid/view/View;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
