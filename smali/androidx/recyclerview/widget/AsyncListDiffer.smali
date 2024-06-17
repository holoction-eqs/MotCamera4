.class public final Landroidx/recyclerview/widget/AsyncListDiffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sMainThreadExecutor:Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;


# instance fields
.field public final mConfig:Landroidx/recyclerview/widget/ChildHelper;

.field public mList:Ljava/util/List;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field public mMaxScheduledGeneration:I

.field public mReadOnlyList:Ljava/util/List;

.field public final mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;

    invoke-direct {v0}, Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/AsyncListDiffer;->sMainThreadExecutor:Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/OpReorderer;Landroidx/recyclerview/widget/ChildHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/ChildHelper;

    iget-object p1, p2, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/recyclerview/widget/AsyncListDiffer;->sMainThreadExecutor:Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;

    :goto_0
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/ListAdapter$1;

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iget-object v1, v1, Landroidx/recyclerview/widget/ListAdapter$1;->this$0:Landroidx/recyclerview/widget/ListAdapter;

    invoke-virtual {v1, p1, v2}, Landroidx/recyclerview/widget/ListAdapter;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public final submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 8

    iget v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    iget-object v3, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    if-ne p1, v3, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    if-nez p1, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-nez v3, :cond_3

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2, v1, p1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/ChildHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v7, Landroidx/recyclerview/widget/AsyncListDiffer$1;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/AsyncListDiffer$1;-><init>(Landroidx/recyclerview/widget/AsyncListDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
