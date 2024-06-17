.class public final Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/appcompat/widget/ForwardingListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/ForwardingListener;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;->$r8$classId:I

    iput-object p1, p0, Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;->this$0:Landroidx/appcompat/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;->$r8$classId:I

    const/4 v1, 0x1

    iget-object p0, p0, Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;->this$0:Landroidx/appcompat/widget/ForwardingListener;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ForwardingListener;->clearCallbacks()V

    iget-object v0, p0, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v3, v5

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v1, p0, Landroidx/appcompat/widget/ForwardingListener;->mForwarding:Z

    :cond_2
    :goto_0
    return-void

    :goto_1
    iget-object p0, p0, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
