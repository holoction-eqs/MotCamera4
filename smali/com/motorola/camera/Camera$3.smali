.class public final Lcom/motorola/camera/Camera$3;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/Camera$3;->this$0:Lcom/motorola/camera/Camera;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/Camera$3;->this$0:Lcom/motorola/camera/Camera;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/motorola/camera/CtaPrivacyActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/4 v1, 0x0

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/Camera;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    return-void
.end method
