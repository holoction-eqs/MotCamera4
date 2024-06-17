.class public final Landroidx/transition/Fade$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$view:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/transition/Fade$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/transition/Fade$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/transition/Fade$1;->val$view:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 3

    iget v0, p0, Landroidx/transition/Fade$1;->$r8$classId:I

    iget-object v1, p0, Landroidx/transition/Fade$1;->val$view:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Landroidx/collection/ArrayMap;

    iget-object v0, p0, Landroidx/transition/Fade$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/transition/TransitionManager$MultiListener;

    iget-object v0, v0, Landroidx/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/collection/SimpleArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)V

    return-void

    :pswitch_1
    check-cast v1, Landroid/view/View;

    sget-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setTransitionAlpha(F)V

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)V

    return-void

    :goto_0
    check-cast v1, Landroidx/transition/Transition;

    invoke-virtual {v1}, Landroidx/transition/Transition;->runAnimators()V

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
