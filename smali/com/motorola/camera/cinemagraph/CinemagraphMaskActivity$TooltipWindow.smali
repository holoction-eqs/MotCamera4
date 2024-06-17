.class public abstract Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final contentView:Landroid/view/View;

.field public final ctx:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

.field public final mImageArrow:Landroid/widget/ImageView;

.field public final mTargetViews:Ljava/util/List;

.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

.field public final tipWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;Ljava/lang/String;[Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->ctx:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    const v0, 0x7f0d010c

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->contentView:Landroid/view/View;

    const v1, 0x7f0a0436

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->mImageArrow:Landroid/widget/ImageView;

    const v1, 0x7f0a0437

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_0

    const p2, 0x7f120202

    goto :goto_0

    :cond_0
    const p2, 0x7f120111

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0a0152

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->mTargetViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dismissTooltip()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;

    iget p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_CLEAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_1

    :goto_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_TIMELINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_1
    if-eqz v0, :cond_1

    packed-switch p0, :pswitch_data_1

    goto :goto_2

    :pswitch_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_CLEAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_3

    :pswitch_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_DRAW:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_3

    :goto_2
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_CAPTURE_CINEMAGRAPH_TIMELINE:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_1
    iget-object p0, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTooltipsList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->showToolTip()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public showToolTip()V
    .locals 10

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->ctx:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-static {v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;->$r8$classId:I

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$DrawTooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v2, v2, [I

    iget-object v5, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v5, Landroid/graphics/Rect;

    aget v6, v2, v4

    aget v7, v2, v3

    iget-object v8, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v6

    aget v2, v2, v3

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v5, v6, v7, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :pswitch_1
    new-array v5, v2, [I

    new-array v2, v2, [I

    iget-object v6, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v6, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v6, Landroid/graphics/Rect;

    aget v7, v5, v4

    aget v5, v5, v3

    aget v8, v2, v4

    iget-object v9, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    aget v2, v2, v3

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEraseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v6, v7, v5, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v6

    goto :goto_1

    :goto_0
    new-array v2, v2, [I

    iget-object v5, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v5, Landroid/graphics/Rect;

    aget v6, v2, v4

    aget v7, v2, v3

    iget-object v8, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v6

    aget v2, v2, v3

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mTrimSeekBar:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    invoke-direct {v5, v6, v7, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->tipWindow:Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->contentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v1, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    const/16 v7, 0x18

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v8, v6, v2

    add-int/2addr v8, v7

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v8, v0, :cond_0

    sub-int/2addr v0, v2

    add-int/lit8 v6, v0, -0x18

    :cond_0
    iget v0, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v1, v1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDrawButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v6, v0, v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$TooltipWindow;->mImageArrow:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int/2addr v1, v6

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
