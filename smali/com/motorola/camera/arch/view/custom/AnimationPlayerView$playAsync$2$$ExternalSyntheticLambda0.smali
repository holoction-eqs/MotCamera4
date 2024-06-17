.class public final synthetic Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$playAsync$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$playAsync$2$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    const-string p1, "this$0"

    iget-object p0, p0, Lcom/motorola/camera/arch/view/custom/AnimationPlayerView$playAsync$2$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/arch/view/custom/AnimationPlayerView;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
