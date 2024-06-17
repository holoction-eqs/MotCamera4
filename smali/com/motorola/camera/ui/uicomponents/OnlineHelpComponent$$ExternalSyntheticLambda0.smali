.class public final synthetic Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove$2()V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient;

    new-instance v4, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/ui/controls_2020/OnlineHelpWebViewClient;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->PRODUCT_DISPLAY_MODEL:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->HARDWARE_SKU:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v3}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->RELEASE_VERSION:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v4}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mTopicType:I

    const-string v7, ""

    if-ne v5, v1, :cond_0

    const-string v5, "help_modes"

    goto :goto_1

    :cond_0
    move-object v5, v7

    :goto_1
    sget-object v8, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    sget-boolean v10, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v7, ".cn"

    :cond_1
    aput-object v7, v9, v2

    const v2, 0x55d71eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v6

    const/4 v1, 0x3

    aput-object v5, v9, v1

    const/4 v1, 0x4

    aput-object v0, v9, v1

    const/4 v0, 0x5

    aput-object v3, v9, v0

    const/4 v0, 0x6

    aput-object v4, v9, v0

    const-string v0, "https://help.motorola.com%s/hc/apps/camera/index.php?v=%s&app=%s&t=%s&m=%s&sku=%s&os=%s"

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/OnlineHelpComponent;->mWebView:Lcom/motorola/camera/ui/widgets/OnlineHelpWebView;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060366

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
