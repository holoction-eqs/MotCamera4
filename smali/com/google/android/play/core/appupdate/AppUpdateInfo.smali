.class public final Lcom/google/android/play/core/appupdate/AppUpdateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zzi:J

.field public final zzj:J

.field public final zzk:Landroid/app/PendingIntent;

.field public final zzl:Landroid/app/PendingIntent;

.field public final zzm:Landroid/app/PendingIntent;

.field public final zzn:Landroid/app/PendingIntent;

.field public zzp:Z


# direct methods
.method public constructor <init>(IIIJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzp:Z

    iput p1, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzb:I

    iput p2, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzc:I

    iput p3, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzd:I

    iput-wide p4, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzi:J

    iput-wide p6, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzj:J

    iput-object p8, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzk:Landroid/app/PendingIntent;

    iput-object p9, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzl:Landroid/app/PendingIntent;

    iput-object p10, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzm:Landroid/app/PendingIntent;

    iput-object p11, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzn:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/appupdate/zzx;)Landroid/app/PendingIntent;
    .locals 8

    iget-wide v0, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzj:J

    iget-wide v2, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzi:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-boolean v6, p1, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    iget p1, p1, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    const/4 v7, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzl:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    if-eqz v6, :cond_1

    cmp-long p1, v2, v0

    if-gtz p1, :cond_1

    move v4, v5

    :cond_1
    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzn:Landroid/app/PendingIntent;

    return-object p0

    :cond_2
    return-object v7

    :cond_3
    if-ne p1, v5, :cond_6

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzk:Landroid/app/PendingIntent;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    if-eqz v6, :cond_5

    cmp-long p1, v2, v0

    if-gtz p1, :cond_5

    move v4, v5

    :cond_5
    if-eqz v4, :cond_6

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->zzm:Landroid/app/PendingIntent;

    return-object p0

    :cond_6
    return-object v7
.end method
