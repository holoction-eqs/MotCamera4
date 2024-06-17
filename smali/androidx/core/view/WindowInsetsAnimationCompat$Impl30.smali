.class public final Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Impl;
.source "SourceFile"


# instance fields
.field public final mWrapped:Landroid/view/WindowInsetsAnimation;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl;-><init>()V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    return-void
.end method


# virtual methods
.method public final getInterpolatedFraction()F
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    move-result p0

    return p0
.end method

.method public final getTypeMask()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result p0

    return p0
.end method

.method public final setFraction(F)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;->mWrapped:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {p0, p1}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    return-void
.end method
