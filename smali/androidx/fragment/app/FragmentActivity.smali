.class public abstract Landroidx/fragment/app/FragmentActivity;
.super Landroidx/activity/ComponentActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;


# instance fields
.field public mCreated:Z

.field public final mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public final mFragments:Landroidx/fragment/app/FragmentAnim$1;

.field public mResumed:Z

.field public mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$HostCallbacks;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    new-instance v1, Landroidx/fragment/app/FragmentAnim$1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroidx/fragment/app/FragmentAnim$1;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    iget-object v0, v0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    new-instance v1, Landroidx/fragment/app/FragmentActivity$1;

    invoke-direct {v1, p0}, Landroidx/fragment/app/FragmentActivity$1;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    new-instance v0, Landroidx/fragment/app/FragmentActivity$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentActivity$2;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method

.method public static markState(Landroidx/fragment/app/FragmentManagerImpl;)Z
    .locals 8

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStore;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, v4, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Landroidx/fragment/app/FragmentActivity;

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v4

    invoke-static {v4}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManagerImpl;)Z

    move-result v4

    or-int/2addr v2, v4

    :cond_3
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    const-string v6, "setCurrentState"

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->initialize$1()V

    iget-object v4, v4, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v4, v4, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_4

    move v4, v7

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    if-eqz v4, :cond_5

    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    iget-object v2, v2, Landroidx/fragment/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v2, v6}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    move v2, v7

    :cond_5
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v4, v4, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_6

    move v4, v7

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    if-eqz v4, :cond_0

    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v2, v6}, Landroidx/lifecycle/LifecycleRegistry;->enforceMainThreadIfNeeded(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LifecycleRegistry;->moveToState(Landroidx/lifecycle/Lifecycle$State;)V

    move v2, v7

    goto :goto_0

    :cond_7
    return v2
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    new-instance v2, Landroidx/core/view/MenuHostHelper;

    sget-object v3, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Lkotlin/UByte$Companion;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/lifecycle/ViewModelStore;Lkotlin/UByte$Companion;I)V

    const-class v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v2, v1}, Landroidx/core/view/MenuHostHelper;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    iget-object v1, v1, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    iget v2, v1, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-lez v2, :cond_1

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Loaders:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v2, v1, Landroidx/collection/SparseArrayCompat;->mSize:I

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v1, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    aget-object p0, p0, v4

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "  #"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, v1, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    aget p0, p0, v4

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ": "

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentAnim$1;->noteStateNotSaved()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentAnim$1;->noteStateNotSaved()V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, v0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iput-boolean p1, v0, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreateOptionsMenu$androidx$fragment$app$FragmentManager()Z

    move-result p0

    or-int/2addr p0, p2

    return p0

    :cond_0
    return p2
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    .line 2
    check-cast v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    .line 7
    check-cast v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 8
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLayoutInflaterFactory:Landroidx/fragment/app/FragmentLayoutInflaterFactory;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/fragment/app/FragmentLayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchLowMemory()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    if-eqz p1, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchContextItemSelected()Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsItemSelected()Z

    move-result p0

    return p0
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentAnim$1;->noteStateNotSaved()V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsMenuClosed()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v0, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu()Z

    move-result p0

    or-int/2addr p0, v0

    return p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentAnim$1;->noteStateNotSaved()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentAnim$1;->noteStateNotSaved()V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mResumed:Z

    iget-object p0, v0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions(Z)Z

    return-void
.end method

.method public onStart()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentAnim$1;->noteStateNotSaved()V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    const/4 v3, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    if-nez v2, :cond_0

    iput-boolean v3, p0, Landroidx/fragment/app/FragmentActivity;->mCreated:Z

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iput-boolean v1, v2, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    iput-boolean v1, v2, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    iget-object v4, v2, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iput-boolean v1, v4, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    :cond_0
    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v2, v2, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions(Z)Z

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    check-cast v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object p0, v0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iput-boolean v1, v0, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public final onStateNotSaved()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentAnim$1;->noteStateNotSaved()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentActivity;->mStopped:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    invoke-static {v1}, Landroidx/fragment/app/FragmentActivity;->markState(Landroidx/fragment/app/FragmentManagerImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/FragmentActivity;->mFragments:Landroidx/fragment/app/FragmentAnim$1;

    iget-object v1, v1, Landroidx/fragment/app/FragmentAnim$1;->val$fragment:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iput-boolean v0, v1, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    iget-object v2, v1, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    iput-boolean v0, v2, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
