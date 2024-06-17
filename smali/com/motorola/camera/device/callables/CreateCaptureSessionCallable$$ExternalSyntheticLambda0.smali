.class public final synthetic Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/Handler;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$$ExternalSyntheticLambda0;->f$0:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$$ExternalSyntheticLambda0;->f$0:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
