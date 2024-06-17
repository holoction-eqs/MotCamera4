.class public final Lcom/google/android/gms/tasks/zzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/base/zau;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/base/zau;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/base/zau;-><init>(ILandroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Lcom/google/android/gms/internal/base/zau;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzu;->zza:Lcom/google/android/gms/internal/base/zau;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
