.class public final Lcom/google/android/gms/common/api/internal/zaf;
.super Lcom/google/android/gms/common/api/internal/zad;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final zab:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zaf;->$r8$classId:I

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/zad;-><init>(ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaf;->zab:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zaa(Lcom/google/android/gms/common/api/internal/zabq;)Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaf;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaf;->zab:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/common/api/internal/zaci;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabq;->zag:Ljava/util/HashMap;

    check-cast p0, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zaci;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/zabq;)[Lcom/google/android/gms/common/Feature;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaf;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaf;->zab:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/common/api/internal/zaci;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabq;->zag:Ljava/util/HashMap;

    check-cast p0, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/internal/zaci;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/zabq;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaf;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaf;->zab:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/internal/zaci;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    const/4 p0, 0x0

    throw p0

    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/zabq;->zag:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaf;->zab:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaci;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zad;->zaa:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tasks/zzw;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zze:Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/zzr;->zzb(Lcom/google/android/gms/tasks/zzw;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic zag(Lcom/google/android/gms/common/api/internal/zaad;Z)V
    .locals 0

    return-void
.end method
