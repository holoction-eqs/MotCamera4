.class public final Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;
.super Landroidx/transition/ViewOverlayApi14;
.source "SourceFile"


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mChoreographerCallback:Landroidx/databinding/ViewDataBinding$8;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar$1;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroidx/transition/ViewOverlayApi14;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    new-instance p1, Landroidx/databinding/ViewDataBinding$8;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/databinding/ViewDataBinding$8;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroidx/databinding/ViewDataBinding$8;

    return-void
.end method


# virtual methods
.method public final postFrameCallback()V
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographerCallback:Landroidx/databinding/ViewDataBinding$8;

    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackProvider16;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
