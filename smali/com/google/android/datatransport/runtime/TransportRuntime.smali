.class public final Lcom/google/android/datatransport/runtime/TransportRuntime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/TransportInternal;


# static fields
.field public static volatile instance:Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;


# instance fields
.field public final eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field public final scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

.field public final uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/Scheduler;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/work/Worker$1;

    const/16 p1, 0x12

    invoke-direct {p0, p4, p1}, Landroidx/work/Worker$1;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;
    .locals 2

    sget-object v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->transportRuntimeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    invoke-direct {v1, p0}, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/datatransport/runtime/TransportRuntime;->instance:Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final newFactory(Lcom/google/android/datatransport/cct/CCTDestination;)Landroidx/core/view/MenuHostHelper;
    .locals 6

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    instance-of v1, p1, Lcom/google/android/datatransport/runtime/EncodedDestination;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/datatransport/Encoding;

    const-string v2, "proto"

    invoke-direct {v1, v2}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    sget-object v2, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, ""

    iget-object p1, p1, Lcom/google/android/datatransport/cct/CCTDestination;->endPoint:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v4, "1$"

    const-string v5, "\\"

    filled-new-array {v4, p1, v5, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "%s%s%s%s"

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_1
    new-instance v3, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    const-string v4, "cct"

    invoke-direct {v3, v4, p1, v2}, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;-><init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;)V

    const/16 p1, 0x19

    invoke-direct {v0, v1, v3, p0, p1}, Landroidx/core/view/MenuHostHelper;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method
