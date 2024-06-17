.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    const-string v1, "$context"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SYSTEM_POPUP:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/UpdateModelSwitchComponent;->targetFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    check-cast p2, Lcom/motorola/camera/ui/ModelUpdateDialogHelper$UpdateModelAlertPopupData;

    new-instance p1, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;

    const/16 v1, 0x12

    invoke-direct {p1, v1, p2, v0, p0}, Landroidx/room/QueryInterceptorDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
