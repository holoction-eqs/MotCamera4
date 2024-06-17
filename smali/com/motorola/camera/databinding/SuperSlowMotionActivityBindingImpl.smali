.class public final Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;
.super Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/generated/callback/OnClickListener$Listener;


# static fields
.field public static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final mCallback5:Lcom/motorola/camera/generated/callback/OnClickListener;

.field public final mCallback6:Lcom/motorola/camera/generated/callback/OnClickListener;

.field public mDirtyFlags:J

.field public final mboundView10:Landroidx/constraintlayout/widget/Group;

.field public final mboundView11:Landroid/widget/TextView;

.field public final mboundView9:Landroidx/constraintlayout/widget/Group;

.field public final superSlowMotionTrimBarvaluesAttrChanged:Lcom/adobe/xmp/impl/xpath/XMPPath;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a03e7

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03e6

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03dc

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03e9

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03d9

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03de

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03dd

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03e0

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 21

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    sget-object v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    invoke-static {v0, v2, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v17

    const/16 v14, 0x10

    aget-object v1, v17, v14

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v13, 0x2

    aget-object v1, v17, v13

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageButton;

    const/16 v1, 0xe

    aget-object v1, v17, v1

    move-object v4, v1

    check-cast v4, Landroidx/media3/ui/PlayerView;

    const/16 v1, 0x12

    aget-object v1, v17, v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    const/16 v1, 0x11

    aget-object v1, v17, v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    const/4 v1, 0x5

    aget-object v1, v17, v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v1, 0x13

    aget-object v1, v17, v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    const/16 v1, 0x8

    aget-object v1, v17, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    const/4 v1, 0x6

    aget-object v1, v17, v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    const/4 v1, 0x7

    aget-object v1, v17, v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, v17, v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    const/4 v2, 0x1

    aget-object v1, v17, v2

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/Button;

    const/16 v1, 0xd

    aget-object v1, v17, v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/widget/Button;

    const/16 v1, 0xc

    aget-object v1, v17, v1

    check-cast v1, Landroid/widget/ToggleButton;

    const/16 v1, 0xf

    aget-object v1, v17, v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v1, v17, v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, v16

    move v0, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    invoke-direct/range {v1 .. v16}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;-><init>(Landroid/view/View;Landroid/widget/ImageButton;Landroidx/media3/ui/PlayerView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;)V

    new-instance v1, Lcom/adobe/xmp/impl/xpath/XMPPath;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->superSlowMotionTrimBarvaluesAttrChanged:Lcom/adobe/xmp/impl/xpath/XMPPath;

    const-wide/16 v0, -0x1

    iput-wide v0, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const/4 v0, 0x0

    aget-object v1, v17, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xa

    aget-object v1, v17, v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView10:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xb

    aget-object v1, v17, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView11:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x9

    aget-object v1, v17, v1

    check-cast v1, Landroidx/constraintlayout/widget/Group;

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView9:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0130

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v1, Lcom/motorola/camera/generated/callback/OnClickListener;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Ljava/lang/Object;II)V

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback6:Lcom/motorola/camera/generated/callback/OnClickListener;

    new-instance v1, Lcom/motorola/camera/generated/callback/OnClickListener;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Ljava/lang/Object;II)V

    iput-object v1, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback5:Lcom/motorola/camera/generated/callback/OnClickListener;

    monitor-enter p0

    const-wide/32 v0, 0x8000

    :try_start_0
    iput-wide v0, v2, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final _internalCallbackOnClick(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playWhenReady:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->setPlayWhenReady(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->startProcessing()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final executeBindings()V
    .locals 68

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-wide v2, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    const-wide/32 v6, 0xffff

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    const-wide/32 v15, 0xc040

    const/4 v13, 0x3

    const-wide/32 v19, 0xc010

    const-wide/32 v21, 0xc020

    const/4 v14, 0x1

    const/4 v8, 0x0

    const-wide v25, 0x80000000L

    const-wide/32 v27, 0x40000000

    const-wide/32 v29, 0xc000

    const-wide/32 v31, 0xc002

    const-wide/32 v33, 0xc001

    const-wide/32 v35, 0xc200

    const-wide/32 v37, 0xc00c

    const-wide/32 v39, 0xc008

    const-wide/32 v41, 0xe008

    const-wide/32 v43, 0xc088

    const-wide/32 v45, 0xc208

    const/16 v47, 0x0

    if-eqz v6, :cond_3b

    and-long v48, v2, v33

    cmp-long v6, v48, v4

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    iget-object v6, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->playButtonSelected:Landroidx/lifecycle/MediatorLiveData;

    goto :goto_0

    :cond_0
    move-object/from16 v6, v47

    :goto_0
    invoke-virtual {v1, v8, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object/from16 v6, v47

    :goto_1
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v8

    :goto_2
    and-long v48, v2, v31

    cmp-long v48, v48, v4

    if-eqz v48, :cond_5

    if-eqz v0, :cond_3

    iget-object v8, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->duration:Landroidx/lifecycle/MutableLiveData;

    goto :goto_3

    :cond_3
    move-object/from16 v8, v47

    :goto_3
    invoke-virtual {v1, v14, v8}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    goto :goto_4

    :cond_4
    move-object/from16 v8, v47

    :goto_4
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v8

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    and-long v49, v2, v29

    cmp-long v49, v49, v4

    if-eqz v49, :cond_6

    if-eqz v0, :cond_6

    iget v14, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->maxRange:I

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    :goto_6
    and-long v50, v2, v37

    cmp-long v50, v50, v4

    if-eqz v50, :cond_a

    if-eqz v0, :cond_7

    iget-object v9, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingIndicatorVisible:Landroidx/lifecycle/MediatorLiveData;

    goto :goto_7

    :cond_7
    move-object/from16 v9, v47

    :goto_7
    const/4 v10, 0x2

    invoke-virtual {v1, v10, v9}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object/from16 v9, v47

    :goto_8
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v50, :cond_b

    if-eqz v9, :cond_9

    const-wide v53, 0x8000000000L

    goto :goto_9

    :cond_9
    const-wide v53, 0x4000000000L

    :goto_9
    or-long v2, v2, v53

    goto :goto_a

    :cond_a
    const/4 v9, 0x0

    :cond_b
    :goto_a
    and-long v53, v2, v39

    cmp-long v10, v53, v4

    if-eqz v10, :cond_11

    if-eqz v0, :cond_c

    iget-object v7, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    goto :goto_b

    :cond_c
    move-object/from16 v7, v47

    :goto_b
    invoke-virtual {v1, v13, v7}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Boolean;

    goto :goto_c

    :cond_d
    move-object/from16 v53, v47

    :goto_c
    invoke-static/range {v53 .. v53}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v54

    if-eqz v10, :cond_f

    if-eqz v54, :cond_e

    or-long v2, v2, v25

    goto :goto_d

    :cond_e
    or-long v2, v2, v27

    :cond_f
    :goto_d
    if-eqz v54, :cond_10

    goto :goto_e

    :cond_10
    const/16 v10, 0x8

    goto :goto_f

    :cond_11
    move-object/from16 v7, v47

    move-object/from16 v53, v7

    :goto_e
    const/4 v10, 0x0

    :goto_f
    and-long v54, v2, v19

    cmp-long v54, v54, v4

    if-eqz v54, :cond_13

    if-eqz v0, :cond_12

    iget-object v13, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgressPercentage:Landroidx/lifecycle/MediatorLiveData;

    goto :goto_10

    :cond_12
    move-object/from16 v13, v47

    :goto_10
    const/4 v11, 0x4

    invoke-virtual {v1, v11, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_11

    :cond_13
    move-object/from16 v11, v47

    :goto_11
    and-long v12, v2, v21

    cmp-long v12, v12, v4

    if-eqz v12, :cond_15

    if-eqz v0, :cond_14

    iget-object v12, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->selectedRange:Landroidx/lifecycle/MutableLiveData;

    goto :goto_12

    :cond_14
    move-object/from16 v12, v47

    :goto_12
    const/4 v13, 0x5

    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v12, :cond_15

    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    goto :goto_13

    :cond_15
    move-object/from16 v12, v47

    :goto_13
    and-long v56, v2, v15

    cmp-long v13, v56, v4

    if-eqz v13, :cond_18

    if-eqz v0, :cond_16

    iget-object v13, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->minRange:Landroidx/lifecycle/MutableLiveData;

    goto :goto_14

    :cond_16
    move-object/from16 v13, v47

    :goto_14
    const/4 v15, 0x6

    invoke-virtual {v1, v15, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v13, :cond_17

    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    goto :goto_15

    :cond_17
    move-object/from16 v13, v47

    :goto_15
    invoke-static {v13}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v13

    goto :goto_16

    :cond_18
    const/4 v13, 0x0

    :goto_16
    and-long v15, v2, v43

    cmp-long v15, v15, v4

    if-eqz v15, :cond_1c

    if-eqz v0, :cond_19

    iget-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->cancelButtonVisible:Landroidx/lifecycle/MediatorLiveData;

    goto :goto_17

    :cond_19
    move-object/from16 v4, v47

    :goto_17
    const/4 v5, 0x7

    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_18

    :cond_1a
    move-object/from16 v4, v47

    :goto_18
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v15, :cond_1d

    if-eqz v4, :cond_1b

    const-wide/32 v15, 0x2000000

    goto :goto_19

    :cond_1b
    const-wide/32 v15, 0x1000000

    :goto_19
    or-long/2addr v2, v15

    goto :goto_1a

    :cond_1c
    const/4 v4, 0x0

    :cond_1d
    :goto_1a
    const-wide/32 v15, 0xc100

    and-long v60, v2, v15

    const-wide/16 v15, 0x0

    cmp-long v5, v60, v15

    if-eqz v5, :cond_20

    if-eqz v0, :cond_1e

    iget-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->currentFrame:Landroidx/lifecycle/MutableLiveData;

    goto :goto_1b

    :cond_1e
    move-object/from16 v5, v47

    :goto_1b
    const/16 v15, 0x8

    invoke-virtual {v1, v15, v5}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v5, :cond_1f

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    goto :goto_1c

    :cond_1f
    move-object/from16 v5, v47

    :goto_1c
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v5

    goto :goto_1d

    :cond_20
    const/16 v15, 0x8

    const/4 v5, 0x0

    :goto_1d
    and-long v60, v2, v45

    const-wide/16 v58, 0x0

    cmp-long v16, v60, v58

    if-eqz v16, :cond_29

    if-eqz v0, :cond_21

    iget-object v15, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPercentageVisible:Landroidx/lifecycle/MediatorLiveData;

    move/from16 v60, v4

    goto :goto_1e

    :cond_21
    move/from16 v60, v4

    move-object/from16 v15, v47

    :goto_1e
    const/16 v4, 0x9

    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v15, :cond_22

    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_1f

    :cond_22
    move-object/from16 v4, v47

    :goto_1f
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v16, :cond_24

    if-eqz v4, :cond_23

    const-wide/32 v15, 0x20000

    goto :goto_20

    :cond_23
    const-wide/32 v15, 0x10000

    :goto_20
    or-long/2addr v2, v15

    :cond_24
    and-long v15, v2, v35

    const-wide/16 v58, 0x0

    cmp-long v15, v15, v58

    if-eqz v15, :cond_26

    if-eqz v4, :cond_25

    const-wide/32 v15, 0x200000

    or-long/2addr v2, v15

    const-wide v15, 0x800000000L

    goto :goto_21

    :cond_25
    const-wide/32 v15, 0x100000

    or-long/2addr v2, v15

    const-wide v15, 0x400000000L

    :goto_21
    or-long/2addr v2, v15

    :cond_26
    and-long v15, v2, v35

    const-wide/16 v58, 0x0

    cmp-long v15, v15, v58

    if-eqz v15, :cond_28

    xor-int/lit8 v15, v4, 0x1

    move-wide/from16 v61, v2

    iget-object v2, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v4, :cond_27

    const v3, 0x7f1204ca

    goto :goto_22

    :cond_27
    const v3, 0x7f1204cc

    :goto_22
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v16, v15

    const-wide/32 v51, 0xc400

    move v15, v4

    move-object v4, v2

    move-wide/from16 v2, v61

    goto :goto_24

    :cond_28
    move-wide/from16 v61, v2

    goto :goto_23

    :cond_29
    move/from16 v60, v4

    const/4 v4, 0x0

    :goto_23
    move v15, v4

    move-object/from16 v4, v47

    const/16 v16, 0x0

    const-wide/32 v51, 0xc400

    :goto_24
    and-long v61, v2, v51

    const-wide/16 v58, 0x0

    cmp-long v61, v61, v58

    if-eqz v61, :cond_2f

    if-eqz v0, :cond_2a

    move-object/from16 v62, v4

    iget-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingSlideshowVisible:Landroidx/lifecycle/MediatorLiveData;

    move/from16 v63, v5

    goto :goto_25

    :cond_2a
    move-object/from16 v62, v4

    move/from16 v63, v5

    move-object/from16 v4, v47

    :goto_25
    const/16 v5, 0xa

    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_26

    :cond_2b
    move-object/from16 v4, v47

    :goto_26
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v61, :cond_2d

    if-eqz v4, :cond_2c

    const-wide/32 v64, 0x80000

    goto :goto_27

    :cond_2c
    const-wide/32 v64, 0x40000

    :goto_27
    or-long v2, v2, v64

    :cond_2d
    if-eqz v4, :cond_2e

    goto :goto_28

    :cond_2e
    const/16 v4, 0x8

    goto :goto_29

    :cond_2f
    move-object/from16 v62, v4

    move/from16 v63, v5

    :goto_28
    const/4 v4, 0x0

    :goto_29
    const-wide/32 v23, 0xc800

    and-long v64, v2, v23

    const-wide/16 v58, 0x0

    cmp-long v5, v64, v58

    if-eqz v5, :cond_31

    if-eqz v0, :cond_30

    iget-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingPreview:Landroidx/lifecycle/MutableLiveData;

    move/from16 v61, v4

    goto :goto_2a

    :cond_30
    move/from16 v61, v4

    move-object/from16 v5, v47

    :goto_2a
    const/16 v4, 0xb

    invoke-virtual {v1, v4, v5}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v5, :cond_32

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_2b

    :cond_31
    move/from16 v61, v4

    :cond_32
    move-object/from16 v4, v47

    :goto_2b
    const-wide/32 v17, 0xd000

    and-long v64, v2, v17

    const-wide/16 v58, 0x0

    cmp-long v5, v64, v58

    if-eqz v5, :cond_35

    if-eqz v0, :cond_33

    iget-object v5, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingProgress:Landroidx/lifecycle/MediatorLiveData;

    move-object/from16 v64, v4

    goto :goto_2c

    :cond_33
    move-object/from16 v64, v4

    move-object/from16 v5, v47

    :goto_2c
    const/16 v4, 0xc

    invoke-virtual {v1, v4, v5}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v5, :cond_34

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    goto :goto_2d

    :cond_34
    move-object/from16 v4, v47

    :goto_2d
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v4

    goto :goto_2e

    :cond_35
    move-object/from16 v64, v4

    const/4 v4, 0x0

    :goto_2e
    and-long v65, v2, v41

    const-wide/16 v58, 0x0

    cmp-long v5, v65, v58

    if-eqz v5, :cond_39

    if-eqz v0, :cond_36

    move/from16 v65, v4

    iget-object v4, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->editControlsVisible:Landroidx/lifecycle/MediatorLiveData;

    move/from16 v66, v6

    goto :goto_2f

    :cond_36
    move/from16 v65, v4

    move/from16 v66, v6

    move-object/from16 v4, v47

    :goto_2f
    const/16 v6, 0xd

    invoke-virtual {v1, v6, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v4, :cond_37

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v47, v4

    check-cast v47, Ljava/lang/Boolean;

    :cond_37
    invoke-static/range {v47 .. v47}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v5, :cond_3a

    if-eqz v4, :cond_38

    const-wide v5, 0x200000000L

    goto :goto_30

    :cond_38
    const-wide v5, 0x100000000L

    :goto_30
    or-long/2addr v2, v5

    goto :goto_31

    :cond_39
    move/from16 v65, v4

    move/from16 v66, v6

    const/4 v4, 0x0

    :cond_3a
    :goto_31
    move v5, v4

    move-object/from16 v67, v12

    move/from16 v47, v13

    move/from16 v4, v60

    move-object/from16 v13, v64

    move/from16 v6, v65

    move v12, v10

    move-object v10, v11

    move-object/from16 v60, v53

    move-object/from16 v53, v7

    move v11, v9

    move/from16 v7, v61

    move/from16 v9, v66

    move/from16 v61, v14

    move-object/from16 v14, v62

    move/from16 v62, v8

    move/from16 v8, v16

    move/from16 v16, v63

    goto :goto_32

    :cond_3b
    move-object/from16 v10, v47

    move-object v13, v10

    move-object v14, v13

    move-object/from16 v53, v14

    move-object/from16 v60, v53

    move-object/from16 v67, v60

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v47, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    :goto_32
    const-wide v63, 0x8202020000L

    and-long v63, v2, v63

    const-wide/16 v58, 0x0

    cmp-long v63, v63, v58

    if-eqz v63, :cond_40

    if-eqz v0, :cond_3c

    iget-object v0, v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->contentHidden:Landroidx/lifecycle/MutableLiveData;

    goto :goto_33

    :cond_3c
    move-object/from16 v0, v53

    :goto_33
    move-object/from16 v53, v13

    const/4 v13, 0x3

    invoke-virtual {v1, v13, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/MutableLiveData;)V

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v60, v0

    check-cast v60, Ljava/lang/Boolean;

    :cond_3d
    invoke-static/range {v60 .. v60}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    and-long v63, v2, v39

    const-wide/16 v58, 0x0

    cmp-long v13, v63, v58

    if-eqz v13, :cond_3f

    if-eqz v0, :cond_3e

    or-long v2, v2, v25

    goto :goto_34

    :cond_3e
    or-long v2, v2, v27

    :cond_3f
    :goto_34
    const/4 v13, 0x1

    xor-int/2addr v0, v13

    goto :goto_35

    :cond_40
    move-object/from16 v53, v13

    const/4 v0, 0x0

    :goto_35
    and-long v25, v2, v45

    const-wide/16 v27, 0x0

    cmp-long v13, v25, v27

    if-eqz v13, :cond_45

    if-eqz v15, :cond_41

    move v15, v0

    goto :goto_36

    :cond_41
    const/4 v15, 0x0

    :goto_36
    if-eqz v13, :cond_43

    if-eqz v15, :cond_42

    const-wide/32 v25, 0x20000000

    goto :goto_37

    :cond_42
    const-wide/32 v25, 0x10000000

    :goto_37
    or-long v2, v2, v25

    :cond_43
    if-eqz v15, :cond_44

    goto :goto_38

    :cond_44
    const/16 v13, 0x8

    goto :goto_39

    :cond_45
    :goto_38
    const/4 v13, 0x0

    :goto_39
    and-long v25, v2, v43

    const-wide/16 v27, 0x0

    cmp-long v15, v25, v27

    if-eqz v15, :cond_4a

    if-eqz v4, :cond_46

    move v4, v0

    goto :goto_3a

    :cond_46
    const/4 v4, 0x0

    :goto_3a
    if-eqz v15, :cond_48

    if-eqz v4, :cond_47

    const-wide v25, 0x2000000000L

    goto :goto_3b

    :cond_47
    const-wide v25, 0x1000000000L

    :goto_3b
    or-long v2, v2, v25

    :cond_48
    if-eqz v4, :cond_49

    goto :goto_3c

    :cond_49
    const/16 v4, 0x8

    goto :goto_3d

    :cond_4a
    :goto_3c
    const/4 v4, 0x0

    :goto_3d
    and-long v25, v2, v41

    const-wide/16 v27, 0x0

    cmp-long v15, v25, v27

    if-eqz v15, :cond_4f

    if-eqz v5, :cond_4b

    move v5, v0

    goto :goto_3e

    :cond_4b
    const/4 v5, 0x0

    :goto_3e
    if-eqz v15, :cond_4d

    if-eqz v5, :cond_4c

    const-wide/32 v25, 0x800000

    goto :goto_3f

    :cond_4c
    const-wide/32 v25, 0x400000

    :goto_3f
    or-long v2, v2, v25

    :cond_4d
    if-eqz v5, :cond_4e

    goto :goto_40

    :cond_4e
    const/16 v5, 0x8

    goto :goto_41

    :cond_4f
    :goto_40
    const/4 v5, 0x0

    :goto_41
    and-long v25, v2, v37

    const-wide/16 v27, 0x0

    cmp-long v15, v25, v27

    if-eqz v15, :cond_54

    if-eqz v11, :cond_50

    goto :goto_42

    :cond_50
    const/4 v0, 0x0

    :goto_42
    if-eqz v15, :cond_52

    if-eqz v0, :cond_51

    const-wide/32 v25, 0x8000000

    goto :goto_43

    :cond_51
    const-wide/32 v25, 0x4000000

    :goto_43
    or-long v2, v2, v25

    :cond_52
    if-eqz v0, :cond_53

    const/16 v48, 0x0

    goto :goto_44

    :cond_53
    const/16 v48, 0x8

    :goto_44
    move/from16 v0, v48

    goto :goto_45

    :cond_54
    const/4 v0, 0x0

    :goto_45
    and-long v25, v2, v37

    const-wide/16 v27, 0x0

    cmp-long v11, v25, v27

    if-eqz v11, :cond_55

    iget-object v11, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView10:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v11, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_55
    and-long v25, v2, v39

    cmp-long v0, v25, v27

    if-eqz v0, :cond_56

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView11:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_56
    and-long v11, v2, v41

    cmp-long v0, v11, v27

    if-eqz v0, :cond_57

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mboundView9:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_57
    const-wide/32 v11, 0x8000

    and-long/2addr v11, v2

    cmp-long v0, v11, v27

    if-eqz v0, :cond_58

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    iget-object v5, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback6:Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionSaveButton:Landroid/widget/Button;

    iget-object v5, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mCallback5:Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    iget-object v5, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->superSlowMotionTrimBarvaluesAttrChanged:Lcom/adobe/xmp/impl/xpath/XMPPath;

    const-string v11, "view"

    invoke-static {v0, v11}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "attrChange"

    invoke-static {v5, v11}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getRangeListeners()Ljava/util/HashSet;

    move-result-object v0

    new-instance v11, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;

    invoke-direct {v11, v5}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBarKt$setListeners$1;-><init>(Landroidx/databinding/InverseBindingListener;)V

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_58
    and-long v11, v2, v33

    const-wide/16 v25, 0x0

    cmp-long v0, v11, v25

    if-eqz v0, :cond_59

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/view/View;->setSelected(Z)V

    :cond_59
    and-long v11, v2, v35

    cmp-long v0, v11, v25

    if-eqz v0, :cond_5a

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v0, v8}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingLabel:Landroid/widget/TextView;

    invoke-static {v0, v14}, Lcom/adobe/xmp/XMPUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_5a
    const-wide/32 v8, 0xd000

    and-long/2addr v8, v2

    cmp-long v0, v8, v25

    if-eqz v0, :cond_5b

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {v0, v6}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    :cond_5b
    and-long v5, v2, v43

    cmp-long v0, v5, v25

    if-eqz v0, :cond_5c

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5c
    and-long v4, v2, v19

    cmp-long v0, v4, v25

    if-eqz v0, :cond_5d

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/adobe/xmp/XMPUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_5d
    and-long v4, v2, v45

    cmp-long v0, v4, v25

    if-eqz v0, :cond_5e

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingProgressPercentage:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_5e
    const-wide/32 v4, 0xc400

    and-long/2addr v4, v2

    cmp-long v0, v4, v25

    if-eqz v0, :cond_5f

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5f
    const-wide/32 v4, 0xc800

    and-long/2addr v4, v2

    cmp-long v0, v4, v25

    if-eqz v0, :cond_60

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionProcessingSlideshow:Landroid/widget/ImageView;

    move-object/from16 v4, v53

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->setImageBitmapWithTransition(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_60
    and-long v4, v2, v31

    cmp-long v0, v4, v25

    if-eqz v0, :cond_61

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string v4, "view"

    invoke-static {v0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v8, v62

    invoke-virtual {v0, v8}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setFrameCount(I)V

    :cond_61
    and-long v4, v2, v21

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_62

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string v4, "view"

    invoke-static {v0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "newValue"

    move-object/from16 v12, v67

    invoke-static {v12, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getValues()[I

    move-result-object v4

    invoke-static {v4, v12}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_62

    invoke-virtual {v0, v12}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setValues([I)V

    :cond_62
    and-long v4, v2, v29

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_63

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string v4, "view"

    invoke-static {v0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getMaximumRange()I

    move-result v4

    move/from16 v14, v61

    if-eq v4, v14, :cond_63

    invoke-virtual {v0, v14}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setMaximumRange(I)V

    :cond_63
    const-wide/32 v4, 0xc040

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_64

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string v4, "view"

    invoke-static {v0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->getMinimumRange()I

    move-result v4

    move/from16 v13, v47

    if-eq v4, v13, :cond_64

    invoke-virtual {v0, v13}, Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;->setMinimumRange(I)V

    :cond_64
    const-wide/32 v4, 0xc100

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_65

    iget-object v0, v1, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->superSlowMotionTrimBar:Lcom/motorola/camera/ui/uicomponents/widgets/RangeSliderTrimSeekBar;

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->setPlayHeadFrame(I)V

    :cond_65
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onFieldChange(Ljava/lang/Object;II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    return v1

    :pswitch_0
    check-cast p1, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x2000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    check-cast p1, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_1

    monitor-enter p0

    :try_start_1
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1000

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :pswitch_2
    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_2

    monitor-enter p0

    :try_start_2
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x800

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    move v0, v1

    :goto_2
    return v0

    :pswitch_3
    check-cast p1, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_3

    monitor-enter p0

    :try_start_3
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x400

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    move v0, v1

    :goto_3
    return v0

    :pswitch_4
    check-cast p1, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_4

    monitor-enter p0

    :try_start_4
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x200

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    move v0, v1

    :goto_4
    return v0

    :pswitch_5
    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_5

    monitor-enter p0

    :try_start_5
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x100

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_5

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_5
    move v0, v1

    :goto_5
    return v0

    :pswitch_6
    check-cast p1, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_6

    monitor-enter p0

    :try_start_6
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_6

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_6
    move v0, v1

    :goto_6
    return v0

    :pswitch_7
    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_7

    monitor-enter p0

    :try_start_7
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_7

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    :cond_7
    move v0, v1

    :goto_7
    return v0

    :pswitch_8
    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_8

    monitor-enter p0

    :try_start_8
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_8

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw p1

    :cond_8
    move v0, v1

    :goto_8
    return v0

    :pswitch_9
    check-cast p1, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_9

    monitor-enter p0

    :try_start_9
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_9

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw p1

    :cond_9
    move v0, v1

    :goto_9
    return v0

    :pswitch_a
    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_a

    monitor-enter p0

    :try_start_a
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_a

    :catchall_a
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw p1

    :cond_a
    move v0, v1

    :goto_a
    return v0

    :pswitch_b
    check-cast p1, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_b

    monitor-enter p0

    :try_start_b
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_b

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw p1

    :cond_b
    move v0, v1

    :goto_b
    return v0

    :pswitch_c
    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    if-nez p3, :cond_c

    monitor-enter p0

    :try_start_c
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_c

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw p1

    :cond_c
    move v0, v1

    :goto_c
    return v0

    :pswitch_d
    check-cast p1, Landroidx/lifecycle/LiveData;

    if-nez p3, :cond_d

    monitor-enter p0

    :try_start_d
    iget-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_d

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw p1

    :cond_d
    move v0, v1

    :goto_d
    return v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setViewModel(Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;)V
    .locals 4

    iput-object p1, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBinding;->mViewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/databinding/SuperSlowMotionActivityBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
