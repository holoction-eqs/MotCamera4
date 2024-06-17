.class public abstract Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAnimationCallback:Lkotlin/ULong$Companion;

.field public mCanceled:Z

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public final mTextures:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lkotlin/ULong$Companion;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    return-void
.end method


# virtual methods
.method public abstract animationUpdate([F)Z
.end method

.method public cancelAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    return-void
.end method

.method public final setTextures([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mTextures:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
.end method
