.class public final synthetic Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

.field public final synthetic f$1:Z

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;ZF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda2;->f$1:Z

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda2;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->controlPanelShowing:Z

    if-eqz v0, :cond_0

    iget-boolean p0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->currentVisible:Z

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda2;->f$1:Z

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent$$ExternalSyntheticLambda2;->f$2:F

    const/4 v2, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    if-eqz v0, :cond_2

    iget-boolean v4, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->currentVisible:Z

    if-nez v4, :cond_2

    cmpl-float v4, p0, v3

    if-ltz v4, :cond_2

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    iget-object p0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->iconView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    const v0, 0x7f080283

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object p0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->textView:Landroid/widget/TextView;

    if-eqz p0, :cond_6

    const v0, 0x7f1205f8

    goto :goto_0

    :cond_2
    const/high16 v4, 0x41000000    # 8.0f

    if-eqz v0, :cond_3

    iget-boolean v5, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->currentVisible:Z

    if-eqz v5, :cond_3

    cmpg-float v5, p0, v4

    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    if-nez v0, :cond_5

    iget-boolean v5, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->currentVisible:Z

    if-nez v5, :cond_5

    cmpg-float v4, p0, v4

    if-gtz v4, :cond_5

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    iget-object p0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->iconView:Landroid/widget/ImageView;

    if-eqz p0, :cond_4

    const v0, 0x7f080285

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    iget-object p0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->textView:Landroid/widget/TextView;

    if-eqz p0, :cond_6

    const v0, 0x7f1205f9

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    iget-boolean v0, v1, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->currentVisible:Z

    if-eqz v0, :cond_6

    cmpl-float p0, p0, v3

    if-ltz p0, :cond_6

    :goto_1
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/motorola/camera/ui/controls_2020/VideoNvPromptComponent;->updateVisible(Z)V

    :cond_6
    :goto_2
    return-void
.end method
