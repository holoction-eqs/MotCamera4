.class public final Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;
.super Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V
    .locals 4

    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f1205c6

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    aput-object v3, v2, v0

    iget-object v0, p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    aput-object v0, v2, v1

    invoke-direct {p0, p1, p2, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;Ljava/lang/String;[Landroid/view/View;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f1205c8

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;Ljava/lang/String;[Landroid/view/View;)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f1205c5

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    aput-object v2, v1, v0

    invoke-direct {p0, p1, p2, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;Ljava/lang/String;[Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final dismissTooltip()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;->$r8$classId:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->dismissTooltip()V

    return-void

    :pswitch_0
    invoke-super {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->dismissTooltip()V

    iget-object p0, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    iget-object v0, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->isEmptyMask()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_1
    invoke-super {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->dismissTooltip()V

    iget-object p0, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    iget-object v0, v3, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->isEmptyMask()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final showToolTip()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->showToolTip()V

    return-void

    :pswitch_0
    invoke-super {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->showToolTip()V

    iget-object p0, v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_1
    invoke-super {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->showToolTip()V

    iget-object p0, v2, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
