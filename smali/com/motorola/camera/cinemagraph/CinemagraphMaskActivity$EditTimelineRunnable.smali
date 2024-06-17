.class public final Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mEndIndex:I

.field public final mStartIndex:I

.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;II)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->mStartIndex:I

    iput p3, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->mEndIndex:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {v1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->restartEngine()V

    iget-object v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iget v2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->mStartIndex:I

    invoke-virtual {v1, v2}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->setBaseIndex(I)V

    iget-object v1, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    iget p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$EditTimelineRunnable;->mEndIndex:I

    invoke-virtual {v1, v2, p0}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->addImages(II)V

    iget-object p0, v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mDisplay:Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;

    invoke-virtual {p0}, Lcom/motorola/camera/cinemagraph/DrawableMaskSurfaceView;->updateMaskToEngine()V

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->startPreview()V

    :cond_0
    return-void
.end method
