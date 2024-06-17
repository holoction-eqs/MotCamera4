.class public final Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;
.super Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;
.source "SourceFile"


# static fields
.field public static final DIFF_UTIL:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;


# instance fields
.field public final isSelected:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;->DIFF_UTIL:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemDiffUtil;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;-><init>(Lcom/motorola/camera/settings/SettingsManager$Key;Landroid/content/Context;Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->setting:Lcom/motorola/camera/settings/Setting;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    invoke-static {p1, p3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;->isSelected:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->key:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ControlBarSettingValueItem(key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->value:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " locked="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->isLocked:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
