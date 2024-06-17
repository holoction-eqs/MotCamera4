.class public abstract Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field public dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f130147

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->registerDismissListenerInner()V

    return-void
.end method


# virtual methods
.method public final registerDismissListenerInner()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->dialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v1, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-static {p0, v0, v1}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->registered:Z

    :cond_1
    return-void
.end method

.method public final setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iput-object p1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->onCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog;->dismissReceiver:Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iput-object p1, v0, Lcom/motorola/camera/ui/uicomponents/widgets/SystemUIDialog$DismissReceiver;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    :goto_0
    return-void
.end method
