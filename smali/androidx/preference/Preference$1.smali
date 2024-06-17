.class public final Landroidx/preference/Preference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/TrackSelectionView;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/preference/Preference$1;->$r8$classId:I

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference$1;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, Landroidx/preference/Preference$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Landroidx/preference/Preference$1;->$r8$classId:I

    const/4 v2, 0x1

    iget-object p0, p0, Landroidx/preference/Preference$1;->this$0:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    check-cast p0, Landroidx/media3/ui/TrackSelectionView;

    iget-object v0, p0, Landroidx/media3/ui/TrackSelectionView;->disableView:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Landroidx/media3/ui/TrackSelectionView;->overrides:Ljava/util/HashMap;

    if-ne p1, v0, :cond_0

    iput-boolean v2, p0, Landroidx/media3/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/TrackSelectionView;->defaultView:Landroid/widget/CheckedTextView;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    iput-boolean v3, p0, Landroidx/media3/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_4

    :cond_1
    iput-boolean v3, p0, Landroidx/media3/ui/TrackSelectionView;->isDisabled:Z

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/media3/ui/TrackSelectionView$TrackInfo;

    iget-object v4, v0, Landroidx/media3/ui/TrackSelectionView$TrackInfo;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-object v4, v4, Landroidx/media3/common/Tracks$Group;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/TrackSelectionOverride;

    iget v6, v0, Landroidx/media3/ui/TrackSelectionView$TrackInfo;->trackIndex:I

    if-nez v5, :cond_3

    iget-boolean p1, p0, Landroidx/media3/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_2
    new-instance p1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    iget-object v5, v5, Landroidx/media3/common/TrackSelectionOverride;->trackIndices:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast p1, Landroid/widget/CheckedTextView;

    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    iget-boolean v5, p0, Landroidx/media3/ui/TrackSelectionView;->allowAdaptiveSelections:Z

    if-eqz v5, :cond_4

    iget-object v0, v0, Landroidx/media3/ui/TrackSelectionView$TrackInfo;->trackGroup:Landroidx/media3/common/Tracks$Group;

    iget-boolean v0, v0, Landroidx/media3/common/Tracks$Group;->adaptiveSupported:Z

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    if-nez v0, :cond_7

    iget-boolean v5, p0, Landroidx/media3/ui/TrackSelectionView;->allowMultipleOverrides:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroidx/media3/ui/TrackSelectionView;->trackGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_5

    move v5, v2

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :cond_7
    :goto_2
    if-eqz p1, :cond_9

    if-eqz v2, :cond_9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    new-instance p1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-direct {p1, v4, v7}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    goto :goto_3

    :cond_9
    if-nez p1, :cond_b

    if-eqz v0, :cond_a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-direct {p1, v4, v7}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    goto :goto_3

    :cond_a
    new-instance p1, Landroidx/media3/common/TrackSelectionOverride;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    :goto_3
    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_4
    invoke-virtual {p0}, Landroidx/media3/ui/TrackSelectionView;->updateViewStates()V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez p0, :cond_c

    goto :goto_5

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    :goto_5
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_d
    return-void

    :pswitch_2
    check-cast p0, Landroidx/appcompat/app/AlertController;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v1, :cond_e

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_e

    goto :goto_6

    :cond_e
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v1, :cond_f

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_f

    goto :goto_6

    :cond_f
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v1, :cond_10

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_10

    :goto_6
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    :cond_10
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mHandler:Landroidx/appcompat/app/AlertController$ButtonHandler;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->performClick(Landroid/view/View;)V

    return-void

    :goto_7
    check-cast p0, Lcom/google/android/material/datepicker/MaterialCalendar;

    iget p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_12

    invoke-virtual {p0, v2}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector$enumunboxing$(I)V

    goto :goto_8

    :cond_12
    if-ne p1, v2, :cond_13

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector$enumunboxing$(I)V

    :cond_13
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
