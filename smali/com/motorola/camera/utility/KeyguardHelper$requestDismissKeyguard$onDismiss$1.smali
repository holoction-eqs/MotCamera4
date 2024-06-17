.class public final Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $callback:Landroidx/work/WorkManager;


# direct methods
.method public constructor <init>(Landroidx/work/WorkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;->$callback:Landroidx/work/WorkManager;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;->$callback:Landroidx/work/WorkManager;

    invoke-virtual {p0}, Landroidx/work/WorkManager;->onDismissCancelled()V

    return-void
.end method

.method public final onDismissError()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;->$callback:Landroidx/work/WorkManager;

    invoke-virtual {p0}, Landroidx/work/WorkManager;->onDismissError()V

    return-void
.end method

.method public final onDismissSucceeded()V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/utility/KeyguardHelper$requestDismissKeyguard$onDismiss$1;->$callback:Landroidx/work/WorkManager;

    invoke-virtual {p0}, Landroidx/work/WorkManager;->onDismissSucceeded()V

    return-void
.end method
