.class public final Landroidx/appcompat/widget/AppCompatSpinner$1;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroid/view/View;

.field public final synthetic val$popup:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSpinner$1;->this$0:Landroid/view/View;

    iput-object p4, p0, Landroidx/appcompat/widget/AppCompatSpinner$1;->val$popup:Ljava/lang/Object;

    invoke-direct {p0, p3}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$1;->val$popup:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    return-object p0

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$1;->this$0:Landroid/view/View;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOverflowPopup:Landroidx/appcompat/widget/ActionMenuPresenter$OverflowPopup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->getPopup()Landroidx/appcompat/view/menu/MenuPopup;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onForwardingStarted()Z
    .locals 3

    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$1;->$r8$classId:I

    const/4 v1, 0x1

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$1;->this$0:Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatSpinner$Api17Impl;->getTextDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Landroidx/appcompat/widget/AppCompatSpinner$Api17Impl;->getTextAlignment(Landroid/view/View;)I

    move-result v2

    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner;->mPopup:Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    invoke-interface {p0, v0, v2}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->show(II)V

    :cond_0
    return v1

    :goto_0
    check-cast p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onForwardingStopped()Z
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$1;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroidx/appcompat/widget/ForwardingListener;->onForwardingStopped()Z

    return v1

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSpinner$1;->this$0:Landroid/view/View;

    check-cast p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroidx/work/Worker$2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
