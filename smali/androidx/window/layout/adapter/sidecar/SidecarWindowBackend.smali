.class public final Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/adapter/WindowBackend;


# static fields
.field public static volatile globalInstance:Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;

.field public static final globalLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public final windowExtension:Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;

.field public final windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$ExtensionListenerImpl;

    invoke-direct {v0, p0}, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$ExtensionListenerImpl;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;)V

    invoke-virtual {p1, v0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->setExtensionCallback(Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$ExtensionListenerImpl;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final registerLayoutChangeCallback(Landroid/app/Activity;Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sget-object v1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;

    if-nez v2, :cond_0

    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    invoke-direct {p0, v0}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    invoke-virtual {p3, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    :try_start_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    iget-object v3, v3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->activity:Landroid/app/Activity;

    invoke-static {v3, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    new-instance v3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    invoke-direct {v3, p1, p2, p3}, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;-><init>(Landroid/app/Activity;Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;)V

    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    if-nez v0, :cond_6

    check-cast v2, Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p2, p0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v2, p2, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->register(Landroid/os/IBinder;Landroid/app/Activity;)V

    goto :goto_3

    :cond_5
    new-instance p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;

    invoke-direct {p0, v2, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$FirstAttachAdapter;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    iget-object v0, v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_8
    move-object p3, p2

    :goto_2
    check-cast p3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    if-eqz p3, :cond_9

    iget-object p2, p3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->lastInfo:Landroidx/window/layout/WindowLayoutInfo;

    :cond_9
    if-eqz p2, :cond_a

    iput-object p2, v3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->lastInfo:Landroidx/window/layout/WindowLayoutInfo;

    new-instance p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 p1, 0xf

    invoke-direct {p0, p1, v3, p2}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :goto_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final unregisterLayoutChangeCallback(Landroidx/core/util/Consumer;)V
    .locals 5

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    iget-object v4, v3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->callback:Landroidx/core/util/Consumer;

    if-ne v4, p1, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    iget-object v1, v1, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowLayoutChangeCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;

    iget-object v3, v3, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$WindowLayoutChangeCallbackWrapper;->activity:Landroid/app/Activity;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend;->windowExtension:Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;

    if-eqz v2, :cond_3

    check-cast v2, Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    invoke-virtual {v2, v1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->onWindowLayoutChangeListenerRemoved(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
