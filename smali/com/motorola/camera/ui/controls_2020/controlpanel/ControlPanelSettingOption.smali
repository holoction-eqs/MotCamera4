.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final contentDescription:Ljava/lang/String;

.field public final enabled:Z

.field public final icon:Ljava/lang/Integer;

.field public final selected:Z

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/settings/Setting;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "setting"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->value:Ljava/lang/Object;

    iget-object v0, p2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {v0, p3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->selected:Z

    iget-object v0, p2, Lcom/motorola/camera/settings/Setting;->mDisabledValues:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->enabled:Z

    invoke-virtual {p2, p3}, Lcom/motorola/camera/settings/Setting;->getAndroidIcon(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->icon:Ljava/lang/Integer;

    iget v0, p2, Lcom/motorola/camera/settings/Setting;->mSettingDialogTitleRes:I

    invoke-virtual {p2, p3}, Lcom/motorola/camera/settings/Setting;->getString(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    const-string v2, ""

    if-lez v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "context.getString(nameRes)"

    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-lez v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "context.getString(statusRes)"

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TIMER:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object p2, p2, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p3, Ljava/lang/Integer;

    if-eqz p2, :cond_3

    check-cast p3, Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    invoke-static {p3}, Lkotlin/UShort$Companion;->getTimerDescription(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1204e6

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.resources.getStr\u2026escription, name, status)"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelSettingOption;->contentDescription:Ljava/lang/String;

    return-void
.end method
