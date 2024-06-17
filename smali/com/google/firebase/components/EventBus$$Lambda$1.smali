.class public final synthetic Lcom/google/firebase/components/EventBus$$Lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final arg$1:Ljava/lang/Object;

.field public final arg$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;)V
    .locals 0

    iput p1, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->$r8$classId:I

    iput-object p2, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/components/OptionalProvider;

    iget-object p0, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$2:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inject/Provider;

    iget-object v2, v0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    sget-object v3, Lcom/google/firebase/components/OptionalProvider$$Lambda$5;->instance:Lcom/google/firebase/components/OptionalProvider$$Lambda$5;

    if-ne v2, v3, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    iput-object v1, v0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/inject/Deferred$DeferredHandler;

    iput-object p0, v0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v2, Lkotlin/UInt$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    iget-object p0, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$2:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    throw v1

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/components/LazySet;

    iget-object p0, p0, Lcom/google/firebase/components/EventBus$$Lambda$1;->arg$2:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inject/Provider;

    monitor-enter v0

    :try_start_2
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
