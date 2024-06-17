.class public abstract Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mContentLayout:Landroid/widget/RelativeLayout;

.field public mContentRes:I

.field public mContentText:Landroid/widget/TextView;

.field public final mContext:Landroid/content/Context;

.field public final mCount:I

.field public mCross:Landroid/view/View;

.field public mCrossLayout:Landroid/widget/RelativeLayout;

.field public mHeight:I

.field public final mIndex:I

.field public mIndexText:Landroid/widget/TextView;

.field public mParentView:Landroid/view/View;

.field public mPopWindow:Landroid/widget/PopupWindow;

.field public mWidth:I

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentRes:I

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    iput p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCount:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d010d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0a0453

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    const/16 v2, 0x1d

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const v1, 0x7f0a0457

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p2, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentRes:I

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x7f0a0456

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndexText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v2, 0x1

    add-int/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    const p4, 0x7f1205d4

    invoke-virtual {p1, p4, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0x7f0a0455

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0x7f0a0459

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCrossLayout:Landroid/widget/RelativeLayout;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0x7f0a0458

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCross:Landroid/view/View;

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x19

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mHeight:I

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mWidth:I

    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    const/4 p4, -0x2

    invoke-direct {p1, p3, p4, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0x7f1301e0

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/CenterTooltip$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public afterDismiss()V
    .locals 0

    return-void
.end method

.method public abstract clickControl()V
.end method

.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->afterDismiss()V

    return-void
.end method

.method public final getShowHeight()I
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mHeight:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

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

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mHeight:I

    :cond_1
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mHeight:I

    return p0
.end method

.method public final getTextLineCount()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getTextLineWidth()Ljava/lang/Float;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final reShow()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mX:I

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mY:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p0, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method

.method public abstract show()V
.end method

.method public final show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;)V
    .locals 9

    const-string v0, "style"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCross:Landroid/view/View;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget v2, p4, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->mRes:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCrossLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCross:Landroid/view/View;

    invoke-static {v3}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v4, 0x0

    const/16 v5, 0x15

    const/16 v6, 0xe

    const/4 v7, 0x3

    const v8, 0x7f0a0453

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled cross location: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "SequentialTooltip"

    invoke-static {v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    const/16 p4, 0x12

    .line 1
    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 p4, 0x13

    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 p4, 0x6

    invoke-virtual {v0, p4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p4, 0x8

    invoke-virtual {v0, p4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-eq p4, v2, :cond_1

    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCrossLayout:Landroid/widget/RelativeLayout;

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget p4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 p4, 0xf

    invoke-virtual {v3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 2
    :pswitch_1
    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :pswitch_2
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :pswitch_4
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_1
    :pswitch_6
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCross:Landroid/view/View;

    invoke-static {p4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result p4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_3

    if-ne p4, v1, :cond_2

    const p4, 0x7f0603de

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0, v4}, Lcom/google/gson/JsonParseException;-><init>(I)V

    throw p0

    :cond_3
    const p4, 0x7f0603dd

    :goto_2
    invoke-virtual {v0, p4}, Landroid/content/Context;->getColor(I)I

    move-result p4

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCross:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_5
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndexText:Landroid/widget/TextView;

    if-nez p4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_7

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120519

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    if-eqz p4, :cond_8

    invoke-virtual {p4}, Landroid/view/View;->requestLayout()V

    :cond_8
    sget-object p4, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    iget-object p4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {p4}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final updateContextRes(I)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentRes:I

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentRes:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {p0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->measure(II)V

    return-void
.end method
