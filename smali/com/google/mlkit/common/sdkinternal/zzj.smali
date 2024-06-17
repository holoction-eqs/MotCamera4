.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic zza:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzj;->zza:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zzi;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/common/sdkinternal/zzi;-><init>(ILjava/lang/Runnable;)V

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzj;->zza:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
