.class public final Landroidx/appcompat/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final val$mode:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/ActionMode;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/ActionBarContextView$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionBarContextView$1;->val$mode:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/ActionBarContextView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/view/menu/ActionMenuItem;

    iget-object v1, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView$1;->val$mode:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Landroidx/appcompat/widget/ActionBarContextView$1;->$r8$classId:I

    iget-object v0, p0, Landroidx/appcompat/widget/ActionBarContextView$1;->val$mode:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Landroidx/appcompat/view/ActionMode;

    invoke-virtual {v0}, Landroidx/appcompat/view/ActionMode;->finish()V

    return-void

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    if-eqz p0, :cond_0

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItem;

    const/4 p0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
