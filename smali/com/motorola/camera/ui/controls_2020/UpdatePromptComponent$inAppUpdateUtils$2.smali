.class public final Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$1()V
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->controlPanelOpen:Z

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerDismissed:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->shouldKeepHidden:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;

    const/16 v3, 0xc

    invoke-direct {v1, p0, v3}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->getInAppUpdateUtils()Lcom/motorola/camera/utility/InAppUpdateUtils;

    move-result-object v1

    iput-boolean v2, v1, Lcom/motorola/camera/utility/InAppUpdateUtils;->isInstallingUpdate:Z

    invoke-virtual {v1}, Lcom/motorola/camera/utility/InAppUpdateUtils;->getAppUpdateManager()Lcom/google/android/play/core/appupdate/zzg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/play/core/appupdate/zzg;->getAppUpdateInfo()Lcom/google/android/gms/tasks/zzw;

    move-result-object v3

    new-instance v4, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;

    invoke-direct {v4, v1, v0}, Lcom/motorola/camera/utility/InAppUpdateUtils$getRetryUpdateInfo$1;-><init>(Lcom/motorola/camera/utility/InAppUpdateUtils;I)V

    new-instance v1, Lcom/motorola/camera/utility/lens/LensApiV1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v4}, Lcom/motorola/camera/utility/lens/LensApiV1$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/tasks/zzw;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->bannerHidden:Z

    :cond_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->controlPanelOpen:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke$2()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;->$r8$classId:I

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;->this$0:Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;->invoke$1()V

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2;->invoke$1()V

    return-object v0

    :pswitch_2
    new-instance p0, Lcom/motorola/camera/utility/InAppUpdateUtils;

    iget-object v0, v2, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->activityContext:Landroid/app/Activity;

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/utility/InAppUpdateUtils;-><init>(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;)V

    return-object p0

    :goto_0
    iget-object p0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_0

    const v0, 0x7f0a046b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
