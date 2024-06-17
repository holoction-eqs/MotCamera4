.class public final Lcom/google/android/play/core/appupdate/zzx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:I

.field public final zzb:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    iput-boolean p2, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    return-void
.end method

.method public static defaultOptions()Lcom/google/android/play/core/appupdate/zzx;
    .locals 3

    const/4 v0, 0x1

    int-to-byte v0, v0

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    const-string v2, " appUpdateType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const-string v0, " allowAssetPackDeletion"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/play/core/appupdate/zzx;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/play/core/appupdate/zzx;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/play/core/appupdate/zzx;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/play/core/appupdate/zzx;

    iget v1, p1, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    iget v3, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    if-ne v3, v1, :cond_1

    iget-boolean p0, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    iget-boolean p1, p1, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    const/4 v2, 0x1

    iget-boolean p0, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    if-eq v2, p0, :cond_0

    const/16 p0, 0x4d5

    goto :goto_0

    :cond_0
    const/16 p0, 0x4cf

    :goto_0
    mul-int/2addr v0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppUpdateOptions{appUpdateType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/play/core/appupdate/zzx;->zza:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allowAssetPackDeletion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/play/core/appupdate/zzx;->zzb:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
