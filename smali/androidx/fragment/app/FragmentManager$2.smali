.class public final Landroidx/fragment/app/FragmentManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/fragment/app/FragmentManagerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/FragmentManager$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$2;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/FragmentManager$2;->$r8$classId:I

    const-string v1, "FragmentManager"

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager$2;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    iget-object v0, v2, Landroidx/fragment/app/FragmentManagerImpl;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No IntentSenders were started for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, v2, Landroidx/fragment/app/FragmentManagerImpl;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v2, v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentStore;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Intent Sender result delivered for unknown Fragment "

    .line 2
    invoke-static {p0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_1
    iget v1, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    .line 5
    iget v0, v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mRequestCode:I

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void

    .line 6
    :goto_2
    iget-object v0, v2, Landroidx/fragment/app/FragmentManagerImpl;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No Activities were started for result for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_2
    iget-object p0, v2, Landroidx/fragment/app/FragmentManagerImpl;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v2, v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentStore;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "Activity result delivered for unknown Fragment "

    .line 7
    invoke-static {p0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    :goto_3
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 9
    :cond_3
    iget v1, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    .line 10
    iget v0, v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mRequestCode:I

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->mData:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Landroidx/fragment/app/FragmentManager$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 19
    :pswitch_0
    check-cast p1, Ljava/util/Map;

    .line 20
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    :goto_1
    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$2;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerImpl;->mLaunchedFragments:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No permissions were requested for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object p0, p1, Landroidx/fragment/app/FragmentManagerImpl;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object p1, v0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;->mWho:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentStore;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "Permission request result delivered for unknown Fragment "

    .line 21
    invoke-static {p0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    const-string p1, "FragmentManager"

    .line 22
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 23
    :pswitch_1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager$2;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void

    .line 24
    :goto_3
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager$2;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .locals 2

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p2, Landroidx/core/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$2;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->dispatchOnFragmentViewDestroyed(Z)V

    const/4 p2, 0x0

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    iget p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(ILandroidx/fragment/app/Fragment;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onStart(Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$2;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExitAnimationCancellationSignals:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
