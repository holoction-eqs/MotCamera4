.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

.field public static final Companion:Lkotlin/UByte$Companion;


# instance fields
.field public final getCameraType:Lkotlin/jvm/functions/Function0;

.field public final key:I

.field public final setting:Lcom/motorola/camera/settings/SettingsManager$Key;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    const-string v1, "RESOLUTIONS_REAR"

    const/4 v2, 0x0

    const v3, 0x7f12045d

    sget-object v4, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_REAR:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v5, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE$13:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/utility/ForegroundRunner$handler$2;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    const-string v8, "RESOLUTIONS_FRONT"

    const/4 v9, 0x1

    const v10, 0x7f12045b

    sget-object v11, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE_FRONT:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v12, Lcom/motorola/camera/utility/ForegroundRunner$handler$2;->INSTANCE$14:Lcom/motorola/camera/utility/ForegroundRunner$handler$2;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;-><init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/utility/ForegroundRunner$handler$2;)V

    filled-new-array {v6, v0}, [Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    new-instance v0, Lkotlin/UByte$Companion;

    const/16 v1, 0xc

    invoke-direct {v0, v1, v2}, Lkotlin/UByte$Companion;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->Companion:Lkotlin/UByte$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/utility/ForegroundRunner$handler$2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->key:I

    iput-object p4, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->setting:Lcom/motorola/camera/settings/SettingsManager$Key;

    iput-object p5, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->getCameraType:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/ResolutionSelectedListModel;

    return-object v0
.end method
