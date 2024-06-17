.class public Lcom/google/android/gms/internal/base/zau;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/base/zau;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/os/Looper;)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/base/zau;->$r8$classId:I

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V
    .locals 0

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/base/zau;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/base/zau;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    sget p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const/16 p1, 0x3e8

    div-int/2addr p0, p1

    sget-object v0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/countdown/TimerCountdownCallback;

    sget v2, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    invoke-interface {v1, v2, p0}, Lcom/motorola/camera/countdown/TimerCountdownCallback;->onCountdown(II)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    sub-int/2addr p0, p1

    sput p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    const-wide/16 v0, 0x3e8

    if-lt p0, p1, :cond_1

    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/google/android/gms/internal/base/zau;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_1
    if-lez p0, :cond_2

    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->handler:Lcom/google/android/gms/internal/base/zau;

    if-eqz p0, :cond_3

    sget p1, Lcom/motorola/camera/countdown/TimerCountdownManager;->timer:I

    int-to-long v0, p1

    :goto_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/motorola/camera/countdown/TimerCountdownManager;->callbackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    new-instance v2, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;

    const/16 v3, 0x1c

    invoke-direct {v2, p0, v3}, Lcom/airbnb/lottie/LottieTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2, v0, v1}, Lcom/motorola/camera/CameraApp;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
