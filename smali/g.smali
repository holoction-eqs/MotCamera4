.class public final Lg;
.super La;
.source "SourceFile"

# interfaces
.implements Ld;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.apps.gsa.publicsearch.IPublicSearchService"

    invoke-direct {p0, p1, v0}, La;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lh;[B)Lf;
    .locals 0

    invoke-virtual {p0}, La;->a()Landroid/os/Parcel;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p3, p2}, Lb;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p3}, La;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p3, p1, Lf;

    if-eqz p3, :cond_1

    check-cast p1, Lf;

    goto :goto_0

    :cond_1
    new-instance p1, Li;

    invoke-direct {p1, p2}, Li;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
