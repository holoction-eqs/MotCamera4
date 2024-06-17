.class public final synthetic Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->clearMask()V

    return-void

    :pswitch_1
    sget p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->showUi()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->stopPreview()V

    iput-boolean v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEditDone:Z

    iput-boolean v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaving:Z

    new-instance p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mCinemagraphHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-boolean p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsBounce:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsBounce:Z

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setBounceLoop(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->updateLoopButton()V

    return-void

    :pswitch_4
    sget p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {p1, v2}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setPaintColor(Z)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setPaintColor(Z)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDrawErasingMode:Z

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mPreviewButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mExitButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mVideoBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mRejectButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v3, Lcom/motorola/camera/AppFeatures$Feature;->CINEMAGRAPH_VIDEO_ONLY:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {p1, v3}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveFormatBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsVideo:Z

    const p1, 0x7f0a00e5

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mSaveFormatBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->hideTooltips()V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->setMaskDrawingEnabled(Z)V

    return-void

    :goto_1
    sget p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->onBackPressed()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
