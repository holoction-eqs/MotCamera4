.class public final Landroidx/room/MultiInstanceInvalidationClient$callback$1;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroidx/room/IMultiInstanceInvalidationCallback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method public constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string p1, "androidx.room.IMultiInstanceInvalidationCallback"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onInvalidation([Ljava/lang/String;)V
    .locals 3

    const-string v0, "tables"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->onTransact$androidx$room$IMultiInstanceInvalidationCallback$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method

.method public final onTransact$androidx$room$IMultiInstanceInvalidationCallback$Stub(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "androidx.room.IMultiInstanceInvalidationCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->onInvalidation([Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
