.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 13

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v2, 0x1

    const-class v4, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    const-string v5, "onStateUpdateChange"

    const-string v6, "onStateUpdateChange(Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;)V"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v8, 0x1

    const-class v10, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    const-string v11, "startActivity"

    const-string v12, "startActivity(Landroid/content/Intent;)V"

    move-object v7, p0

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    const-class v3, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    const-string v4, "updateState"

    const-string v5, "updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$inAppUpdateUtils$2$1;->$r8$classId:I

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    const-string v2, "p0"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V

    return-object v0

    :pswitch_1
    check-cast p1, Lcom/motorola/camera/utility/InAppUpdateUtils$UpdateStateData;

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, p1}, Lcom/motorola/camera/service/JmsServiceInterface$1$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0

    :goto_0
    check-cast p1, Landroid/content/Intent;

    invoke-static {p1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    iget-object p0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
