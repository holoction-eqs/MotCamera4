.class public final Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mCanceled:Z

.field public final synthetic this$0:Ljava/lang/Object;

.field public val$visibility:I


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    iput p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/ToolbarWidgetWrapper;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Ljava/lang/Object;

    iput p2, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    iput-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd()V
    .locals 3

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->$r8$classId:I

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    if-nez v0, :cond_0

    check-cast v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object v0, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget p0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :goto_0
    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    check-cast v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object v2, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    iput-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    iput-boolean v0, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mIsStarted:Z

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->$r8$classId:I

    iget-object v1, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    iget-object p0, v1, Landroidx/appcompat/widget/ToolbarWidgetWrapper;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :goto_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    check-cast v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    iget-object p0, v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->mListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart()V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
