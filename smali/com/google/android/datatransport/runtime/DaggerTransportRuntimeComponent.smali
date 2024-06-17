.class public final Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public executorProvider:Ljavax/inject/Provider;

.field public metadataBackendRegistryProvider:Ljavax/inject/Provider;

.field public sQLiteEventStoreProvider:Ljavax/inject/Provider;

.field public setApplicationContextProvider:Landroidx/recyclerview/widget/OpReorderer;

.field public transportRuntimeProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlk;->INSTANCE:Landroidx/work/InputMergerFactory$1;

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->executorProvider:Ljavax/inject/Provider;

    new-instance v2, Landroidx/recyclerview/widget/OpReorderer;

    if-eqz v1, :cond_0

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:Landroidx/recyclerview/widget/OpReorderer;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;->INSTANCE:Landroidx/work/InputMergerFactory$1;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlp;->INSTANCE:Lcom/adobe/xmp/XMPMetaFactory$1;

    new-instance v3, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v9, v4}, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    new-instance v4, Landroidx/work/impl/StartStopTokens;

    const/4 v5, 0x6

    invoke-direct {v4, v5, v2, v3}, Landroidx/work/impl/StartStopTokens;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->metadataBackendRegistryProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:Landroidx/recyclerview/widget/OpReorderer;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzll;->INSTANCE:Lcom/adobe/xmp/XMPMetaFactory$1;

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlm;->INSTANCE:L_COROUTINE/ArtificialStackFrames;

    new-instance v7, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;

    const/4 v5, 0x1

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzln;->INSTANCE:Lkotlin/UByte$Companion;

    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v1

    move-object v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/dagger/internal/Factory;I)V

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->sQLiteEventStoreProvider:Ljavax/inject/Provider;

    new-instance v6, Lkotlin/DeepRecursiveFunction;

    const/16 v3, 0xb

    invoke-direct {v6, v1, v3}, Lkotlin/DeepRecursiveFunction;-><init>(Ljava/lang/Object;I)V

    iget-object v15, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->setApplicationContextProvider:Landroidx/recyclerview/widget/OpReorderer;

    new-instance v14, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;

    const/4 v8, 0x1

    move-object v3, v14

    move-object v4, v15

    move-object v5, v2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/dagger/internal/Factory;I)V

    iget-object v3, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->executorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->metadataBackendRegistryProvider:Ljavax/inject/Provider;

    new-instance v6, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;

    const/16 v16, 0x1

    move-object v10, v6

    move-object v11, v3

    move-object v12, v4

    move-object v13, v14

    move-object v5, v14

    move-object v14, v2

    move-object v7, v15

    move-object v15, v2

    invoke-direct/range {v10 .. v16}, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/dagger/internal/Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    new-instance v8, Landroidx/appcompat/widget/TooltipPopup;

    move-object v10, v8

    move-object v11, v7

    move-object v13, v2

    move-object v14, v5

    move-object v15, v3

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Landroidx/appcompat/widget/TooltipPopup;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore_Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    new-instance v10, Landroidx/work/WorkQuery$Builder;

    invoke-direct {v10, v3, v2, v5, v2}, Landroidx/work/WorkQuery$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;

    const/4 v11, 0x0

    move-object v3, v2

    move-object v4, v1

    move-object v5, v9

    move-object v7, v8

    move-object v8, v10

    move v9, v11

    invoke-direct/range {v3 .. v9}, Lcom/google/android/datatransport/runtime/TransportRuntime_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/google/android/datatransport/runtime/dagger/internal/Factory;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/dagger/internal/DoubleCheck;->provider(Lcom/google/android/datatransport/runtime/dagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->transportRuntimeProvider:Ljavax/inject/Provider;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "instance cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic close()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->close$com$google$android$datatransport$runtime$TransportRuntimeComponent()V

    return-void
.end method

.method public final close$com$google$android$datatransport$runtime$TransportRuntimeComponent()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/DaggerTransportRuntimeComponent;->sQLiteEventStoreProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->close()V

    return-void
.end method
