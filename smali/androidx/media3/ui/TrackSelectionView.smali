.class public Landroidx/media3/ui/TrackSelectionView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public allowAdaptiveSelections:Z

.field public allowMultipleOverrides:Z

.field public final componentListener:Landroidx/preference/Preference$1;

.field public final defaultView:Landroid/widget/CheckedTextView;

.field public final disableView:Landroid/widget/CheckedTextView;

.field public final inflater:Landroid/view/LayoutInflater;

.field public isDisabled:Z

.field public final overrides:Ljava/util/HashMap;

.field public final selectableItemBackgroundResourceId:I

.field public final trackGroups:Ljava/util/ArrayList;

.field public trackNameProvider:Landroidx/media3/ui/TrackNameProvider;

.field public trackViews:[[Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/media3/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    new-instance v1, Landroidx/preference/Preference$1;

    invoke-direct {v1, p0}, Landroidx/preference/Preference$1;-><init>(Landroidx/media3/ui/TrackSelectionView;)V

    iput-object v1, p0, Landroidx/media3/ui/TrackSelectionView;->componentListener:Landroidx/preference/Preference$1;

    new-instance v3, Landroidx/media3/ui/DefaultTrackNameProvider;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/ui/DefaultTrackNameProvider;-><init>(Landroid/content/res/Resources;)V

    iput-object v3, p0, Landroidx/media3/ui/TrackSelectionView;->trackNameProvider:Landroidx/media3/ui/TrackNameProvider;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroidx/media3/ui/TrackSelectionView;->overrides:Ljava/util/HashMap;

    const v3, 0x109000f

    invoke-virtual {p1, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    iput-object v4, p0, Landroidx/media3/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v5, 0x7f1201a5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v4, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v4, 0x7f0d0061

    invoke-virtual {p1, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Landroidx/media3/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    const v2, 0x7f1201a4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getIsDisabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/ui/TrackSelectionView;->isDisabled:Z

    return p0
.end method

.method public getOverrides()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/media3/common/TrackGroup;",
            "Landroidx/media3/common/TrackSelectionOverride;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/ui/TrackSelectionView;->overrides:Ljava/util/HashMap;

    return-object p0
.end method

.method public setAllowAdaptiveSelections(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/media3/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    invoke-virtual {p0}, Landroidx/media3/ui/TrackSelectionView;->updateViews()V

    :cond_0
    return-void
.end method

.method public setAllowMultipleOverrides(Z)V
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Landroidx/media3/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/ui/TrackSelectionView;->overrides:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Tracks$Group;

    iget-object v3, v3, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/TrackSelectionOverride;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/ui/TrackSelectionView;->updateViews()V

    :cond_3
    return-void
.end method

.method public setShowDisableOption(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object p0, p0, Landroidx/media3/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, p1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    return-void
.end method

.method public setTrackNameProvider(Landroidx/media3/ui/TrackNameProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/ui/TrackSelectionView;->trackNameProvider:Landroidx/media3/ui/TrackNameProvider;

    invoke-virtual {p0}, Landroidx/media3/ui/TrackSelectionView;->updateViews()V

    return-void
.end method

.method public final updateViewStates()V
    .locals 8

    iget-object v0, p0, Landroidx/media3/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Landroidx/media3/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-boolean v0, p0, Landroidx/media3/ui/TrackSelectionView;->isDisabled:Z

    iget-object v1, p0, Landroidx/media3/ui/TrackSelectionView;->overrides:Ljava/util/HashMap;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Landroidx/media3/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    move v0, v2

    :goto_1
    iget-object v3, p0, Landroidx/media3/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Landroidx/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Tracks$Group;

    iget-object v3, v3, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/TrackSelectionOverride;

    move v4, v2

    :goto_2
    iget-object v5, p0, Landroidx/media3/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v5, v5, v0

    array-length v6, v5

    if-ge v4, v6, :cond_2

    if-eqz v3, :cond_1

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroidx/media3/ui/TrackSelectionView$TrackInfo;

    iget-object v6, p0, Landroidx/media3/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v6, v6, v0

    aget-object v6, v6, v4

    iget v5, v5, Landroidx/media3/ui/TrackSelectionView$TrackInfo;->trackIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, v3, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7, v5}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_3

    :cond_1
    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final updateViews()V
    .locals 14

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/media3/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    iget-object v5, p0, Landroidx/media3/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_1

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_1
    invoke-virtual {v5, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[Landroid/widget/CheckedTextView;

    iput-object v2, p0, Landroidx/media3/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    iget-boolean v2, p0, Landroidx/media3/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    move v4, v3

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Tracks$Group;

    iget-boolean v6, p0, Landroidx/media3/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    if-eqz v6, :cond_3

    iget-boolean v6, v5, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    if-eqz v6, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    iget-object v7, p0, Landroidx/media3/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    iget v8, v5, Landroidx/media3/common/Tracks$Group;->length:I

    new-array v9, v8, [Landroid/widget/CheckedTextView;

    aput-object v9, v7, v4

    new-array v7, v8, [Landroidx/media3/ui/TrackSelectionView$TrackInfo;

    move v9, v3

    :goto_4
    iget v10, v5, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v9, v10, :cond_4

    new-instance v10, Landroidx/media3/ui/TrackSelectionView$TrackInfo;

    invoke-direct {v10, v5, v9}, Landroidx/media3/ui/TrackSelectionView$TrackInfo;-><init>(Landroidx/media3/common/Tracks$Group;I)V

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    move v9, v3

    :goto_5
    if-ge v9, v8, :cond_9

    iget-object v10, p0, Landroidx/media3/ui/TrackSelectionView;->inflater:Landroid/view/LayoutInflater;

    if-nez v9, :cond_5

    const v11, 0x7f0d0061

    invoke-virtual {v10, v11, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    if-nez v6, :cond_7

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    const v11, 0x109000f

    goto :goto_7

    :cond_7
    :goto_6
    const v11, 0x1090010

    :goto_7
    invoke-virtual {v10, v11, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckedTextView;

    iget v11, p0, Landroidx/media3/ui/TrackSelectionView;->selectableItemBackgroundResourceId:I

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v11, p0, Landroidx/media3/ui/TrackSelectionView;->trackNameProvider:Landroidx/media3/ui/TrackNameProvider;

    aget-object v12, v7, v9

    iget-object v13, v12, Landroidx/media3/ui/TrackSelectionView$TrackInfo;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget v12, v12, Landroidx/media3/ui/TrackSelectionView$TrackInfo;->trackIndex:I

    invoke-virtual {v13, v12}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v12

    check-cast v11, Landroidx/media3/ui/DefaultTrackNameProvider;

    invoke-virtual {v11, v12}, Landroidx/media3/ui/DefaultTrackNameProvider;->getTrackName(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v11, v7, v9

    invoke-virtual {v10, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Landroidx/media3/common/Tracks$Group;->isTrackSupported(I)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v11, p0, Landroidx/media3/ui/TrackSelectionView;->componentListener:Landroidx/preference/Preference$1;

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_8
    invoke-virtual {v10, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v10, v3}, Landroid/view/View;->setEnabled(Z)V

    :goto_8
    iget-object v11, p0, Landroidx/media3/ui/TrackSelectionView;->trackViews:[[Landroid/widget/CheckedTextView;

    aget-object v11, v11, v4

    aput-object v10, v11, v9

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0}, Landroidx/media3/ui/TrackSelectionView;->updateViewStates()V

    return-void
.end method
