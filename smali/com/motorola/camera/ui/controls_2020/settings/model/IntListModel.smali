.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

.field public static final Companion:Lkotlin/ULong$Companion;


# instance fields
.field public final getCameraType:Lkotlin/jvm/functions/Function0;

.field public final key:I

.field public final setting:Lcom/motorola/camera/settings/SettingsManager$Key;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    const v1, 0x7f120447

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->DUAL_SCREEN_PREVIEW_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v3, "EXTERNAL_PREVIEW"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;)V

    new-instance v1, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    const v2, 0x7f12046a

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    const-string v5, "STORAGE"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;)V

    filled-new-array {v0, v1}, [Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    new-instance v0, Lkotlin/ULong$Companion;

    const/16 v1, 0xc

    invoke-direct {v0, v1, v4}, Lkotlin/ULong$Companion;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->Companion:Lkotlin/ULong$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->key:I

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/IntListModel;

    return-object v0
.end method
