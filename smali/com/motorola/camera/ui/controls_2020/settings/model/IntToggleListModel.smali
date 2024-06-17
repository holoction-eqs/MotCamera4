.class public final enum Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;


# instance fields
.field public final iconCheckedId:Ljava/lang/Integer;

.field public final iconUncheckedId:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    const v1, 0x7f080188

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    filled-new-array {v0}, [Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "VIDEO_STABILIZATION"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->iconCheckedId:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->iconUncheckedId:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;->$VALUES:[Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/controls_2020/settings/model/IntToggleListModel;

    return-object v0
.end method
