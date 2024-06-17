.class public final Lcom/motorola/camera/Camera$6;
.super Landroidx/work/WorkManager;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/Camera$6;->this$0:Lcom/motorola/camera/Camera;

    invoke-direct {p0}, Landroidx/work/WorkManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissSucceeded()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    iget-object p0, p0, Lcom/motorola/camera/Camera$6;->this$0:Lcom/motorola/camera/Camera;

    invoke-virtual {p0}, Lcom/motorola/camera/Camera;->launchGoogleLens()V

    return-void
.end method
