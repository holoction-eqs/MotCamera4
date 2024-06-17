.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->inflateViewStub()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->mFirstUserCliVideoTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$FirstUserCliVideoTooltip;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$FirstUserCliVideoTooltip;

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mParentView.context"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$FirstUserCliVideoTooltip;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->mFirstUserCliVideoTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$FirstUserCliVideoTooltip;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->mFirstUserCliVideoTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$FirstUserCliVideoTooltip;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$FirstUserCliVideoTooltip;->show()V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$FirstUserCliVideoTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->shouldShowFirstUserCliVideoTooltip()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$FirstUserCliVideoTooltip;->showTooltip()V

    :cond_1
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove$2()V

    return-void

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove$2()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
