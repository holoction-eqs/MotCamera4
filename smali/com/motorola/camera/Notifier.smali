.class public final Lcom/motorola/camera/Notifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sNotifier:Lcom/motorola/camera/Notifier;


# instance fields
.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/Notifier;

    invoke-direct {v0}, Lcom/motorola/camera/Notifier;-><init>()V

    sput-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/camera/Notifier;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AI_SCENE:Lcom/motorola/camera/Notifier$TYPE;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/Notifier$TYPE;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->AI_SCENE:Lcom/motorola/camera/Notifier$TYPE;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/Notifier$TYPE;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/Notifier;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/motorola/camera/Notifier$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
