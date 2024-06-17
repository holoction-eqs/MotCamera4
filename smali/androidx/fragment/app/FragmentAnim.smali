.class public abstract Landroidx/fragment/app/FragmentAnim;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .locals 5

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mAnimationInfo:Landroidx/fragment/app/Fragment$AnimationInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    iget v2, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    :goto_0
    if-eqz p3, :cond_4

    if-eqz p2, :cond_2

    if-nez v0, :cond_1

    :goto_1
    move p3, v1

    goto :goto_2

    :cond_1
    iget p3, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopEnterAnim:I

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget p3, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mPopExitAnim:I

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget p3, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mEnterAnim:I

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    iget p3, v0, Landroidx/fragment/app/Fragment$AnimationInfo;->mExitAnim:I

    :goto_2
    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    const v4, 0x7f0a0492

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_8
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    if-eqz p1, :cond_9

    return-object v3

    :cond_9
    if-nez p3, :cond_10

    if-eqz v2, :cond_10

    const/16 p1, 0x1001

    if-eq v2, p1, :cond_e

    const/16 p1, 0x1003

    if-eq v2, p1, :cond_c

    const/16 p1, 0x2002

    if-eq v2, p1, :cond_a

    const/4 p1, -0x1

    goto :goto_3

    :cond_a
    if-eqz p2, :cond_b

    const p1, 0x7f020006

    goto :goto_3

    :cond_b
    const p1, 0x7f020007

    goto :goto_3

    :cond_c
    if-eqz p2, :cond_d

    const p1, 0x7f020008

    goto :goto_3

    :cond_d
    const p1, 0x7f020009

    goto :goto_3

    :cond_e
    if-eqz p2, :cond_f

    const p1, 0x7f02000a

    goto :goto_3

    :cond_f
    const p1, 0x7f02000b

    :goto_3
    move p3, p1

    :cond_10
    if-eqz p3, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    :try_start_0
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_11

    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v0, p2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :cond_11
    const/4 v1, 0x1

    goto :goto_4

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_12
    :goto_4
    if-nez v1, :cond_14

    :try_start_1
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_14

    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v0, p2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception p2

    if-nez p1, :cond_13

    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_14

    new-instance p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {p1, p0}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    :cond_13
    throw p2

    :cond_14
    return-object v3
.end method
