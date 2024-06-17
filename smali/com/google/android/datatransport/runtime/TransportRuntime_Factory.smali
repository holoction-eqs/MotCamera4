.class public final Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final eventClockProvider:Ljavax/inject/Provider;

.field public final initializerProvider:Ljavax/inject/Provider;

.field public final schedulerProvider:Ljavax/inject/Provider;

.field public final uploaderProvider:Ljavax/inject/Provider;

.field public final uptimeClockProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/dagger/internal/Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p6, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->eventClockProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->uptimeClockProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->schedulerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->uploaderProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->initializerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->$r8$classId:I

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->initializerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->uploaderProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->schedulerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->uptimeClockProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;->eventClockProvider:Ljavax/inject/Provider;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    new-instance v2, Lcom/google/android/datatransport/runtime/TransportRuntime;

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/google/android/datatransport/runtime/TransportRuntime;-><init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/Scheduler;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;)V

    return-object v2

    :goto_0
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/util/concurrent/Executor;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    new-instance p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/MetadataBackendRegistry;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
