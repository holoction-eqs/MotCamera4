.class public final Landroidx/transition/Transition$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$runningAnimators:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/transition/Transition$2;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/transition/Transition$2;->val$runningAnimators:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/transition/Transition$2;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/collection/ArrayMap;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/transition/Transition$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/transition/Transition$2;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/transition/Transition$2;->val$runningAnimators:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Landroidx/transition/Transition$2;->$r8$classId:I

    iget-object v1, p0, Landroidx/transition/Transition$2;->this$0:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/transition/Transition$2;->val$runningAnimators:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/transition/Transition;

    iget-object p0, v1, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :goto_0
    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/transition/Transition$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/transition/Transition$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/transition/Transition;

    iget-object p0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
