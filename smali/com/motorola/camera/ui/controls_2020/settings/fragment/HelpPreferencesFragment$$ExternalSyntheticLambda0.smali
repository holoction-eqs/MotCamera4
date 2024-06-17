.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;

    const-string v0, "$helpPreference"

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/tools/myui/ctadialog/MotoCtaAdvanceDialog;

    const-string v1, "$ctaAdvanceDialog"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment;->$r8$clinit:I

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CTA_ADVANCE_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    iget-object p0, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :goto_0
    sget p1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/HelpPreferencesFragment;->$r8$clinit:I

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iget-object p0, p2, Lcom/motorola/camera/ui/controls_2020/settings/preferences/OnlineHelpPreference;->handler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
