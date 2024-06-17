.class public abstract Lcom/google/android/play/core/appupdate/internal/zzg;
.super Lcom/google/android/gms/internal/base/zab;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/appupdate/internal/zzh;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/base/zab;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const/4 p3, 0x2

    const-string v0, "Parcel data not fully consumed, unread size: "

    const/4 v1, 0x0

    if-eq p1, p3, :cond_3

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    sget p3, Lcom/google/android/play/core/appupdate/internal/zzc;->$r8$clinit:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Parcelable;

    :goto_0
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->dataAvail()I

    move-result p1

    if-gtz p1, :cond_2

    invoke-interface {p0, v1}, Lcom/google/android/play/core/appupdate/internal/zzh;->zzb(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-static {v0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    sget p3, Lcom/google/android/play/core/appupdate/internal/zzc;->$r8$clinit:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Parcelable;

    :goto_1
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->dataAvail()I

    move-result p1

    if-gtz p1, :cond_5

    invoke-interface {p0, v1}, Lcom/google/android/play/core/appupdate/internal/zzh;->zzc(Landroid/os/Bundle;)V

    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_5
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-static {v0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
