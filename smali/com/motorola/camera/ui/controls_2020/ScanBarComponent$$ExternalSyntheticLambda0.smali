.class public final synthetic Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "this$0"

    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_18

    :pswitch_0
    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->setInternalElementsScale(F)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v6}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManager;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    sget-object v2, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;->MotoMonopoly:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    :cond_2
    move-object v13, v4

    if-nez v13, :cond_3

    goto :goto_1

    :cond_3
    new-instance v12, Landroid/view/animation/ScaleAnimation;

    sget v2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->SHRINK_SIZE:F

    sget v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->DEFAULT_SIZE:F

    const/4 v4, 0x1

    sget v5, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->PIVOT_VALUE:F

    const/4 v6, 0x1

    const/16 v19, 0x1

    const/16 v21, 0x1

    move-object v14, v12

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v3

    move/from16 v18, v3

    move/from16 v20, v5

    move/from16 v22, v5

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    sget-wide v8, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->FLIP_DURATION:J

    invoke-virtual {v12, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v11, Landroid/view/animation/ScaleAnimation;

    move-object v14, v11

    move v15, v3

    move/from16 v16, v2

    move/from16 v19, v4

    move/from16 v21, v6

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v11, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    sget-wide v2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->FLIP_OFFSET:J

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroidx/fragment/app/FragmentAnim$2;

    const/4 v14, 0x2

    move-object v9, v2

    move-object v10, v0

    move-object v3, v11

    move-object v11, v1

    invoke-direct/range {v9 .. v14}, Landroidx/fragment/app/FragmentAnim$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v7}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    sget-wide v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->QR_CODE_TIMEOUT:J

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    :pswitch_1
    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    return-void

    :pswitch_2
    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->actionText:Landroid/widget/TextView;

    const-string v5, "it.mData.titleString"

    const/4 v8, 0x3

    const/4 v9, -0x1

    const-string v10, ""

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v11, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v11, :cond_a

    iget-object v12, v11, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    invoke-virtual {v12}, Landroidx/loader/app/LoaderManager;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v12

    if-nez v12, :cond_6

    move v12, v9

    goto :goto_2

    :cond_6
    sget-object v13, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v13, v12

    :goto_2
    if-eq v12, v6, :cond_9

    if-eq v12, v2, :cond_8

    if-eq v12, v8, :cond_7

    iget-object v11, v11, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    invoke-virtual {v11}, Landroidx/loader/app/LoaderManager;->getTitleString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v12, 0x7f12038f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "getInstance().getString(\u2026r_code_bar_contact_title)"

    goto :goto_3

    :cond_8
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v12, 0x7f120395

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "getInstance().getString(\u2026g.qr_code_bar_wifi_title)"

    goto :goto_3

    :cond_9
    sget-object v11, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v12, 0x7f120394

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "getInstance().getString(\u2026ng.qr_code_bar_url_title)"

    :goto_3
    invoke-static {v11, v12}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move-object v11, v10

    :goto_4
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    if-nez v1, :cond_b

    goto :goto_9

    :cond_b
    iget-object v11, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v11, :cond_f

    iget-object v12, v11, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    invoke-virtual {v12}, Landroidx/loader/app/LoaderManager;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v12

    if-nez v12, :cond_c

    goto :goto_6

    :cond_c
    sget-object v9, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v9, v9, v12

    :goto_6
    const-string v12, "it.mData.detailsString"

    if-eq v9, v2, :cond_e

    if-eq v9, v8, :cond_d

    if-eq v9, v3, :cond_f

    iget-object v2, v11, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    invoke-virtual {v2}, Landroidx/loader/app/LoaderManager;->getDetailsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    iget-object v2, v11, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    invoke-virtual {v2}, Landroidx/loader/app/LoaderManager;->getTitleString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    iget-object v2, v11, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Landroidx/loader/app/LoaderManager;

    invoke-virtual {v2}, Landroidx/loader/app/LoaderManager;->getDetailsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_7
    move-object v10, v2

    :cond_f
    :goto_8
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    invoke-virtual {v0, v7}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->setInternalElementsVisibility(I)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    :cond_10
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v6

    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_a

    :cond_11
    move v2, v7

    :goto_a
    if-le v2, v6, :cond_12

    move v2, v6

    goto :goto_b

    :cond_12
    move v2, v7

    :goto_b
    if-nez v2, :cond_14

    if-eqz v1, :cond_13

    goto :goto_c

    :cond_13
    move v6, v7

    :cond_14
    :goto_c
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->moreButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    if-nez v2, :cond_15

    goto :goto_e

    :cond_15
    if-eqz v6, :cond_16

    move v4, v7

    goto :goto_d

    :cond_16
    move v4, v3

    :goto_d
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    if-nez v2, :cond_17

    goto :goto_10

    :cond_17
    if-eqz v1, :cond_18

    goto :goto_f

    :cond_18
    move v7, v3

    :goto_f
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v2, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    sget-wide v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->TEXT_WAIT_TIME:J

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    :pswitch_3
    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1b

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v3, :cond_19

    iget v3, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mSource:I

    if-ne v3, v2, :cond_19

    goto :goto_11

    :cond_19
    move v6, v7

    :goto_11
    if-eqz v6, :cond_1a

    const v2, 0x7f080240

    goto :goto_12

    :cond_1a
    const v2, 0x7f08019c

    :goto_12
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060379

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800c8

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1b
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1c

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1c
    return-void

    :pswitch_4
    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_1d

    goto :goto_13

    :cond_1d
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_13
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    goto :goto_14

    :cond_1e
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_14
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_1f

    const v3, 0x7f0800ac

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1f
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_20

    goto :goto_15

    :cond_20
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    :goto_15
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_21

    goto :goto_16

    :cond_21
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_16
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    iget-object v3, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-eqz v3, :cond_22

    iget-object v3, v3, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mImageRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_22

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v5, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v5, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    sub-float/2addr v5, v9

    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    sub-float/2addr v1, v8

    invoke-direct {v4, v5, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070474

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v1, v3

    goto :goto_17

    :cond_22
    move-object v4, v1

    move v1, v2

    :goto_17
    cmpg-float v3, v1, v2

    if-gez v3, :cond_23

    neg-float v1, v1

    :cond_23
    move v11, v1

    iget v1, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v1, v2

    iget v3, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v3, v2

    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr v5, v2

    mul-float/2addr v1, v1

    mul-float/2addr v3, v3

    add-float/2addr v3, v1

    mul-float/2addr v5, v5

    add-float/2addr v5, v3

    float-to-double v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float/2addr v1, v2

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x0

    iget v3, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v14, v3

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v3, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v3, v3

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object v12, v2

    move/from16 v18, v3

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    float-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v8, v1

    move v9, v11

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;

    invoke-direct {v1, v0, v7}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_24

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_24
    return-void

    :pswitch_5
    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->reset()V

    return-void

    :pswitch_6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_7
    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->reset()V

    return-void

    :pswitch_8
    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->reset()V

    return-void

    :pswitch_9
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->reset()V

    return-void

    :pswitch_a
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    return-void

    :pswitch_b
    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateHide()V

    :cond_25
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->reset()V

    return-void

    :goto_18
    invoke-static {v0, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
