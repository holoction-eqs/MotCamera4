.class public abstract Lcom/google/android/gms/internal/base/zab;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    iput p2, p0, Lcom/google/android/gms/internal/base/zab;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/base/zab;->$r8$classId:I

    const/4 v1, 0x1

    const v2, 0xffffff

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-le p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/base/zab;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    :goto_0
    return v1

    :pswitch_1
    if-le p1, v2, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/base/zab;->zaa(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    :goto_1
    return v1

    :goto_2
    if-le p1, v2, :cond_4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/base/zab;->zza(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract zaa(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
.end method

.method public zza(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
