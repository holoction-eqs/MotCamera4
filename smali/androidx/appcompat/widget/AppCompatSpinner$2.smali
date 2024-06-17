.class public final Landroidx/appcompat/widget/AppCompatSpinner$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->$r8$classId:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    check-cast v2, Landroidx/appcompat/view/menu/StandardMenuPopup;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_2

    iget-object v0, v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    check-cast v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_5

    iget-object v0, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    :cond_5
    return-void

    :pswitch_2
    check-cast v2, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v2}, Landroidx/appcompat/widget/AppCompatSpinner$Api17Impl;->getTextDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {v2}, Landroidx/appcompat/widget/AppCompatSpinner$Api17Impl;->getTextAlignment(Landroid/view/View;)I

    move-result v1

    iget-object v3, v2, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    invoke-interface {v3, v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->show(II)V

    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0, p0}, Landroidx/appcompat/widget/AppCompatSpinner$Api16Impl;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_7
    return-void

    :goto_4
    check-cast v2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object p0, v2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-nez v1, :cond_9

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
