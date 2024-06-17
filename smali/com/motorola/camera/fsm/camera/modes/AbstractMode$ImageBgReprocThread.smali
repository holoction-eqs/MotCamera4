.class public final Lcom/motorola/camera/fsm/camera/modes/AbstractMode$ImageBgReprocThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ImageBgReprocHandler"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final quit()Z
    .locals 0

    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result p0

    return p0
.end method

.method public final quitSafely()Z
    .locals 0

    invoke-super {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    move-result p0

    return p0
.end method
