.class public final Lcom/google/android/gms/common/wrappers/Wrappers;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/common/wrappers/Wrappers;


# instance fields
.field public zzb:Lcom/google/android/play/core/appupdate/zzi;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/wrappers/Wrappers;

    invoke-direct {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/wrappers/Wrappers;->zza:Lcom/google/android/gms/common/wrappers/Wrappers;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzb:Lcom/google/android/play/core/appupdate/zzi;

    return-void
.end method

.method public static packageManager(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/zzi;
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/wrappers/Wrappers;->zza:Lcom/google/android/gms/common/wrappers/Wrappers;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzb:Lcom/google/android/play/core/appupdate/zzi;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    new-instance v1, Lcom/google/android/play/core/appupdate/zzi;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/appupdate/zzi;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzb:Lcom/google/android/play/core/appupdate/zzi;

    :cond_1
    iget-object p0, v0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzb:Lcom/google/android/play/core/appupdate/zzi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
