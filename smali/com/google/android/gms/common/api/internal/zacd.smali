.class public final Lcom/google/android/gms/common/api/internal/zacd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field public final zab:I

.field public final zac:Lcom/google/android/gms/common/api/internal/ApiKey;

.field public final zad:J

.field public final zae:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacd;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zacd;->zab:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zacd;->zac:Lcom/google/android/gms/common/api/internal/ApiKey;

    iput-wide p4, p0, Lcom/google/android/gms/common/api/internal/zacd;->zad:J

    iput-wide p6, p0, Lcom/google/android/gms/common/api/internal/zacd;->zae:J

    return-void
.end method

.method public static zab(Lcom/google/android/gms/common/api/internal/zabq;Lcom/google/android/gms/common/internal/GmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .locals 7

    iget-object p1, p1, Lcom/google/android/gms/common/internal/GmsClient;->zzD:Lcom/google/android/gms/common/internal/zzj;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzj;->zzd:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    :goto_0
    if-eqz p1, :cond_8

    iget-boolean v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzb:Z

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzd:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzf:[I

    if-nez v1, :cond_1

    goto :goto_5

    :cond_1
    array-length v4, v1

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v1, v5

    if-ne v6, p2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v2, :cond_7

    goto :goto_6

    :cond_4
    array-length v4, v1

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_6

    aget v6, v1, v5

    if-ne v6, p2, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    iget p0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zam:I

    iget p2, p1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zze:I

    if-ge p0, p2, :cond_8

    return-object p1

    :cond_8
    :goto_6
    return-object v0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/zzw;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zacd;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaF()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getInstance()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zzc:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzb:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zacd;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/zacd;->zac:Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zabq;

    if-eqz v3, :cond_f

    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zabq;->zac:Lcom/google/android/gms/common/internal/GmsClient;

    instance-of v5, v4, Lcom/google/android/gms/common/internal/GmsClient;

    if-nez v5, :cond_3

    goto/16 :goto_9

    :cond_3
    iget-wide v5, v0, Lcom/google/android/gms/common/api/internal/zacd;->zad:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    const/4 v9, 0x1

    if-lez v5, :cond_4

    move v5, v9

    goto :goto_1

    :cond_4
    move v5, v6

    :goto_1
    iget v14, v4, Lcom/google/android/gms/common/internal/GmsClient;->zzy:I

    const/16 v10, 0x64

    if-eqz v2, :cond_9

    iget-boolean v11, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzc:Z

    and-int/2addr v5, v11

    iget v11, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zzd:I

    iget v12, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zze:I

    iget v2, v2, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->zza:I

    iget-object v13, v4, Lcom/google/android/gms/common/internal/GmsClient;->zzD:Lcom/google/android/gms/common/internal/zzj;

    if-eqz v13, :cond_5

    move v13, v9

    goto :goto_2

    :cond_5
    move v13, v6

    :goto_2
    if-eqz v13, :cond_8

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/GmsClient;->isConnecting()Z

    move-result v13

    if-nez v13, :cond_8

    iget v5, v0, Lcom/google/android/gms/common/api/internal/zacd;->zab:I

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/common/api/internal/zacd;->zab(Lcom/google/android/gms/common/api/internal/zabq;Lcom/google/android/gms/common/internal/GmsClient;I)Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    move-result-object v3

    if-nez v3, :cond_6

    return-void

    :cond_6
    iget-boolean v4, v3, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zzc:Z

    if-eqz v4, :cond_7

    iget-wide v4, v0, Lcom/google/android/gms/common/api/internal/zacd;->zad:J

    cmp-long v4, v4, v7

    if-lez v4, :cond_7

    goto :goto_3

    :cond_7
    move v9, v6

    :goto_3
    iget v12, v3, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zze:I

    move v5, v9

    :cond_8
    move v3, v11

    move v4, v12

    goto :goto_4

    :cond_9
    const/16 v11, 0x1388

    move v2, v6

    move v4, v10

    move v3, v11

    :goto_4
    iget-object v9, v0, Lcom/google/android/gms/common/api/internal/zacd;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/tasks/zzw;->isSuccessful()Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_a

    move v13, v6

    goto :goto_7

    :cond_a
    iget-boolean v6, v1, Lcom/google/android/gms/tasks/zzw;->zzd:Z

    if-eqz v6, :cond_b

    move v6, v10

    goto :goto_6

    :cond_b
    iget-object v6, v1, Lcom/google/android/gms/tasks/zzw;->zza:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v1, v1, Lcom/google/android/gms/tasks/zzw;->zzf:Ljava/lang/Exception;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v6, v1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v6, :cond_d

    check-cast v1, Lcom/google/android/gms/common/api/ApiException;

    iget-object v1, v1, Lcom/google/android/gms/common/api/ApiException;->mStatus:Lcom/google/android/gms/common/api/Status;

    iget v6, v1, Lcom/google/android/gms/common/api/Status;->zzc:I

    iget-object v1, v1, Lcom/google/android/gms/common/api/Status;->zzf:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v1, :cond_c

    move v1, v12

    goto :goto_5

    :cond_c
    iget v1, v1, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    :goto_5
    move v13, v1

    goto :goto_7

    :cond_d
    const/16 v1, 0x65

    move v6, v1

    :goto_6
    move v13, v12

    :goto_7
    if-eqz v5, :cond_e

    iget-wide v7, v0, Lcom/google/android/gms/common/api/internal/zacd;->zad:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    move-wide/from16 v17, v7

    iget-wide v7, v0, Lcom/google/android/gms/common/api/internal/zacd;->zae:J

    sub-long v7, v15, v7

    long-to-int v1, v7

    move/from16 v21, v1

    move-wide v7, v10

    goto :goto_8

    :cond_e
    move-wide/from16 v17, v7

    move/from16 v21, v12

    :goto_8
    new-instance v1, Lcom/google/android/gms/common/internal/MethodInvocation;

    iget v11, v0, Lcom/google/android/gms/common/api/internal/zacd;->zab:I

    const/4 v0, 0x0

    const/16 v19, 0x0

    move-object v10, v1

    move v12, v6

    move v5, v14

    move-wide/from16 v14, v17

    move-wide/from16 v16, v7

    move-object/from16 v18, v0

    move/from16 v20, v5

    invoke-direct/range {v10 .. v21}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    int-to-long v5, v3

    iget-object v0, v9, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Lcom/google/android/gms/internal/base/zau;

    new-instance v3, Lcom/google/android/gms/common/api/internal/zace;

    move-object v15, v3

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-wide/from16 v18, v5

    move/from16 v20, v4

    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/common/api/internal/zace;-><init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_f
    :goto_9
    return-void
.end method
