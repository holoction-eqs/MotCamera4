.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;
.super Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;
.source "SourceFile"


# static fields
.field public static final DIFF_UTIL:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;


# instance fields
.field public areMultiValuesEnabled:Z

.field public backgroundTint:I

.field public isAlwaysOn:Z

.field public isAutoTrigger:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->DIFF_UTIL:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/content/Context;Ljava/lang/Object;I)V

    const p1, 0x7f06036c

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->backgroundTint:I

    return-void
.end method


# virtual methods
.method public final getAlpha()F
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->areMultiValuesEnabled:Z

    const v1, 0x7f0700c7

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->isLocked:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->isPermanentLock:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x7f0700c8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    :goto_2
    return p0
.end method

.method public final shouldIgnoreClick()Z
    .locals 1

    invoke-super {p0}, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->shouldIgnoreClick()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->areMultiValuesEnabled:Z

    if-nez p0, :cond_0

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

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->isAutoTrigger:Z

    iget-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->areMultiValuesEnabled:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ControlBarSettingItem(key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->value:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isAutoTrigger="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isLocked="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->isLocked:Z

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", areMultiValuesEnabled="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
