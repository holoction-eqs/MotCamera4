.class public final Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;
.super Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/uicomponents/LevelerComponent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/motorola/camera/shared/MultiSensorOrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent$2;->this$0:Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelOrientation:I

    if-ne p1, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->isCliDisplay()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mIsCamAlignedSensor:Z

    if-eqz v1, :cond_2

    rsub-int p1, p1, 0x168

    iget-boolean v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mIsDisplayRotation:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xb4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    :cond_2
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-boolean v1, v1, Lcom/motorola/camera/CameraApp;->mDesktopMode:Z

    if-eqz v1, :cond_3

    sget v1, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    sub-int p1, v1, p1

    :cond_3
    iput p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelOrientation:I

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mOrientationPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit16 v3, p1, -0xb4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v4, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mOrientation:I

    add-int/lit16 v3, v1, -0xb4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    const/16 v4, 0x2d

    if-le v3, v4, :cond_6

    rsub-int v3, v3, 0x168

    iput v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    :cond_6
    iget v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mDeviationValue:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_7

    const/4 v2, 0x1

    :cond_7
    iget-boolean v3, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    if-eqz v3, :cond_8

    int-to-float p1, v1

    goto :goto_2

    :cond_8
    neg-int p1, p1

    int-to-float p1, p1

    :goto_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    if-ne v2, p1, :cond_9

    goto :goto_4

    :cond_9
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveled:Z

    iget p1, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLeveledColor:I

    if-eqz v2, :cond_a

    move v3, p1

    goto :goto_3

    :cond_a
    move v3, v0

    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    if-eqz v2, :cond_b

    move v0, p1

    :cond_b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_c
    :goto_4
    return-void
.end method
