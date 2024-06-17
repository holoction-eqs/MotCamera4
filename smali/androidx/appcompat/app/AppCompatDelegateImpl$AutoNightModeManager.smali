.class public abstract Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mReceiver:Ljava/lang/Object;

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/core/os/CancellationSignal;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final cleanup()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final completeSpecialEffect()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/core/os/CancellationSignal;

    iget-object v1, v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mSpecialEffectsSignals:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->complete()V

    :cond_0
    return-void
.end method

.method public abstract createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
.end method

.method public abstract getApplyableNightMode()I
.end method

.method public final isVisibilityUnchanged()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget-object v0, v0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->_from(Landroid/view/View;)I

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget p0, p0, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    if-eq v0, p0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract onChange()V
.end method

.method public final setup()V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->cleanup()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast v1, Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/motorola/camera/SecureCamera$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/SecureCamera$1;-><init>(Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->this$0:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v1, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoNightModeManager;->mReceiver:Ljava/lang/Object;

    check-cast p0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method
