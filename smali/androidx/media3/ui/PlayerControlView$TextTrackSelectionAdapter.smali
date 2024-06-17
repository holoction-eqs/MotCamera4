.class public final Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/media3/ui/PlayerControlView;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/ui/PlayerControlView;II)V
    .locals 0

    iput p2, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$classId:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;I)V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1, p3}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;I)V

    return-void
.end method


# virtual methods
.method public final hasSelectionOverride(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget-object v2, v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-object v2, v2, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget-object v3, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final init(Lcom/google/common/collect/RegularImmutableList;)V
    .locals 6

    iget v0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$classId:I

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    move v0, v2

    :goto_0
    iget v4, p1, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v0, v4, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget-object v5, v4, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-object v5, v5, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    iget v4, v4, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    aget-boolean v4, v5, v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, v1, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_2

    iget-object v3, v1, Landroidx/media3/ui/PlayerControlView;->subtitleOnButtonDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v3, v1, Landroidx/media3/ui/PlayerControlView;->subtitleOffButtonDrawable:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_3

    iget-object v0, v1, Landroidx/media3/ui/PlayerControlView;->subtitleOnContentDescription:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v0, v1, Landroidx/media3/ui/PlayerControlView;->subtitleOffContentDescription:Ljava/lang/String;

    :goto_3
    iget-object v1, v1, Landroidx/media3/ui/PlayerControlView;->subtitleButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    return-void

    :goto_4
    iput-object p1, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    iget-object v0, v1, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getTrackSelectionParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    iget-object v5, v1, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1201a5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v5, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    aput-object p0, p1, v3

    goto :goto_6

    :cond_5
    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->hasSelectionOverride(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1201a4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v5, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    aput-object p0, p1, v3

    goto :goto_6

    :cond_6
    :goto_5
    iget p0, p1, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v2, p0, :cond_8

    invoke-virtual {p1, v2}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-object v0, v0, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    iget v1, p0, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    iget-object p1, v5, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackName:Ljava/lang/String;

    aput-object p0, p1, v3

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolder(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ListAdapter;->onBindViewHolder(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    return-void

    .line 1
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ListAdapter;->onBindViewHolder(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    if-lez p2, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    .line 2
    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    .line 3
    iget-object p2, p2, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    .line 4
    iget p0, p0, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    aget-boolean p0, p2, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 5
    :goto_0
    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    check-cast p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->onBindViewHolder(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    return-void

    .line 7
    :goto_0
    check-cast p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->onBindViewHolder(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBindViewHolderAtZeroPosition(Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;)V
    .locals 7

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->checkView:Landroid/view/View;

    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;->textView:Landroid/widget/TextView;

    iget v2, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$classId:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const v2, 0x7f1201a5

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    move p1, v4

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget-object v6, v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-object v6, v6, Landroidx/media3/common/Tracks$Group;->trackSelected:[Z

    iget v2, v2, Landroidx/media3/ui/PlayerControlView$TrackInformation;->trackIndex:I

    aget-boolean v2, v6, v2

    if-eqz v2, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :goto_2
    const v2, 0x7f1201a4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget-object p1, p1, Landroidx/media3/ui/PlayerControlView;->player:Landroidx/media3/common/Player;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getTrackSelectionParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->hasSelectionOverride(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v5}, Lcom/motorola/camera/CtaPrivacyActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTrackSelection(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->this$0:Landroidx/media3/ui/PlayerControlView;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->settingsAdapter:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->subTexts:[Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p0, v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
