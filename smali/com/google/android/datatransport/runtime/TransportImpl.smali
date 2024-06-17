.class public final Lcom/google/android/datatransport/runtime/TransportImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final name:Ljava/lang/String;

.field public final payloadEncoding:Lcom/google/android/datatransport/Encoding;

.field public final transformer:Lcom/google/android/datatransport/Transformer;

.field public final transportContext:Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

.field public final transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/runtime/TransportInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportContext:Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    const-string p1, "FIREBASE_ML_SDK"

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->payloadEncoding:Lcom/google/android/datatransport/Encoding;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transformer:Lcom/google/android/datatransport/Transformer;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;

    return-void
.end method


# virtual methods
.method public final send(Lcom/google/android/datatransport/AutoValue_Event;)V
    .locals 8

    sget-object v3, Lkotlin/UNINITIALIZED_VALUE;->instance:Lkotlin/UNINITIALIZED_VALUE;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportContext:Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transformer:Lcom/google/android/datatransport/Transformer;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->payloadEncoding:Lcom/google/android/datatransport/Encoding;

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;

    check-cast p0, Lcom/google/android/datatransport/runtime/TransportRuntime;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v6, p1, Lcom/google/android/datatransport/AutoValue_Event;->priority:Lcom/google/android/datatransport/Priority;

    if-eqz v6, :cond_0

    new-instance v7, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    iget-object v0, v0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->extras:[B

    invoke-direct {v7, v5, v0, v6}, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;-><init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;)V

    new-instance v0, Lcom/airbnb/lottie/manager/FontAssetManager;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>(I)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->eventClock:Lcom/google/android/datatransport/runtime/time/Clock;

    check-cast v5, Lcom/google/android/datatransport/runtime/time/UptimeClock;

    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/time/UptimeClock;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    check-cast v5, Lcom/google/android/datatransport/runtime/time/UptimeClock;

    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/time/UptimeClock;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    iput-object v1, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/datatransport/runtime/EncodedPayload;

    iget-object p1, p1, Lcom/google/android/datatransport/AutoValue_Event;->payload:Ljava/lang/Object;

    invoke-interface {v2, p1}, Lcom/google/android/datatransport/Transformer;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v1, v4, p1}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    iput-object v1, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/airbnb/lottie/manager/FontAssetManager;->build()Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    move-result-object v4

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/TransportRuntime;->scheduler:Lcom/google/android/datatransport/runtime/scheduling/Scheduler;

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/work/impl/utils/WorkProgressUpdater$1;

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Landroidx/work/impl/utils/WorkProgressUpdater$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null priority"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null backendName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null encoding"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null transformer"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null transportName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null transportContext"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
