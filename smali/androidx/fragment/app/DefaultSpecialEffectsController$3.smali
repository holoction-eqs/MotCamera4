.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final this$0:Ljava/lang/Object;

.field public final val$animator:Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dispatchOnFragmentActivityCreated(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentActivityCreated(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentAttached(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentAttached(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentCreated(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentCreated(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentDestroyed(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentDestroyed(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentDetached(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentDetached(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentPaused(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentPaused(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentPreAttached(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    iget-object v1, v1, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentPreAttached(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentPreCreated(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentPreCreated(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentResumed(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentResumed(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentSaveInstanceState(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentSaveInstanceState(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentStarted(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentStarted(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentStopped(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentStopped(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Z)V
    .locals 7

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    iget-object v2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v3, v1, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-ne p1, v3, :cond_1

    iget-object v2, v2, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    iget-object v3, v2, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, v2, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    iget-object v6, v2, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    iget-object v6, v6, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    if-ne v6, v1, :cond_3

    iget-object v2, v2, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v2, Landroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->addViewToContainer(Landroid/view/View;Landroid/widget/FrameLayout;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    return-void
.end method

.method public final dispatchOnFragmentViewDestroyed(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentViewDestroyed(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    if-eqz p1, :cond_2

    iget-boolean v1, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v1, :cond_1

    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final onCancel()V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$animator:Ljava/lang/Cloneable;

    check-cast p0, Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    return-void
.end method
