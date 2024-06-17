.class public abstract Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final nextUniqueId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;->nextUniqueId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public abstract addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
.end method

.method public abstract cancelAnimation(I)V
.end method

.method public abstract hasAnimation(I)Z
.end method
