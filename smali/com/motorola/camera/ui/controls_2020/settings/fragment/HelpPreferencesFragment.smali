.class public final Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment;
.super Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment;",
        "Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;",
        "<init>",
        "()V",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f150005

    const v1, 0x7f12025b

    invoke-direct {p0, v0, v1}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BaseNestedPreferencesFragment;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12042d

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    if-eqz p1, :cond_2

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    iget-object v1, p1, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->CTA_ALL_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v3, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v3, v0}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    iget-object v0, v0, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->CTA_ADVANCE_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v4, v3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {v4, v3}, Lcom/motorola/camera/settings/PersistBehavior;->performRead(Lcom/motorola/camera/settings/Setting;)V

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    iget-object v3, v3, Lcom/motorola/camera/settings/PersistBehavior;->mPersistedValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1200d2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "resources.getString(R.st\u2026ng.cta_privacy_statement)"

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f1200d1

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.cta_privacy_file_name)"

    invoke-static {v3, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1, v3}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    invoke-static {v1, v3, v6, v6, v5}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    new-instance v5, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;

    invoke-direct {v5, v0, p0, v2}, Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog$1;-><init>(Landroid/content/Context;Lcom/motorola/camera/ActivityStarter;I)V

    add-int/lit8 p0, v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    const/16 v1, 0x12

    invoke-virtual {v4, v5, p0, v3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f1200ce

    const/16 v5, 0x3ea

    invoke-static {v3, p0, v1, v5}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f1200cd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v5, 0x7f130150

    invoke-direct {v3, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v3}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120035

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    iput-boolean v6, v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->isOnlyPermission:Z

    iput-object v4, v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->privacyContent:Ljava/lang/CharSequence;

    const v0, 0x7f1200d3

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->permissionHeaderDesc:Ljava/lang/CharSequence;

    invoke-virtual {v1, p0}, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->setPermissionDescriptionResMap(Ljava/util/HashMap;)V

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1, p1, v6}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;I)V

    iput-object p0, v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1, p1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;I)V

    iput-object p0, v1, Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/settings/fragment/BasePreferencesFragment;->disableScrollInPreference()V

    return-object p1
.end method
