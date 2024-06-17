.class public abstract Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mContentLayout:Landroid/widget/RelativeLayout;

.field public final mContext:Landroid/content/Context;

.field public mCross:Landroid/widget/ImageView;

.field public mCrossMargin:I

.field public mDegree:F

.field public mHeight:I

.field public mParentView:Landroid/view/View;

.field public mPopWindow:Landroid/widget/PopupWindow;

.field public mRootView:Landroid/widget/RelativeLayout;

.field public mScreenWidth:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d010e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mScreenWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const v4, 0x7f0a045a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const v6, 0x7f0a0453

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v4, p0, v6}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_2

    const v5, 0x7f12052d

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const v4, 0x7f0a0457

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const v3, 0x7f0a0454

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v3, "null cannot be cast to non-null type android.widget.ImageButton"

    invoke-static {p2, v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const v3, 0x7f0a0458

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v3, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p2, v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/lit8 p2, p2, 0x19

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mHeight:I

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    invoke-static {p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704fd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCrossMargin:I

    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0x7f1301e0

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public static synthetic show$default(Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;I)V
    .locals 7

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$enumunboxing$(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public afterDismiss()V
    .locals 0

    return-void
.end method

.method public afterShown()V
    .locals 0

    return-void
.end method

.method public final dismiss()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getShowHeight()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mHeight:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mHeight:I

    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mHeight:I

    return p0
.end method

.method public final getShowWidth()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mWidth:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mWidth:I

    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mWidth:I

    return p0
.end method

.method public final isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract show()V
.end method

.method public final show$enumunboxing$(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;ILandroid/view/View;)V
    .locals 6

    const-string v0, "style"

    invoke-static {p5, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p4, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->mRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    const/16 v1, 0x12

    const/4 v2, 0x0

    const/16 v3, 0x13

    const/4 v4, 0x3

    const v5, 0x7f0a0453

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p4, 0x6

    invoke-virtual {v0, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p4, 0x8

    invoke-virtual {v0, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p4, 0x11

    invoke-virtual {v0, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :pswitch_3
    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :pswitch_5
    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    invoke-static {p4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p4, 0x0

    if-eqz p5, :cond_7

    add-int/lit8 p5, p5, -0x1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz p5, :cond_1

    if-ne p5, v1, :cond_0

    const p5, 0x7f0603de

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0, v2}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw p0

    :cond_1
    const p5, 0x7f0603dd

    :goto_1
    invoke-virtual {v0, p5}, Landroid/content/Context;->getColor(I)I

    move-result p5

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, p5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p5

    invoke-virtual {v3, p5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_2
    instance-of p5, v0, Landroid/app/Activity;

    if-eqz p5, :cond_4

    move-object p4, v0

    check-cast p4, Landroid/app/Activity;

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroid/app/Activity;->isDestroyed()Z

    move-result p4

    if-ne p4, v1, :cond_5

    move v2, v1

    :cond_5
    if-eqz v2, :cond_6

    const-string p0, "SingleTooltip"

    const-string p1, "Activity has destroyed, skip window show"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    sget-object p4, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4, p6, p1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->afterShown()V

    return-void

    :cond_7
    throw p4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final update(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    return-void
.end method

.method public final updateCrossOrientation(F)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->mRes:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :goto_0
    return-void
.end method

.method public final updateLayout(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    :goto_2
    return-void
.end method
