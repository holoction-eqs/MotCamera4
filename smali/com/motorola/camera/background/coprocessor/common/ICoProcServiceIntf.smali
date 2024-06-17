.class public interface abstract Lcom/motorola/camera/background/coprocessor/common/ICoProcServiceIntf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract deinitialize()V
.end method

.method public abstract initialize(Ljava/lang/String;[BLandroid/os/Bundle;)Lcom/motorola/camera/background/common/ReturnCode;
.end method

.method public abstract msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
.end method

.method public abstract registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;ILjava/lang/String;)I
.end method

.method public abstract unregisterClient(I)V
.end method
