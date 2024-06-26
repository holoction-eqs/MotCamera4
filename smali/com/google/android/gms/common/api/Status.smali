.class public final Lcom/google/android/gms/common/api/Status;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;


# instance fields
.field public final zzb:I

.field public final zzc:I

.field public final zzd:Ljava/lang/String;

.field public final zze:Landroid/app/PendingIntent;

.field public final zzf:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/zza;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/zza;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/api/Status;->zzb:I

    iput p2, p0, Lcom/google/android/gms/common/api/Status;->zzc:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/Status;->zzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/common/api/Status;->zze:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/google/android/gms/common/api/Status;->zzf:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 6

    .line 2
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget v0, p1, Lcom/google/android/gms/common/api/Status;->zzb:I

    iget v2, p0, Lcom/google/android/gms/common/api/Status;->zzb:I

    if-ne v2, v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->zzc:I

    iget v2, p1, Lcom/google/android/gms/common/api/Status;->zzc:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->zzd:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->zzd:Ljava/lang/String;

    invoke-static {v0, v2}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->zze:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/google/android/gms/common/api/Status;->zze:Landroid/app/PendingIntent;

    invoke-static {v0, v2}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/common/api/Status;->zzf:Lcom/google/android/gms/common/ConnectionResult;

    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->zzf:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p0, p1}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/common/api/Status;->zzb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/Status;->zzc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->zze:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/google/android/gms/common/api/Status;->zzf:Lcom/google/android/gms/common/ConnectionResult;

    iget-object p0, p0, Lcom/google/android/gms/common/api/Status;->zzd:Ljava/lang/String;

    filled-new-array {v0, v1, p0, v2, v3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroidx/work/impl/StartStopTokens;

    invoke-direct {v0, p0}, Landroidx/work/impl/StartStopTokens;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/Status;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/common/api/Status;->zzc:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v2, "unknown status code: "

    invoke-static {v2, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const-string v1, "RECONNECTION_TIMED_OUT"

    goto :goto_0

    :pswitch_2
    const-string v1, "RECONNECTION_TIMED_OUT_DURING_UPDATE"

    goto :goto_0

    :pswitch_3
    const-string v1, "CONNECTION_SUSPENDED_DURING_CALL"

    goto :goto_0

    :pswitch_4
    const-string v1, "REMOTE_EXCEPTION"

    goto :goto_0

    :pswitch_5
    const-string v1, "DEAD_CLIENT"

    goto :goto_0

    :pswitch_6
    const-string v1, "API_NOT_CONNECTED"

    goto :goto_0

    :pswitch_7
    const-string v1, "CANCELED"

    goto :goto_0

    :pswitch_8
    const-string v1, "TIMEOUT"

    goto :goto_0

    :pswitch_9
    const-string v1, "INTERRUPTED"

    goto :goto_0

    :pswitch_a
    const-string v1, "ERROR"

    goto :goto_0

    :pswitch_b
    const-string v1, "DEVELOPER_ERROR"

    goto :goto_0

    :pswitch_c
    const-string v1, "INTERNAL_ERROR"

    goto :goto_0

    :pswitch_d
    const-string v1, "NETWORK_ERROR"

    goto :goto_0

    :pswitch_e
    const-string v1, "RESOLUTION_REQUIRED"

    goto :goto_0

    :pswitch_f
    const-string v1, "INVALID_ACCOUNT"

    goto :goto_0

    :pswitch_10
    const-string v1, "SIGN_IN_REQUIRED"

    goto :goto_0

    :pswitch_11
    const-string v1, "SERVICE_DISABLED"

    goto :goto_0

    :pswitch_12
    const-string v1, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_0

    :pswitch_13
    const-string v1, "SUCCESS"

    goto :goto_0

    :pswitch_14
    const-string v1, "SUCCESS_CACHE"

    :goto_0
    const-string v2, "statusCode"

    invoke-virtual {v0, v1, v2}, Landroidx/work/impl/StartStopTokens;->add(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "resolution"

    iget-object p0, p0, Lcom/google/android/gms/common/api/Status;->zze:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v1}, Landroidx/work/impl/StartStopTokens;->add(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/work/impl/StartStopTokens;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/api/Status;->zzc:I

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->zzd:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->zze:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/api/Status;->zzf:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 p2, 0x3e8

    iget p0, p0, Lcom/google/android/gms/common/api/Status;->zzb:I

    invoke-static {p1, p2, p0}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
