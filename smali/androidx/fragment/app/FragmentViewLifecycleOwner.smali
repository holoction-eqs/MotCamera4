.class public final Landroidx/fragment/app/FragmentViewLifecycleOwner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
.implements Landroidx/savedstate/SavedStateRegistryOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# instance fields
.field public mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field public final mFragment:Landroidx/fragment/app/Fragment;

.field public mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

.field public final mViewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iput-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    iput-object p1, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mFragment:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-void
.end method


# virtual methods
.method public final getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/SavedStateViewModelFactory;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v1

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_1
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Landroidx/lifecycle/SavedStateViewModelFactory;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-direct {v2, v1, p0, v0}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    iput-object v2, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize$1()V

    iget-object p0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize$1()V

    iget-object p0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize$1()V

    iget-object p0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object p0
.end method

.method public final handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final initialize$1()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v0, Landroidx/savedstate/SavedStateRegistryController;

    invoke-direct {v0, p0}, Landroidx/savedstate/SavedStateRegistryController;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    :cond_0
    return-void
.end method
