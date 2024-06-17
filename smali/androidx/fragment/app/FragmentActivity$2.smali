.class public final Landroidx/fragment/app/FragmentActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/contextaware/OnContextAvailableListener;


# instance fields
.field public final synthetic this$0:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$2;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContextAvailable()V
    .locals 3

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$2;->this$0:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v1, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Landroidx/fragment/app/FragmentManagerImpl;->attachController(Landroidx/fragment/app/FragmentActivity$HostCallbacks;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    iget-object v0, v0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    const-string v1, "android:support:fragments"

    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    instance-of v1, p0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->restoreSaveState(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
