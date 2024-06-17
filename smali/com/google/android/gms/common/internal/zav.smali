.class public final Lcom/google/android/gms/common/internal/zav;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/zav;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zaa:I

.field public final zab:Landroid/os/IBinder;

.field public final zac:Lcom/google/android/gms/common/ConnectionResult;

.field public final zad:Z

.field public final zae:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/zza;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/zza;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/internal/zav;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/zav;->zaa:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zav;->zab:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/zav;->zad:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/zav;->zae:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/internal/zav;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/internal/zav;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    const-string v3, "com.google.android.gms.common.internal.IAccountAccessor"

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zav;->zab:Landroid/os/IBinder;

    if-nez p0, :cond_3

    move-object v4, v2

    goto :goto_0

    :cond_3
    sget v4, Lcom/google/android/gms/common/internal/AccountAccessor;->$r8$clinit:I

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v5, :cond_4

    check-cast v4, Lcom/google/android/gms/common/internal/IAccountAccessor;

    goto :goto_0

    :cond_4
    new-instance v4, Lcom/google/android/gms/common/internal/zzv;

    invoke-direct {v4, p0}, Lcom/google/android/gms/common/internal/zzv;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iget-object p0, p1, Lcom/google/android/gms/common/internal/zav;->zab:Landroid/os/IBinder;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    sget p1, Lcom/google/android/gms/common/internal/AccountAccessor;->$r8$clinit:I

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v2, p1, Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v2, :cond_6

    check-cast p1, Lcom/google/android/gms/common/internal/IAccountAccessor;

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/google/android/gms/common/internal/zzv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/internal/zzv;-><init>(Landroid/os/IBinder;)V

    :goto_1
    move-object v2, p1

    :goto_2
    invoke-static {v4, v2}, L_COROUTINE/_BOUNDARY;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/internal/zav;->zaa:I

    invoke-static {p1, v1, v2}, Landroidx/media3/common/Format$1;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zav;->zab:Landroid/os/IBinder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-static {v2, p1}, Landroidx/media3/common/Format$1;->zza(ILandroid/os/Parcel;)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-static {v2, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    :goto_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v1, v2, p2}, Landroidx/media3/common/Format$1;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 p2, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/zav;->zad:Z

    invoke-static {p1, p2, v1}, Landroidx/media3/common/Format$1;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x5

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/zav;->zae:Z

    invoke-static {p1, p2, p0}, Landroidx/media3/common/Format$1;->writeBoolean(Landroid/os/Parcel;IZ)V

    invoke-static {v0, p1}, Landroidx/media3/common/Format$1;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
