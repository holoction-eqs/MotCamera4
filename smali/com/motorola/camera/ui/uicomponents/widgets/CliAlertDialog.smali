.class public final Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;
.super Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activityContext:Landroid/content/Context;

.field public final alertContentView:Landroid/view/View;

.field public final buttonNeutral:Landroid/widget/Button;

.field public flipReceiver:Lcom/motorola/camera/SecureCamera$1;

.field public final runnableDismiss:Landroidx/window/core/Version$bigInteger$2;

.field public final textMessage:Landroid/widget/TextView;

.field public final textTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->hasCliDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/motorola/camera/cli/util/LidStateHelper;->getLidState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/display/DisplayManager;

    sget v2, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v0, "CliAlertDialog"

    const-string v2, "getCliContext failed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroidx/window/core/Version$bigInteger$2;

    const/16 v0, 0x11

    invoke-direct {p1, p0, v0}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->runnableDismiss:Landroidx/window/core/Version$bigInteger$2;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->activityContext:Landroid/content/Context;

    if-eqz p1, :cond_3

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const-string v2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0d0033

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string v0, "inflater.inflate(R.layou\u2026_dialog, rootView, false)"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->alertContentView:Landroid/view/View;

    const v0, 0x7f0a02d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const v0, 0x7f0a005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const v0, 0x7f0a0429

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->textTitle:Landroid/widget/TextView;

    const v0, 0x7f0a028e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->textMessage:Landroid/widget/TextView;

    const v0, 0x7f0a0312

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v0, 0x7f0a02ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v0, 0x7f0a02cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->buttonNeutral:Landroid/widget/Button;

    const v0, 0x7f0a00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v2, 0x7f0a02c2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-static {p2, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->hasSoftTSB()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, v0, Lcom/motorola/camera/CameraApp;->mRawSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v0, v0, Lcom/motorola/camera/CameraApp;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    :cond_6
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->registerDismissListenerInner()V

    new-instance p2, Lcom/motorola/camera/SecureCamera$1;

    const/16 v0, 0x12

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/SecureCamera$1;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->flipReceiver:Lcom/motorola/camera/SecureCamera$1;

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.motorola.hardware.action.ACTION_LID_STATE_CHANGE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->unregister()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->flipReceiver:Lcom/motorola/camera/SecureCamera$1;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/motorola/camera/SecureCamera$1;->this$0:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->activityContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->flipReceiver:Lcom/motorola/camera/SecureCamera$1;

    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public final setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->textMessage:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->activityContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->textTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final show()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->alertContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
