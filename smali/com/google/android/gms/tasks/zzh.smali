.class public final Lcom/google/android/gms/tasks/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/zzq;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/gms/tasks/OnCanceledListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final zza:Ljava/util/concurrent/Executor;

.field public final zzb:Ljava/lang/Object;

.field public final zzc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzt;Lcom/google/android/gms/tasks/OnCanceledListener;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tasks/zzh;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tasks/zzh;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/tasks/zzh;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/tasks/zzh;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zzc()V

    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/tasks/zzw;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/tasks/zzh;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/OnSuccessListener;

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/work/Worker$2;

    const/16 v2, 0x12

    invoke-direct {v1, v2, p0, p1}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/OnFailureListener;

    if-nez v1, :cond_2

    monitor-exit v0

    goto :goto_1

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/work/Worker$2;

    const/16 v2, 0x11

    invoke-direct {v1, v2, p0, p1}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/OnCompleteListener;

    if-nez v1, :cond_4

    monitor-exit v0

    goto :goto_2

    :cond_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/work/Worker$2;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0, p1}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :pswitch_3
    iget-boolean p1, p1, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/OnCanceledListener;

    if-nez v0, :cond_5

    monitor-exit p1

    goto :goto_3

    :cond_5
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/tasks/zzg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tasks/zzg;-><init>(Lcom/google/android/gms/tasks/zzh;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :cond_6
    :goto_3
    return-void

    :goto_4
    new-instance v0, Landroidx/work/Worker$2;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0, p1}, Landroidx/work/Worker$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzh;->zza:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
