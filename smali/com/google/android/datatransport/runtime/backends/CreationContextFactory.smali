.class public final Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field public final wallClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/backends/CreationContextFactory;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    return-void
.end method
