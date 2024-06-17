.class public final Lcom/motorola/camera/mcf/Mcf$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final val$arg1:I

.field public final val$obj1:Ljava/lang/Object;

.field public final val$obj2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$9;->$r8$classId:I

    .line 1
    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/motorola/camera/mcf/Mcf$9;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x6

    .line 3
    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$9;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 4
    iput p4, p0, Lcom/motorola/camera/mcf/Mcf$9;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/motorola/camera/mcf/Mcf$9;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj1:Ljava/lang/Object;

    iget-object v3, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$obj2:Ljava/lang/Object;

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$9;->val$arg1:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    check-cast v2, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v0, v2, Landroidx/work/impl/foreground/SystemForegroundService;->mNotificationManager:Landroid/app/NotificationManager;

    check-cast v3, Landroid/app/Notification;

    invoke-virtual {v0, p0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :pswitch_2
    check-cast v3, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v3, v2, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->add(Landroid/content/Intent;I)V

    return-void

    :pswitch_3
    check-cast v3, Lkotlin/DeepRecursiveFunction;

    iget-object v0, v3, Lkotlin/DeepRecursiveFunction;->block:Ljava/lang/Object;

    check-cast v0, L_COROUTINE/_BOUNDARY;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, L_COROUTINE/_BOUNDARY;->onFontRetrievalFailed(I)V

    :cond_0
    return-void

    :pswitch_4
    check-cast v2, Landroidx/activity/ComponentActivity$2;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    check-cast v3, Landroid/content/IntentSender$SendIntentException;

    const-string v4, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, p0, v1, v0}, Landroidx/activity/result/ActivityResultRegistry;->dispatchResult(IILandroid/content/Intent;)Z

    return-void

    :pswitch_5
    check-cast v2, Landroidx/activity/ComponentActivity$2;

    check-cast v3, Lcom/adobe/xmp/impl/xpath/XMPPath;

    iget-object v0, v3, Lcom/adobe/xmp/impl/xpath/XMPPath;->segments:Ljava/lang/Object;

    iget-object v1, v2, Landroidx/activity/result/ActivityResultRegistry;->mRcToKey:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v2, Landroidx/activity/result/ActivityResultRegistry;->mKeyToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;->mCallback:Landroidx/activity/result/ActivityResultCallback;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v2, Landroidx/activity/result/ActivityResultRegistry;->mLaunchedKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    check-cast v1, Landroidx/fragment/app/FragmentManager$2;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager$2;->onActivityResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, v2, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v1, v2, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void

    :pswitch_6
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmControlListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing listener WeakReference for control event."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmControlListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnControlListener;

    if-eqz v0, :cond_b

    const/4 v1, 0x2

    if-eqz p0, :cond_a

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq p0, v5, :cond_9

    const/4 v6, 0x4

    if-eq p0, v1, :cond_8

    const/4 v1, 0x5

    if-eq p0, v4, :cond_a

    if-eq p0, v6, :cond_7

    if-eq p0, v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Unknown RateControl input : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    goto :goto_2

    :cond_6
    const/4 v1, 0x7

    goto :goto_2

    :cond_7
    const/4 v1, 0x6

    goto :goto_2

    :cond_8
    move v1, v6

    goto :goto_2

    :cond_9
    move v1, v4

    :cond_a
    :goto_2
    :try_start_0
    check-cast v3, Ljava/lang/String;

    check-cast v2, Lcom/motorola/camera/mcf/McfMetadata;

    check-cast v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v3, v1, v2}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;->onFullFrameConfig$enumunboxing$(Ljava/lang/String;ILcom/motorola/camera/mcf/McfMetadata;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postControlEventFromNative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    return-void

    :goto_4
    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3, p0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
