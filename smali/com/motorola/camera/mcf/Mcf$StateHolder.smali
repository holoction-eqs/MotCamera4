.class public final Lcom/motorola/camera/mcf/Mcf$StateHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isInitialized:Ljava/util/concurrent/Future;

.field public isStarted:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isInitialized:Ljava/util/concurrent/Future;

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf$StateHolder;->isStarted:Ljava/util/concurrent/Future;

    return-void
.end method
