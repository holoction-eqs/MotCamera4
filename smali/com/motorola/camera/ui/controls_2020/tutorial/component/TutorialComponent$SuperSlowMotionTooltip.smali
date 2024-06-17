.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.source "SourceFile"


# instance fields
.field public final synthetic $$delegate_0:Lcom/motorola/camera/device/CameraService;

.field public gravity:I

.field public nextShowTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

.field public final tooltipCrossHeight:F

.field public final tooltipCrossOffset:F

.field public view:Landroid/view/View;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const v0, 0x7f1205dc

    invoke-direct {p0, p2, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;-><init>(Landroid/content/Context;I)V

    new-instance p2, Lcom/motorola/camera/device/CameraService;

    invoke-direct {p2}, Lcom/motorola/camera/device/CameraService;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->$$delegate_0:Lcom/motorola/camera/device/CameraService;

    iget-object p2, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704fc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->tooltipCrossHeight:F

    iget-object p2, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0704fe

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iget-object p1, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704fd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p2, v0

    add-float/2addr p2, p1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->tooltipCrossOffset:F

    const/16 p1, 0x30

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->gravity:I

    return-void
.end method


# virtual methods
.method public final afterDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->$$delegate_0:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {v0}, Lcom/motorola/camera/device/CameraService;->unregisterLayoutListener()V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->nextShowTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show()V

    :cond_0
    return-void
.end method

.method public final rotate(F)V
    .locals 7

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mDegree:F

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, p1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    :goto_1
    move v3, v5

    goto :goto_2

    :cond_2
    const/high16 v3, 0x43340000    # 180.0f

    cmpg-float v3, p1, v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_2
    const/high16 v6, 0x43b40000    # 360.0f

    if-eqz v3, :cond_4

    sub-float/2addr v6, p1

    invoke-virtual {p0, v6, v2, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    float-to-int p1, p1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    goto :goto_7

    :cond_4
    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v2, p1, v2

    if-nez v2, :cond_5

    move v2, v5

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_3
    if-eqz v2, :cond_6

    :goto_4
    move v4, v5

    goto :goto_5

    :cond_6
    const/high16 v2, 0x43870000    # 270.0f

    cmpg-float v2, p1, v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz v4, :cond_9

    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_8

    neg-int v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    add-float/2addr v4, v2

    goto :goto_6

    :cond_8
    int-to-float v2, v0

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    sub-float v4, v2, v4

    :goto_6
    int-to-float v2, v0

    div-float v5, v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v5, v1

    const/16 v1, 0x9

    int-to-float v1, v1

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget v3, v3, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v1, v3

    add-float/2addr v1, v5

    sub-float/2addr v6, p1

    invoke-virtual {p0, v6, v4, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    float-to-int p1, p1

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    float-to-int v1, v1

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->tooltipCrossHeight:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    :cond_9
    :goto_7
    return-void
.end method

.method public final show()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->showTooltip()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroidx/window/core/Version$bigInteger$2;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->$$delegate_0:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/device/CameraService;->registerLayoutListener(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void
.end method

.method public final showTooltip()V
    .locals 11

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->view:Landroid/view/View;

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "adapter as ControlBarAdapter<*>).currentList"

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    if-nez v6, :cond_2

    goto/16 :goto_6

    :cond_2
    check-cast v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object v9, v9, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_4
    move-object v8, v2

    :goto_1
    check-cast v8, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    if-nez v8, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v6}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_6

    goto/16 :goto_6

    :cond_6
    const/4 v6, 0x2

    new-array v6, v6, [I

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v7, v6, v4

    int-to-float v7, v7

    iput v7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    aget v6, v6, v3

    int-to-float v6, v6

    iput v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    iget v6, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    if-eqz v6, :cond_a

    const/16 v9, 0x5a

    if-eq v6, v9, :cond_9

    const/16 v9, 0xb4

    if-eq v6, v9, :cond_8

    const/16 v9, 0x10e

    if-eq v6, v9, :cond_7

    move v0, v8

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_2
    int-to-float v0, v0

    div-float/2addr v0, v7

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    :goto_3
    int-to-float v6, v6

    div-float/2addr v6, v7

    iget v7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v7, v0

    iput v7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    move v0, v6

    :goto_4
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent;->isRtl()Z

    move-result v6

    iget v7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->tooltipCrossOffset:F

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v7

    iget v9, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mScreenWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    sub-float/2addr v9, v10

    sub-float/2addr v9, v0

    sub-float/2addr v6, v9

    cmpl-float v9, v6, v8

    if-lez v9, :cond_b

    move v8, v6

    :cond_b
    sub-float/2addr v0, v7

    add-float/2addr v0, v10

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    const v0, 0x800033

    goto :goto_5

    :cond_c
    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    add-float/2addr v6, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v7

    sub-float/2addr v6, v9

    cmpg-float v9, v6, v8

    if-gez v9, :cond_d

    move v8, v6

    :cond_d
    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mScreenWidth:I

    int-to-float v6, v6

    iget v9, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    add-float/2addr v9, v0

    add-float/2addr v9, v7

    sub-float/2addr v6, v9

    iput v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    const v0, 0x800035

    :goto_5
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->gravity:I

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->mCross:Landroid/widget/ImageView;

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v0, v8}, Landroid/view/View;->setTranslationX(F)V

    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->view:Landroid/view/View;

    instance-of v6, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_10

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_7

    :cond_10
    move-object v0, v2

    :goto_7
    if-nez v0, :cond_11

    goto :goto_8

    :cond_11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_8

    :cond_12
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    iget-object v6, v6, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v7, Lcom/motorola/camera/settings/SettingsManager;->VIDEO_SLOW_MO_FRAME_RATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object v2, v5

    :cond_14
    check-cast v2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    if-nez v2, :cond_15

    :goto_8
    move v3, v4

    :cond_15
    if-eqz v3, :cond_16

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->gravity:I

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->x:F

    float-to-int v6, v0

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->y:F

    float-to-int v7, v0

    sget-object v8, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    const/4 v9, 0x1

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$default(Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;I)V

    iget v0, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->rotate(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/TutorialComponent$SuperSlowMotionTooltip;->$$delegate_0:Lcom/motorola/camera/device/CameraService;

    invoke-virtual {p0}, Lcom/motorola/camera/device/CameraService;->unregisterLayoutListener()V

    :cond_16
    return-void
.end method
