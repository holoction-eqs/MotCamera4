.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/preference/Preference;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string v1, "message"

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    const-string v3, "$context"

    const-string v4, "this$0"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/Preference;

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    if-eq p1, v5, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->itemView:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/motorola/camera/Util;->dismissKeyboard(Landroid/view/View;)Z

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-ne p1, v5, :cond_3

    move v0, v5

    :cond_3
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->webView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    :cond_4
    check-cast v2, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-virtual {v2}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;->LOADING:Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->updateState(Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient$States;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->itemView:Landroid/view/View;

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_1
    return v5

    :goto_2
    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;

    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v5, :cond_8

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/settings/preferences/LocationSwitchComponent;->requestLocationChange(Landroid/content/Context;)V

    :cond_8
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
