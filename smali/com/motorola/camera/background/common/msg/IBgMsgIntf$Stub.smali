.class public abstract Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/background/common/msg/IBgMsgIntf;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.camera.background.common.msg.IBgMsgIntf"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.motorola.camera.background.common.msg.IBgMsgIntf"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    return-object v0

    :cond_1
    new-instance v0, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    const-string v0, "com.motorola.camera.background.common.msg.IBgMsgIntf"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object p1, Lcom/motorola/camera/background/common/msg/MsgType;->CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    invoke-static {p2, p1}, Lkotlin/io/ExceptionsKt;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/motorola/camera/background/common/msg/MsgType;

    sget-object p1, Lcom/motorola/camera/background/common/TaskId;->CREATOR:Lcom/motorola/camera/background/common/TaskId$CREATOR;

    invoke-static {p2, p1}, Lkotlin/io/ExceptionsKt;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    invoke-static {p2, p1}, Lkotlin/io/ExceptionsKt;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/motorola/camera/background/common/ReturnCode;

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processCtlMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object p1, Lcom/motorola/camera/background/common/msg/MsgType;->CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    invoke-static {p2, p1}, Lkotlin/io/ExceptionsKt;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/motorola/camera/background/common/msg/MsgType;

    sget-object p1, Lcom/motorola/camera/background/common/TaskId;->CREATOR:Lcom/motorola/camera/background/common/TaskId$CREATOR;

    invoke-static {p2, p1}, Lkotlin/io/ExceptionsKt;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/motorola/camera/background/common/TaskId;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    invoke-static {p2, p1}, Lkotlin/io/ExceptionsKt;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/motorola/camera/background/common/ReturnCode;

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/ReturnCode;Lcom/motorola/camera/background/common/TaskId;Lcom/motorola/camera/background/common/msg/MsgType;Ljava/lang/String;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p0

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0, v1}, Lkotlin/io/ExceptionsKt;->-$$Nest$smwriteTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    return v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
