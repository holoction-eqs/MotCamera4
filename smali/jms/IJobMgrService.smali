.class public interface abstract Ljms/IJobMgrService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract cleanUp()Z
.end method

.method public abstract deinitialize()V
.end method

.method public abstract getPid()I
.end method

.method public abstract initialize(Ljava/lang/String;[B)Lcom/motorola/camera/background/common/ReturnCode;
.end method

.method public abstract msgIntf()Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
.end method

.method public abstract numPendingJobs()I
.end method

.method public abstract registerClient(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/ClientType;ILjava/lang/String;)I
.end method

.method public abstract setPriority(ILcom/motorola/camera/background/common/Priority;)V
.end method

.method public abstract unregisterClient(I)V
.end method
