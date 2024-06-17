.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/16 v1, 0x8

    const-string v2, "LAYOUT_X"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    if-nez v4, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroid/os/Bundle;

    const-string v0, "MENU_LEFT"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "MENU_TOP"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "MENU_TEXT"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v6, "LAYOUT_WIDTH"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    const-string v7, "LAYOUT_HEIGHT"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    const-string v8, "LAYOUT_Y"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    const-string v9, "MENU_CELL_WIDTH"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v9

    float-to-int v9, v9

    const-string v10, "MENU_CELL_HEIGHT"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iget-object v10, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    move v10, v3

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    new-instance v11, Landroid/widget/TextView;

    sget-object v12, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v12, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x9

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v11, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v11, v13}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v13, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v13, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v1, v8

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    float-to-int v1, v7

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    float-to-int v1, v6

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    const-string v2, "RELOAD_RIGHT"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v6, "CAROUSEL_SELECT_INDEX"

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v7}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v8

    const-string v9, "CAROUSEL_WIDTH"

    invoke-virtual {v4, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v10, "CAROUSEL_TEXT"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarouselTextList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object v4, v8

    check-cast v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v4, v4, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    const/high16 v10, 0x42600000    # 56.0f

    mul-float/2addr v4, v10

    float-to-int v4, v4

    move v10, v3

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    new-instance v11, Landroid/widget/TextView;

    sget-object v12, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v12, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarouselTextList:Ljava/util/ArrayList;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v11, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v5}, Landroid/view/View;->setFocusable(Z)V

    iget-object v12, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v11, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v7}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v7, v2

    check-cast v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v7, v7, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mDisplayDensity:F

    const/high16 v9, 0x41a00000    # 20.0f

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-interface {v2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v9

    const/high16 v10, 0x41d00000    # 26.0f

    sub-float/2addr v9, v10

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v9, v2

    float-to-int v2, v9

    invoke-virtual {v4, v3, v3, v7, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v8}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getModeCarouselY()F

    move-result v4

    const/high16 v7, 0x41e00000    # 28.0f

    sub-float/2addr v4, v7

    check-cast v8, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget v7, v8, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarouselTextList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mTalkbackRootView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarouselTextList:Ljava/util/ArrayList;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    move v0, v3

    :goto_4
    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    if-ne v0, v6, :cond_5

    invoke-virtual {v4, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    goto :goto_5

    :cond_5
    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mDeleteView:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    aget v4, v0, v3

    sub-int/2addr v4, v1

    aget v5, v0, v5

    sub-int/2addr v5, v1

    invoke-virtual {v2, v4, v3, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mDeleteView:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mAcceptView:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x2

    aget v4, v0, v4

    sub-int/2addr v4, v1

    const/4 v5, 0x3

    aget v5, v0, v5

    sub-int/2addr v5, v1

    invoke-virtual {v2, v4, v3, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mAcceptView:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mPlayView:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x4

    aget v4, v0, v4

    sub-int/2addr v4, v1

    const/4 v5, 0x5

    aget v0, v0, v5

    sub-int/2addr v0, v1

    invoke-virtual {v2, v4, v3, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mPlayView:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroid/os/Bundle;

    const-string v0, "ENABLE_CAROUSEL_VISIBLE"

    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    move v1, v3

    :cond_8
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
