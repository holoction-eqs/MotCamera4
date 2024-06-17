.class public final Lcom/motorola/camera/mcf/Mcf$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$obj1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/mcf/Mcf$5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$5;->val$obj1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$5;->$r8$classId:I

    const-string v1, "postNotifyEventFromNative: "

    const-string v2, "Missing listener WeakReference for notify event."

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$5;->val$obj1:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmNotifyListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmNotifyListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmNotifyListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmNotifyListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;

    if-eqz v0, :cond_3

    :try_start_1
    check-cast p0, Lcom/motorola/camera/mcf/McfSceneProp;

    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :pswitch_2
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmFullFrameListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    if-eqz v0, :cond_4

    :try_start_2
    check-cast p0, Lcom/motorola/camera/mcf/McfAuxiliaryData;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->onAuxiliaryData(Lcom/motorola/camera/mcf/McfAuxiliaryData;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
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

    :cond_4
    :goto_2
    return-void

    :goto_3
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmNotifyListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmNotifyListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnNotifyListener;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/motorola/camera/mcf/McfCallback;

    sget-object v1, Lcom/motorola/camera/mcf/McfCallback;->JSON:Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/mcf/McfCallback;->get(Lcom/motorola/camera/mcf/McfCallback$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackType()Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;

    :try_start_3
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: onMotNVDetect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;

    :try_start_4
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: onJGDRSD: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;

    :try_start_5
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_5

    :catch_5
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: onBSTDRSD: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;

    :try_start_6
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v2, 0xc

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_5

    :catch_6
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: onMotDRSDv2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;

    :try_start_7
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_5

    :catch_7
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: onArcsoftDRSD: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackAIScene;

    :try_start_8
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->AI_SCENE:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lcom/motorola/camera/Notifier$TYPE;->-$$Nest$mnotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_5

    :catch_8
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: onAIScene: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackAutoCapture;

    :try_start_9
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_5

    :catch_9
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: onAutoCapture: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_a
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackModelLoadComplete;

    :try_start_a
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto/16 :goto_5

    :catch_a
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: onModelLoadComplete: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_b
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackModelResults;

    :try_start_b
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_5

    :catch_b
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: onModelResults: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_c
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfRtDepthStatus;

    :try_start_c
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_5

    :catch_c
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: onRealTimeDepthStatus: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_d
    invoke-virtual {p0, v2}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfCallbackBestShotVideo;

    :try_start_d
    check-cast v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0, p0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$2;->this$0:Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/device/callables/CameraCallable;->postCallback(Ljava/lang/Runnable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_5

    :catch_d
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: onBestShotVideoTrigger: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_e
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "postNotifyEventFromNative: undefined: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
