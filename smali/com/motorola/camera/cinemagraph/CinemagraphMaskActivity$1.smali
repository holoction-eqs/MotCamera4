.class public final Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mIsDiscarded:Z

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->stopPreview()V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    iget-object p1, p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mEngine:Lcom/motorola/camera/cinemagraph/CinemagraphEngine;

    invoke-virtual {p1}, Lcom/motorola/camera/cinemagraph/CinemagraphEngine;->finalizeEngine()V

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    invoke-static {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->access$001(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
