.class public final Lcom/motorola/camera/mcf/Mcf$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$arg4:I

.field public final synthetic val$obj2:Ljava/lang/Object;

.field public final synthetic val$objArr1:[Ljava/lang/Object;

.field public final synthetic val$objArr2:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$3;->val$arg4:I

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$3;->val$obj2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$3;->val$objArr2:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/motorola/camera/mcf/Mcf$3;->val$objArr1:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmFullFrameListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/motorola/camera/mcf/Mcf$3;->val$arg4:I

    invoke-static {v1}, Lcom/motorola/camera/mcf/Mcf$InstanceType;->toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$InstanceType;

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$3;->val$obj2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$3;->val$objArr2:[Ljava/lang/Object;

    check-cast v2, [Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$3;->val$objArr1:[Ljava/lang/Object;

    check-cast p0, [Lcom/motorola/camera/mcf/McfMetadata;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->onFullFrameRequest(Ljava/lang/String;[Lcom/motorola/camera/mcf/McfInstanceIdentifier;[Lcom/motorola/camera/mcf/McfMetadata;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postFullFrameEventFromNative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
