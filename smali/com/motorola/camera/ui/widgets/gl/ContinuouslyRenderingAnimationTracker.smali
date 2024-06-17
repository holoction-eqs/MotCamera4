.class public final Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;
.super Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;
.source "SourceFile"


# instance fields
.field public final animationMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final component:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

.field public final renderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V
    .locals 1

    const-string v0, "renderer"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "component"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/iAnimationTracker;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->renderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->component:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final addAnimation(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->renderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->component:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderContinuously(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public final animationUpdate([F)Z
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "it.next()"

    invoke-static {v2, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;

    invoke-virtual {v2, p1}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->animationUpdate([F)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->renderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->component:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->requestRenderWhenDirty(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final cancelAnimation(I)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/Animation;->cancelAnimation()V

    :cond_0
    return-void
.end method

.method public final hasAnimation(I)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ContinuouslyRenderingAnimationTracker;->animationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
