.class public final Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final delegate:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;->delegate:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    iget v0, p0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/SafeLoggingExecutor;->delegate:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zzi;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/google/mlkit/common/sdkinternal/zzi;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
