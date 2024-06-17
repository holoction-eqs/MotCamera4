.class public final Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/adapter/WindowBackend;


# instance fields
.field public final component:Landroidx/window/extensions/layout/WindowLayoutComponent;

.field public final consumerAdapter:Lkotlin/DeepRecursiveFunction;

.field public final consumerToOemConsumer:Ljava/util/LinkedHashMap;

.field public final consumerToToken:Ljava/util/LinkedHashMap;

.field public final contextToListeners:Ljava/util/LinkedHashMap;

.field public final extensionWindowBackendLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final listenerToContext:Ljava/util/LinkedHashMap;


# direct methods
.method public static $r8$lambda$EYKpV8SMhzTnUXjgS-Kb13M5yEI(Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 1

    const-string v0, "$consumer"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    return-void
.end method

.method public constructor <init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Lkotlin/DeepRecursiveFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->component:Landroidx/window/extensions/layout/WindowLayoutComponent;

    iput-object p2, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerAdapter:Lkotlin/DeepRecursiveFunction;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->extensionWindowBackendLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->contextToListeners:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->listenerToContext:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerToToken:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerToOemConsumer:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final registerLayoutChangeCallback(Landroid/app/Activity;Landroidx/arch/core/executor/ArchTaskExecutor$$ExternalSyntheticLambda0;Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;)V
    .locals 4

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->extensionWindowBackendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->contextToListeners:Ljava/util/LinkedHashMap;

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->listenerToContext:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1, p3}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->addListener(Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;)V

    invoke-interface {v2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;

    invoke-direct {v1, p1}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p3}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->addListener(Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;)V

    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x2

    iget-object v2, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->component:Landroidx/window/extensions/layout/WindowLayoutComponent;

    if-ge p3, v0, :cond_1

    :try_start_2
    new-instance p3, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$consumeWindowLayoutInfo$1;

    invoke-direct {p3, v1}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$consumeWindowLayoutInfo$1;-><init>(Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;)V

    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerAdapter:Lkotlin/DeepRecursiveFunction;

    const-class v3, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1, p3}, Lkotlin/DeepRecursiveFunction;->createSubscription(Ljava/lang/Object;Lkotlin/reflect/KClass;Landroid/app/Activity;Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$registerLayoutChangeCallback$1$2$consumeWindowLayoutInfo$1;)Landroidx/window/core/ConsumerAdapter$createSubscription$1;

    move-result-object p1

    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerToToken:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p3, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$$ExternalSyntheticLambda0;

    invoke-direct {p3, v1}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;)V

    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerToOemConsumer:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p1, p3}, Landroidx/window/extensions/layout/WindowLayoutComponent;->addWindowLayoutInfoListener(Landroid/content/Context;Landroidx/window/extensions/core/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public final unregisterLayoutChangeCallback(Landroidx/core/util/Consumer;)V
    .locals 5

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->extensionWindowBackendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->listenerToContext:Ljava/util/LinkedHashMap;

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    iget-object v3, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->contextToListeners:Ljava/util/LinkedHashMap;

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v4, p1}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->removeListener(Landroidx/core/util/Consumer;)V

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend$MulticastConsumer;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/window/core/ExtensionsUtil;->getSafeVendorApiLevel()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_2

    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerToToken:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/core/ConsumerAdapter$createSubscription$1;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/window/core/ConsumerAdapter$createSubscription$1;->dispose()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->consumerToOemConsumer:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/window/extensions/core/util/function/Consumer;

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;->component:Landroidx/window/extensions/layout/WindowLayoutComponent;

    invoke-interface {p0, p1}, Landroidx/window/extensions/layout/WindowLayoutComponent;->removeWindowLayoutInfoListener(Landroidx/window/extensions/core/util/function/Consumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
