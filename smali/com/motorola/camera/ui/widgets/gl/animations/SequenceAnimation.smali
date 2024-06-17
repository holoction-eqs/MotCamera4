.class public final Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;
.super Lcom/motorola/camera/ui/widgets/gl/animations/Animation;
.source "SourceFile"


# instance fields
.field public final mAnimationsFinishList:Ljava/util/LinkedList;

.field public final mAnimationsList:Ljava/util/LinkedList;

.field public mCurrentCount:I

.field public mOrientation:I

.field public final mRepeatCount:I

.field public mTextures:[Lcom/motorola/camera/ui/widgets/gl/textures/Texture;


# direct methods
.method public constructor <init>(Lkotlin/ULong$Companion;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;-><init>(Lkotlin/ULong$Companion;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsFinishList:Ljava/util/LinkedList;

    const/4 p1, 0x0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mRepeatCount:I

    return-void
.end method


# virtual methods
.method public final addSequence(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final animationUpdate([F)Z
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsFinishList:Ljava/util/LinkedList;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_0
    return v3

    :cond_1
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->animationUpdate([F)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mTextures:[Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mOrientation:I

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    :cond_3
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mRepeatCount:I

    if-ne v0, p1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->restartSequence()V

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mCurrentCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mCurrentCount:I

    if-lt p1, v0, :cond_4

    if-eqz v1, :cond_6

    invoke-virtual {v1, p0}, Lkotlin/ULong$Companion;->onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V

    :cond_6
    :goto_0
    return v3
.end method

.method public final restartSequence()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsFinishList:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mTextures:[Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mOrientation:I

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startSequence([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void
.end method

.method public final startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mTextures:[Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mCurrentCount:I

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mCanceled:Z

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mOrientation:I

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->startSequence([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->mAnimationCallback:Lkotlin/ULong$Companion;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/ULong$Companion;->onAnimationStart()V

    :cond_0
    return-void
.end method

.method public final startSequence([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/animations/SequenceAnimation;->mAnimationsList:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->startAnimation([Lcom/motorola/camera/ui/widgets/gl/textures/Texture;I)V

    return-void
.end method
