.class public final Landroidx/fragment/app/FragmentActivity$HostCallbacks;
.super Landroidx/fragment/app/FragmentContainer;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/activity/OnBackPressedDispatcherOwner;
.implements Landroidx/activity/result/ActivityResultRegistryOwner;
.implements Landroidx/fragment/app/FragmentOnAttachListener;


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final mContext:Landroid/content/Context;

.field public final mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

.field public final mHandler:Landroid/os/Handler;

.field public final synthetic this$0:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Landroidx/fragment/app/FragmentContainer;-><init>()V

    new-instance v1, Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v1}, Landroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method

.method public final onAttachFragment$1(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final onFindViewById(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onHasView()Z
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
