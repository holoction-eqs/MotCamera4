.class public final synthetic Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroidx/preference/SwitchPreferenceCompat;

.field public final synthetic f$1:Lcom/motorola/camera/settings/Setting;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/SwitchPreferenceCompat;Lcom/motorola/camera/settings/Setting;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/SwitchPreferenceCompat;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/settings/Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/SwitchPreferenceCompat;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/settings/controller/SettingsManagerBridge$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/settings/Setting;

    const-string v2, "$setting"

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    return-void

    :goto_2
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
