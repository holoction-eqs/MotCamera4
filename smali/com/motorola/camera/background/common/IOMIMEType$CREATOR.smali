.class public final Lcom/motorola/camera/background/common/IOMIMEType$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-static {}, Lcom/motorola/camera/background/common/IOMIMEType;->values()[Lcom/motorola/camera/background/common/IOMIMEType;

    move-result-object p1

    aget-object p0, p1, p0

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/motorola/camera/background/common/IOMIMEType;

    return-object p0
.end method
