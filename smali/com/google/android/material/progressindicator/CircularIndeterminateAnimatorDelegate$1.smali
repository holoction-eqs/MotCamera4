.class public final Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->cancelAnimatorImmediately()V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/collection/MapCollections;->mEntrySet:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p1, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    iget p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    add-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget-object v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
