.class public final Landroidx/appcompat/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/widget/SearchView$4;->$r8$classId:I

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$4;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const/4 p2, 0x1

    iget p3, p0, Landroidx/appcompat/widget/SearchView$4;->$r8$classId:I

    const/4 p4, 0x0

    const-string p5, "view"

    iget-object p6, p0, Landroidx/appcompat/widget/SearchView$4;->this$0:Ljava/lang/Object;

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {p1, p5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    check-cast p6, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-virtual {p6}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/VideoRecordingIndicationComponent;->refreshUIAnimation()V

    return-void

    :pswitch_1
    invoke-static {p1, p5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    check-cast p6, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    iget-boolean p0, p6, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->controlPanelOpen:Z

    if-eqz p0, :cond_1

    iget-object p0, p6, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget p1, p6, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->rotation:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    iget-boolean p1, p6, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->needControlPanelUpdate:Z

    if-eqz p1, :cond_0

    iput-boolean p4, p6, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->interceptUpdate:Z

    iput-boolean p4, p6, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->needControlPanelUpdate:Z

    invoke-virtual {p6}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->updateRecyclerViewAsync()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p6, p0, p2, p1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->animateVisibility(Landroidx/recyclerview/widget/RecyclerView;ZLkotlin/jvm/functions/Function0;)V

    :cond_1
    return-void

    :pswitch_2
    invoke-static {p1, p5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    check-cast p6, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;

    invoke-virtual {p6}, Lcom/motorola/camera/cli/content/presentation/BaseCliPresentationViewHolder;->getCliOrientation()I

    move-result p0

    invoke-virtual {p6, p0}, Lcom/motorola/camera/cli/content/presentation/CliDualPreviewPresentation;->updateVideoIndicatorLayout(I)V

    return-void

    :pswitch_3
    check-cast p6, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :pswitch_4
    check-cast p6, Landroidx/appcompat/widget/SearchView;

    iget-object p0, p6, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-le p1, p2, :cond_4

    invoke-virtual {p6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p6, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p6}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p5

    iget-boolean p7, p6, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz p7, :cond_2

    const p4, 0x7f070029

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    const p7, 0x7f07002a

    invoke-virtual {p1, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p4, p1

    :cond_2
    iget-object p1, p6, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p6

    invoke-virtual {p6, p3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget p6, p3, Landroid/graphics/Rect;->left:I

    if-eqz p5, :cond_3

    neg-int p5, p6

    goto :goto_0

    :cond_3
    add-int/2addr p6, p4

    sub-int p5, p2, p6

    :goto_0
    invoke-virtual {p1, p5}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    iget p5, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p5

    iget p3, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p3

    add-int/2addr p0, p4

    sub-int/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    :cond_4
    return-void

    :goto_1
    invoke-static {p1, p5}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    check-cast p6, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;

    sget-object p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->SHOW_STATES:Ljava/util/Set;

    invoke-virtual {p6}, Lcom/motorola/camera/ui/controls_2020/sliderbar/SelectColorSliderBar;->reset()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
