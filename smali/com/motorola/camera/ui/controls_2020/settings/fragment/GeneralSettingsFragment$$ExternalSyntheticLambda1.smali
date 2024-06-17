.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/utility/lens/LensApiHelper$StatusCheckCallback;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/utility/lens/LensApiHelper;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

.field public final synthetic f$2:Landroidx/preference/Preference;

.field public final synthetic f$3:Landroidx/preference/PreferenceCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/utility/lens/LensApiHelper;Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;Landroidx/preference/SwitchPreferenceCompat;Landroidx/preference/PreferenceCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/utility/lens/LensApiHelper;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/Preference;

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$3:Landroidx/preference/PreferenceCategory;

    return-void
.end method


# virtual methods
.method public final onStatusChecked()V
    .locals 4

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->TAG:Ljava/lang/String;

    const-string v0, "$lensApiHelper"

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/utility/lens/LensApiHelper;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$1:Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$preference"

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/Preference;

    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$category"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment$$ExternalSyntheticLambda1;->f$3:Landroidx/preference/PreferenceCategory;

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/motorola/camera/utility/lens/LensApiHelper;->isGoogleLensAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v3, p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;->removePreference(Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;)V

    :cond_0
    return-void
.end method
