.class public final synthetic Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/airbnb/lottie/model/MutablePair;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/model/MutablePair;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback$$ExternalSyntheticLambda0;->f$0:Lcom/airbnb/lottie/model/MutablePair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawMaskCallback$$ExternalSyntheticLambda0;->f$0:Lcom/airbnb/lottie/model/MutablePair;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->setMaskButtonsEnabled(Z)V

    return-void

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->setMaskButtonsEnabled(Z)V

    iget-object p0, p0, Lcom/airbnb/lottie/model/MutablePair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setPaintColor(Z)V

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
