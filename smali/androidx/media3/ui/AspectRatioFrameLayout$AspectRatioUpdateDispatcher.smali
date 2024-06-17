.class public final Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public isScheduled:Z

.field public final synthetic this$0:Landroidx/media3/ui/AspectRatioFrameLayout;


# direct methods
.method public constructor <init>(Landroidx/media3/ui/AspectRatioFrameLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    sget v0, Landroidx/media3/ui/AspectRatioFrameLayout;->$r8$clinit:I

    iget-object p0, p0, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
