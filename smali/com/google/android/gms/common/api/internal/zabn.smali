.class public final Lcom/google/android/gms/common/api/internal/zabn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zaa:I

.field public final zab:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zabn;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/api/internal/zabn;->zaa:I

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabn;->zab:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/google/android/gms/common/api/internal/zabn;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabn;->zab:Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zabn;->zaa:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zabn;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zabn;->zaa:I

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabn;->zab:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zabn;->$r8$classId:I

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zabn;->zaa:I

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabn;->zab:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/material/datepicker/MaterialCalendar;

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/google/android/gms/common/api/internal/zabq;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/zabq;->zaH(I)V

    return-void

    :goto_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v2}, Landroid/os/Process;->setThreadPriority(II)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v2}, Landroid/os/Process;->setThreadPriority(II)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
