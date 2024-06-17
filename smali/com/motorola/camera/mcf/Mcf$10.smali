.class public final Lcom/motorola/camera/mcf/Mcf$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$arg1:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$10;->val$arg1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmNotifyListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing listener WeakReference for notify event."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmNotifyListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$10;->val$arg1:I

    invoke-static {p0}, Lcom/motorola/camera/mcf/Mcf$SceneMode;->-$$Nest$smtoEnumVal(I)Lcom/motorola/camera/mcf/Mcf$SceneMode;

    move-result-object p0

    :try_start_0
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v1, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
