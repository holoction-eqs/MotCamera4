.class public final Landroidx/window/layout/adapter/sidecar/SidecarCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/adapter/sidecar/ExtensionInterfaceCompat;


# instance fields
.field public final componentCallbackMap:Ljava/util/LinkedHashMap;

.field public extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

.field public final sidecar:Landroidx/window/sidecar/SidecarInterface;

.field public final sidecarAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

.field public final windowListenerRegisteredContexts:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V
    .locals 1

    invoke-static {p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;->getSidecarCompat$window_release(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)Landroidx/window/sidecar/SidecarInterface;

    move-result-object p1

    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    invoke-direct {v0}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecarAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/LinkedHashMap;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->componentCallbackMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final synthetic access$getExtensionCallback$p(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    return-object p0
.end method

.method public static final synthetic access$getSidecarAdapter$p(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)Landroidx/window/layout/adapter/sidecar/SidecarAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecarAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    return-object p0
.end method

.method public static final synthetic access$getWindowListenerRegisteredContexts$p(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/LinkedHashMap;

    return-object p0
.end method


# virtual methods
.method public final getSidecar()Landroidx/window/sidecar/SidecarInterface;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    return-object p0
.end method

.method public final getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/layout/WindowLayoutInfo;
    .locals 1

    invoke-static {p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;->getActivityWindowToken$window_release(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p0, p1}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroidx/window/sidecar/SidecarInterface;->getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {v0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    :cond_3
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecarAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    invoke-virtual {p0, p1, v0}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;->translate(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object p0

    return-object p0
.end method

.method public final onWindowLayoutChangeListenerRemoved(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$Companion;->getActivityWindowToken$window_release(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerRemoved(Landroid/os/IBinder;)V

    :cond_1
    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->componentCallbackMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/util/Consumer;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    instance-of v4, p1, Landroidx/core/content/OnConfigurationChangedProvider;

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, Landroidx/core/content/OnConfigurationChangedProvider;

    check-cast v4, Landroidx/activity/ComponentActivity;

    iget-object v4, v4, Landroidx/activity/ComponentActivity;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;->clearWindowLayoutInfo(Landroid/app/Activity;)V

    :cond_4
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    move p1, v2

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    invoke-interface {v1, v2}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    :cond_6
    return-void
.end method

.method public final register(Landroid/os/IBinder;Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->windowListenerRegisteredContexts:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerAdded(Landroid/os/IBinder;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    :cond_1
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->getWindowLayoutInfo(Landroid/app/Activity;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;->onWindowLayoutChanged(Landroid/app/Activity;Landroidx/window/layout/WindowLayoutInfo;)V

    :cond_2
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->componentCallbackMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    instance-of v0, p2, Landroidx/core/content/OnConfigurationChangedProvider;

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$$ExternalSyntheticLambda0;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroidx/core/content/OnConfigurationChangedProvider;

    check-cast p2, Landroidx/activity/ComponentActivity;

    iget-object p0, p2, Landroidx/activity/ComponentActivity;->mOnConfigurationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final setExtensionCallback(Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$ExtensionListenerImpl;)V
    .locals 2

    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    invoke-direct {v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarWindowBackend$ExtensionListenerImpl;)V

    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->extensionCallback:Landroidx/window/layout/adapter/sidecar/SidecarCompat$DistinctElementCallback;

    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;

    new-instance v1, Landroidx/window/layout/adapter/sidecar/SidecarCompat$TranslatingCallback;

    invoke-direct {v1, p0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$TranslatingCallback;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)V

    check-cast v1, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecarAdapter:Landroidx/window/layout/adapter/sidecar/SidecarAdapter;

    invoke-direct {v0, p0, v1}, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarAdapter;Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V

    check-cast v0, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    invoke-interface {p1, v0}, Landroidx/window/sidecar/SidecarInterface;->setSidecarCallback(Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V

    :cond_0
    return-void
.end method

.method public final validateExtensionInterface()Z
    .locals 11

    const-string v0, "Illegal return type for \'onWindowLayoutChangeListenerRemoved\': "

    const-string v1, "Illegal return type for \'onWindowLayoutChangeListenerAdded\': "

    const-string v2, "Illegal return type for \'getWindowLayoutInfo\': "

    const-string v3, "Illegal return type for \'setSidecarCallback\': "

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v8, "setSidecarCallback"

    new-array v9, v7, [Ljava/lang/Class;

    const-class v10, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    aput-object v10, v9, v4

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v8}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v3, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    :cond_2
    iget-object v3, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v3, :cond_3

    invoke-interface {v3, v7}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    :cond_3
    iget-object v3, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v5, Landroid/os/IBinder;

    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v8, "getWindowLayoutInfo"

    new-array v9, v7, [Ljava/lang/Class;

    aput-object v5, v9, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v6

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v6

    :goto_3
    const-class v8, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    invoke-static {v3, v8}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "onWindowLayoutChangeListenerAdded"

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v5, v8, v4

    invoke-virtual {v2, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, v6

    :goto_4
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    goto :goto_5

    :cond_7
    move-object v2, v6

    :goto_5
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->sidecar:Landroidx/window/sidecar/SidecarInterface;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_8

    const-string v1, "onWindowLayoutChangeListenerRemoved"

    new-array v2, v7, [Ljava/lang/Class;

    aput-object v5, v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_6

    :cond_8
    move-object p0, v6

    :goto_6
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    :cond_9
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v6, p0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {p0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x3

    :try_start_2
    iput v0, p0, Landroidx/window/sidecar/SidecarDeviceState;->posture:I
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catch_0
    :try_start_3
    const-class v1, Landroidx/window/sidecar/SidecarDeviceState;

    const-string v2, "setPosture"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroidx/window/sidecar/SidecarDeviceState;

    const-string v2, "getPosture"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_b

    :goto_7
    new-instance p0, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-direct {p0}, Landroidx/window/sidecar/SidecarDisplayFeature;-><init>()V

    invoke-virtual {p0}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "displayFeature.rect"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/window/sidecar/SidecarDisplayFeature;->setRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    invoke-virtual {p0, v7}, Landroidx/window/sidecar/SidecarDisplayFeature;->setType(I)V

    new-instance v0, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    invoke-direct {v0}, Landroidx/window/sidecar/SidecarWindowLayoutInfo;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p0, v0, Landroidx/window/sidecar/SidecarWindowLayoutInfo;->displayFeatures:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catch_1
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p0, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    const-string v2, "setDisplayFeatures"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v5, Ljava/util/List;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class p0, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    const-string v2, "getDisplayFeatures"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    invoke-static {v1, p0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    :goto_8
    move v4, v7

    goto :goto_9

    :cond_a
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Invalid display feature getter/setter"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Invalid device posture getter/setter"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    :goto_9
    return v4
.end method
