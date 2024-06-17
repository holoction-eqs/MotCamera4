.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/android/datatransport/runtime/backends/CreationContext;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;
    .locals 1

    new-instance p0, Lcom/google/android/datatransport/cct/CctTransportBackend;

    check-cast p1, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;

    iget-object v0, p1, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-direct {p0, v0}, Lcom/google/android/datatransport/cct/CctTransportBackend;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
