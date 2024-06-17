.class public final synthetic Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    const-string v1, "mEventHandler.layoutManager"

    invoke-static {v0, v1}, Lcom/motorola/camera/PreviewDiff$Action$EnumUnboxingLocalUtility;->m(Lcom/motorola/camera/EventListener;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v2

    iget-object v3, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f070184

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f07006e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v8

    invoke-static {v8, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v9, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    invoke-static {v8}, Ljms/IJobMgrService$_Parcel;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v8

    const/16 v10, 0xb4

    if-eqz v8, :cond_2

    if-eq v9, v10, :cond_3

    goto :goto_1

    :cond_2
    if-ne v9, v10, :cond_3

    :goto_1
    const/4 v7, 0x1

    :cond_3
    if-eqz v7, :cond_b

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v5

    sub-int/2addr v0, v3

    goto :goto_2

    :cond_4
    add-int v0, v3, v6

    add-int/2addr v0, v4

    :goto_2
    if-eqz v2, :cond_5

    sub-int v1, v0, v4

    sub-int v3, v1, v6

    :cond_5
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_f

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    add-int v0, v3, v5

    add-int/2addr v0, v4

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v3

    sub-int/2addr v0, v6

    :goto_3
    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    sub-int v1, v0, v4

    sub-int v3, v1, v5

    :goto_4
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_a
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    goto :goto_6

    :cond_b
    add-int/2addr v6, v4

    add-int/2addr v6, v5

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    add-int v3, v2, v5

    add-int/2addr v3, v4

    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->isCliCutoutOnBottom(Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_c
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_f

    :goto_5
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v5

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->galleryThumbnailXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_e
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/FirstLoadingComponent;->modePillXGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :cond_f
    :goto_6
    return-void

    :goto_7
    check-cast p0, Lkotlin/jvm/functions/Function0;

    const-string v0, "$onLayoutChanged"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke$2()Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
