.class public final Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/ImageView;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a0146

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a0145

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke()Landroid/widget/TextView;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a012a

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a012b

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a012e

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0

    .line 11
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a040c

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0

    .line 13
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a0129

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a020f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/Guideline;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke$1()Ljava/lang/Long;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 3
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke$1()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    .line 6
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 8
    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->shouldKeepHidden:Z

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->controlPanelOpen:Z

    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke$2()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->$r8$classId:I

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v0, 0x7f0a012d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/Group;

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->invoke$1()Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->invoke$1()V

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->invoke$1()V

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->invoke()Landroid/widget/TextView;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->invoke()Landroid/widget/TextView;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->invoke()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->invoke()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->invoke()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->invoke$1()Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_a
    new-instance p0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    const v3, 0x7f080107

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080108

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;

    const/16 v0, 0xc

    invoke-direct {p0, v2, v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;I)V

    return-object p0

    :pswitch_c
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->invoke()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->invoke()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0

    :pswitch_e
    iget-object p0, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$context$2;->invoke()Landroidx/constraintlayout/widget/Guideline;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
