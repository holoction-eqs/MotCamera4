.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/Camera;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda5;->f$0:Lcom/motorola/camera/Camera;

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CTA_PERMISSION_CLICK:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object v0, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    const/16 p1, -0x66

    if-ne p2, p1, :cond_0

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CTA_ALL_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CTA_BASIC_PERMISSIONS:Lcom/motorola/camera/settings/SettingsManager$Key;

    :goto_0
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    iget-object p2, p1, Lcom/motorola/camera/settings/Setting;->mPersistBehavior:Lcom/motorola/camera/settings/PersistBehavior;

    invoke-virtual {p2, p1, v1}, Lcom/motorola/camera/settings/PersistBehavior;->performWrite(Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    iget-object p1, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/Camera;->mMotoCtaInitialDialog:Lcom/motorola/tools/myui/ctadialog/MotoCtaDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    return-void

    :goto_1
    const/16 p1, -0x65

    if-ne p2, p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/motorola/camera/Camera;->mCTAPermissionAllowed:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ActivityBase;->finish()V

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
