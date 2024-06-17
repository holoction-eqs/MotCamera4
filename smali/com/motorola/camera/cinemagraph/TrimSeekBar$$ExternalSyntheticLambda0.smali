.class public final synthetic Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cinemagraph/TrimSeekBar;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cinemagraph/TrimSeekBar;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawPlayHead:Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mPlaybackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/cinemagraph/TrimSeekBar;->mDrawPlayHead:Z

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
