.class public final Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/Cancellable;


# instance fields
.field public final mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

.field public final synthetic this$0:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/fragment/app/FragmentManager$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;->this$0:Landroidx/activity/OnBackPressedDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;->mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;->this$0:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, v0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    iget-object v2, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;->mOnBackPressedCallback:Landroidx/fragment/app/FragmentManager$1;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v1, v2, Landroidx/fragment/app/FragmentManager$1;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, v2, Landroidx/fragment/app/FragmentManager$1;->mEnabledConsumer:Landroidx/core/util/Consumer;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    :cond_0
    return-void
.end method
