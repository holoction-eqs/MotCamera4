.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mBackInvokedCallbackRegistered:Z

.field public final mEnabledConsumer:Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

.field public final mFallbackOnBackPressed:Ljava/lang/Runnable;

.field public mInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field public final mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field public final mOnBackPressedCallbacks:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mFallbackOnBackPressed:Ljava/lang/Runnable;

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mEnabledConsumer:Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->createOnBackInvokedCallback(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentManager$1;)V
    .locals 2

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/LifecycleRegistry;

    iget-object v0, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager$1;)V

    iget-object p1, p2, Landroidx/fragment/app/FragmentManager$1;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->mEnabledConsumer:Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    iput-object p0, p2, Landroidx/fragment/app/FragmentManager$1;->mEnabledConsumer:Landroidx/core/util/Consumer;

    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManager$1;

    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManager$1;->mEnabled:Z

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    iget-object v0, v1, Landroidx/fragment/app/FragmentManager$1;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions(Z)Z

    iget-object p0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    iget-boolean p0, p0, Landroidx/fragment/app/FragmentManager$1;->mEnabled:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate$1()Z

    goto :goto_0

    :cond_1
    iget-object p0, v0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :goto_0
    return-void

    :cond_2
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->mFallbackOnBackPressed:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method public final updateBackInvokedCallbackState()V
    .locals 6

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManager$1;

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManager$1;->mEnabled:Z

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->mInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_3

    iget-object v4, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_2

    iget-boolean v5, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    if-nez v5, :cond_2

    invoke-static {v1, v3, v4}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->registerOnBackInvokedCallback(Ljava/lang/Object;ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    if-eqz v0, :cond_3

    invoke-static {v1, v4}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v3, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    :cond_3
    :goto_1
    return-void
.end method
