.class public Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;",
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;",
        "Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final titleRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;-><init>(I)V

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;->titleRes:I

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/activity/ComponentActivity;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lkotlin/UInt$Companion;

    invoke-virtual {v0}, Lkotlin/UInt$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->unRegisterCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.motorola.camera.ui.controls_2020.settings.activity.SettingsActivity"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/settings/activity/SettingsActivity;

    const v1, 0x7f0a0217

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a021a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->Companion:Lkotlin/UInt$Companion;

    invoke-virtual {v1}, Lkotlin/UInt$Companion;->getInstance()Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackHelper;->registerCallback(Landroid/app/Activity;Lcom/motorola/camera/ui/controls_2020/OnBackInvokedCallbackImpl;)V

    return-void
.end method
