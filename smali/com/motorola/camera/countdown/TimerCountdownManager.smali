.class public abstract Lcom/motorola/camera/countdown/TimerCountdownManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static handler:Lcom/google/android/gms/internal/base/zau;

.field public static isCancelled:Z

.field public static isRunning:Z

.field public static timer:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static stop(Z)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/google/android/gms/internal/base/zau;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->isCancelled:Z

    :cond_1
    sget-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/countdown/TimerCountdownCallback;

    if-eqz p0, :cond_2

    invoke-interface {v3}, Lcom/motorola/camera/countdown/TimerCountdownCallback;->onCountDownCancel()V

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sput-boolean v1, Lcom/motorola/camera/countdown/TimerCountdownManager;->isCancelled:Z

    sput-boolean v1, Lcom/motorola/camera/countdown/TimerCountdownManager;->isRunning:Z

    sput v1, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const/4 p0, 0x0

    sput-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/google/android/gms/internal/base/zau;

    return-void
.end method
