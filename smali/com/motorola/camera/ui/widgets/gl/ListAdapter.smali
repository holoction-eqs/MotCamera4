.class public final Lcom/motorola/camera/ui/widgets/gl/ListAdapter;
.super Ljava/util/concurrent/CopyOnWriteArrayList;
.source "SourceFile"


# instance fields
.field public final mObservers:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->mObservers:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final add(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(ILcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    return-void
.end method

.method public final add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z
    .locals 0

    .line 3
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V

    :cond_0
    return p1
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 4
    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->add(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)Z

    move-result p0

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V

    :cond_0
    return p1
.end method

.method public final clear()V
    .locals 0

    invoke-super {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final declared-synchronized notifyDataSetChanged()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->mObservers:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;

    invoke-interface {v1}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter$DataSetObserver;->onChanged$1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V

    return-object p1
.end method

.method public final declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
