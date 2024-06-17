.class public final Landroidx/fragment/app/FragmentStateManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/fragment/app/FragmentStateManager;

.field public final synthetic val$fragmentView:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentLayoutInflaterFactory;Landroidx/fragment/app/FragmentStateManager;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/FragmentStateManager$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager$1;->val$fragmentView:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/FragmentStateManager$1;->this$0:Landroidx/fragment/app/FragmentStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentStateManager;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/FragmentStateManager$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager$1;->this$0:Landroidx/fragment/app/FragmentStateManager;

    iput-object p2, p0, Landroidx/fragment/app/FragmentStateManager$1;->val$fragmentView:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Landroidx/fragment/app/FragmentStateManager$1;->$r8$classId:I

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager$1;->val$fragmentView:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    sget-object p0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api20Impl;->requestApplyInsets(Landroid/view/View;)V

    return-void

    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager$1;->this$0:Landroidx/fragment/app/FragmentStateManager;

    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    iget-object p0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    check-cast v0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    iget-object p1, v0, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerImpl;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/FragmentManager$2;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager$2;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->forceCompleteAllOperations()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
