.class public abstract Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;
.super Lcom/motorola/camera/fsm/camera/StateChangeListener;
.source "SourceFile"


# instance fields
.field public final cameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

.field public final debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/CameraFsm;)V
    .locals 3

    const-string v0, "cameraFsm"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/StateChangeListener;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->cameraFsm:Lcom/motorola/camera/fsm/camera/CameraFsm;

    new-instance p1, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    new-instance v0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$1;-><init>(Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;I)V

    new-instance v1, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener$1;-><init>(Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;I)V

    invoke-direct {p1, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/motorola/camera/instrumentreport/DebugBroadcastStateChangeListener;->debugBroadcastHelper:Lcom/motorola/camera/ui/controls_2020/settings/helper/DebugBroadcastHelper;

    return-void
.end method
