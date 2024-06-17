.class public final Landroidx/core/view/WindowInsetsAnimationCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;

    .line 1
    new-instance v1, Landroid/view/WindowInsetsAnimation;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/WindowInsetsAnimation;-><init>(ILandroid/view/animation/Interpolator;J)V

    invoke-direct {v0, v1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;-><init>(Landroid/view/WindowInsetsAnimation;)V

    .line 2
    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    .line 3
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/core/view/WindowInsetsAnimationCompat;-><init>(ILandroid/view/animation/Interpolator;J)V

    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;-><init>(Landroid/view/WindowInsetsAnimation;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationCompat$Impl30;

    return-void
.end method
