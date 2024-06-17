.class public final Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$child:Landroid/view/View;

.field public final synthetic val$coordinatorLayout:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/View;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->$r8$classId:I

    iput-object p4, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->val$coordinatorLayout:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->val$child:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->$r8$classId:I

    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->val$child:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->val$coordinatorLayout:Landroid/view/View;

    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->viewOffsetHelper:Lcom/google/android/material/appbar/ViewOffsetHelper;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    add-int/2addr p0, v0

    const/4 v1, 0x0

    const/high16 v3, -0x80000000

    if-lt p0, v3, :cond_1

    const v4, 0x7fffffff

    if-gt p0, v4, :cond_1

    invoke-static {p1, v3, v4}, Lkotlin/reflect/TypesJVMKt;->clamp(III)I

    move-result p1

    if-eq p0, p1, :cond_1

    throw v1

    :cond_1
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p0

    invoke-static {v2, p0}, Landroidx/core/view/ViewCompat;->removeActionWithId(Landroid/view/View;I)V

    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p0

    invoke-static {v2, p0}, Landroidx/core/view/ViewCompat;->removeActionWithId(Landroid/view/View;I)V

    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    throw v1

    :goto_1
    check-cast p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sget v0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->$r8$clinit:I

    invoke-virtual {p0, v2, v1, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->tweenIndicatorPosition(Landroid/view/View;Landroid/view/View;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
